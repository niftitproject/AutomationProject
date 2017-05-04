using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using System.Web.Security;



namespace Automation.User
{
    public partial class Upload_an_RFP : System.Web.UI.Page
    {
        //string conStr = @"Data Source=PI-PC;Initial Catalog=NIFTIT;Integrated Security=True;";
        string conStr = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillData();
                
            }
            if (Membership.GetUser() == null)
                AgencyInfo.Visible = false;
            else
            {
                AgencyInfo.Visible = true;
                if (Roles.GetRolesForUser(Membership.GetUser().UserName)[0] == "User")
                {
                    AgencyInfo.NavigateUrl = "~/User/User_Detail.aspx";
                    AgencyInfo.Text = "User information";
                }
                else
                {
                    AgencyInfo.NavigateUrl = "~/Agency/Agency_Detail.aspx";
                    AgencyInfo.Text = "Agency information";
                }
            }
        }
       

        private void FillData()
        {
            DataTable dt = new DataTable();
            using (SqlConnection cn = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("GetRFPs", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                dt.Load(reader);
            }

        }


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox4.Text = Calendar1.SelectedDate.ToString("d");
            Calendar1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int idRFP = InsertRFPInformation();
            List<String> lstString = FileUpload1.FileName.Split('.').ToList<String>();
            String fileType = lstString[lstString.Count - 1];
            String fileName = idRFP + "." + fileType;
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_RFPQuestion", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Name_Of_Customer", System.Data.SqlDbType.VarChar, 50).Value = TextBox1.Text;
                    cmd.Parameters.Add("@Name_Of_Company", System.Data.SqlDbType.VarChar, 50).Value = TextBox2.Text;
                    cmd.Parameters.Add("@RFP_Title", System.Data.SqlDbType.VarChar, 50).Value = TextBox3.Text;
                    cmd.Parameters.Add("@Deadline", System.Data.SqlDbType.VarChar, 50).Value = TextBox4.Text;
                    cmd.Parameters.Add("@Budget", System.Data.SqlDbType.VarChar).Value = TextBox5.Text;
                    cmd.Parameters.Add("@Object", System.Data.SqlDbType.VarChar, 50).Value = TextBox6.Text;
                    cmd.Parameters.Add("@Technical", System.Data.SqlDbType.VarChar, 50).Value = TextBox7.Text;
                    cmd.Parameters.Add("@CMS", System.Data.SqlDbType.VarChar, 50).Value = TextBox8.Text;
                    cmd.Parameters.Add("@Hosts", System.Data.SqlDbType.VarChar, 50).Value = TextBox9.Text;
                    cmd.Parameters.Add("@Design", System.Data.SqlDbType.VarChar).Value = TextBox10.Text;
                    cmd.Parameters.Add("@Marketing", System.Data.SqlDbType.VarChar).Value = TextBox11.Text;
                    cmd.Parameters.Add("@ID_RFP", System.Data.SqlDbType.Int).Value = idRFP;
                    cmd.Parameters.Add("@Upload_File", System.Data.SqlDbType.VarChar).Value = fileName;
                    conn.Open();
                    cmd.ExecuteNonQuery();

                    if (FileUpload1.HasFile)
                    {
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + fileName);
                    }
                    
                    DataTable dt = new DataTable();
                    dt.Columns.Add("File", typeof(string));
                    dt.Columns.Add("Size", typeof(string));
                    dt.Columns.Add("Type", typeof(string));
                    foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data")))
                    {
                        FileInfo fi = new FileInfo(strFile);

                        dt.Rows.Add(fi.Name, fi.Length, fi.Extension);
                    }
                }
            }
        }
            private string GetFileTypeByExtension(string extension)
            {
            switch (extension.ToLower())
            {
                case ".doc":
                case ".docx":
                    return "Microsoft Word Document";
                case ".xlsx":
                case ".xls":
                    return "Microsoft Excel Document";
                case ".txt":
                    return "Text Document";
                case ".jpg":
                case ".png":
                    return "Image";
                default:
                    return "Unknown";
            }
        }     

        private int InsertRFPInformation()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString))
            {
                String userID = Membership.GetUser().ProviderUserKey.ToString();
                int RFP_Option = getRFPOption();
                String query = "INSERT INTO RFP(ID_Options, UserId, ID_Proposal_Accepted) VALUES(" + RFP_Option.ToString() + ",'" + userID + "',0)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.CommandType = CommandType.Text;
                conn.Open();
                cmd.ExecuteNonQuery();

                query = "SELECT TOP(1) ID_RFP FROM RFP ORDER BY ID_RFP DESC";
                cmd.CommandText = query;
                int idRFP = (int)cmd.ExecuteScalar();
                conn.Close();
                return idRFP;
            }
        }

        private int getRFPOption()
        {
            if (rbWebsite.Checked)
                return 1;
            else if (rbMobile.Checked)
                return 2;
            else
                return 3;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }


    }
}