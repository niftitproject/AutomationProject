using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using System.Configuration;

namespace Automation.Agency 
{
    public partial class Proposal__4_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            if (Session["Discounted"] != null)
            {
                Discounted.Text = Session["Discounted"].ToString();
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string constring = @"Data Source= Pi-PC;Initial Catalog=NIFTIT;Integrated Security=true";
            string constring = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString.ToString();

            using (SqlConnection con = new SqlConnection(constring))
            {
                String sql = "SELECT TOP(1)Proposal.ID_Proposal FROM Proposal ORDER BY Proposal.ID_Proposal DESC";
                int id;
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    con.Open();
                    if (cmd.ExecuteScalar() == null)
                        id = 0;
                    else
                        id = (int)cmd.ExecuteScalar() + 1;
                    con.Close();
                }

                Session["Discounted"] = Discounted.Text;

                string templatePath = Server.MapPath("~/PDF_Template");
                string proposalPath = Server.MapPath("~/PDF_Proposal");

                string formFile = templatePath + "/Test1.pdf";
                string newFile = proposalPath + "/Proposal_" + id.ToString() + ".pdf";

                string fileNameForDB = "Proposal_" + id.ToString() + ".pdf";
                

                PdfReader reader = new PdfReader(formFile);

                // instantiate PDFStamper object
                // The Output file will be created from template file and edited by the PDFStamper
                PdfStamper stamper = new PdfStamper(reader, new FileStream(newFile, FileMode.Create));

                // Object to deal with the Output file's textfields
                AcroFields fields = stamper.AcroFields;
                String context = Session["ProContext"].ToString();


                // set form fields("Field Name in PDF", "String to be placed in this PDF text field");
                fields.SetField("context", Session["ProContext"].ToString());
                fields.SetField("object", Session["Object"].ToString());
                fields.SetField("recommendations", Session["Technical"].ToString());
                fields.SetField("CMS", Session["CMS"].ToString());
                fields.SetField("host", Session["Hosts"].ToString());
                fields.SetField("marketing", Session["Marketing"].ToString());
                fields.SetField("design", Session["Design"].ToString());
                fields.SetField("month", Session["Warranty"].ToString());
                fields.SetField("hours", Session["Time"].ToString());
                fields.SetField("week", Session["Duration"].ToString());
                fields.SetField("cost", Session["Cost"].ToString());
                fields.SetField("staff1", Session["Role1"].ToString());
                fields.SetField("staff2", Session["Role2"].ToString());
                fields.SetField("staff3", Session["Role3"].ToString());
                fields.SetField("staff4", Session["Role4"].ToString());
                fields.SetField("staff5", Session["Role5"].ToString());
                fields.SetField("discounted", Session["Discounted"].ToString());


                stamper.FormFlattening = true;

                stamper.Close();
                InsertProposalInformation(fileNameForDB, id);
                InsertNoti(id);

                ClearSession();

                Response.Redirect("~/List of RFPs.aspx");
            }
           
       }

        private void ClearSession()
        {
            Session.Remove("ProContext");
            Session.Remove("Object");
            Session.Remove("Technical");
            Session.Remove("CMS");
            Session.Remove("Hosts");
            Session.Remove("Marketing");
            Session.Remove("Design");
            Session.Remove("Warranty");
            Session.Remove("Time");
            Session.Remove("Duration");
            Session.Remove("Cost");
            Session.Remove("Role1");
            Session.Remove("Role2");
            Session.Remove("Role3");
            Session.Remove("Role4");
            Session.Remove("Role5");
            Session.Remove("Discounted");
        }

       private void InsertProposalInformation(String Proposal_URL, int idProposal)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString))
            {
                String userID = Membership.GetUser().ProviderUserKey.ToString();
                String companyName = Session["CompanyName"].ToString();
                String ID_RFP = Session["ID_RFP"].ToString();
                
                
                String query = "INSERT INTO Proposal(ID_RFP, Company_Name, UserId, Context) VALUES(" + ID_RFP + ",'" + companyName + "', '" + userID + "', '" + Proposal_URL + "')";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.CommandType = CommandType.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        private void InsertNoti(int idProposal)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString))
            {
                String agencyID = Membership.GetUser().ProviderUserKey.ToString();
                String ID_RFP = Session["ID_RFP"].ToString();
                //String sql = "SELECT TOP(1)Proposal.ID_Proposal FROM Proposal ORDER BY Proposal.ID_Proposal DESC";
                //int id;
                //using (SqlCommand cmd = new SqlCommand(sql, conn))
                //{
                //    conn.Open();
                //    if (cmd.ExecuteScalar() == null)
                //        id = 0;
                //    else
                //        id = (int)cmd.ExecuteScalar() + 1;
                //    conn.Close();
                //}
                String sql = "INSERT INTO Noti_User(AgencyUserId, ID_RFP, ID_Proposal) VALUES('" + agencyID + "'," + ID_RFP + "," + idProposal + ")";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Discounted"] = Discounted.Text;
            Response.Redirect("Proposal_3.aspx");
        }
    }
}