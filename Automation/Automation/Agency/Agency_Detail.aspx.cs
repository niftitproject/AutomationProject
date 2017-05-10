using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Automation.Agency
{
    public partial class Agency_Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["ProviderUserKey"] = Membership.GetUser().ProviderUserKey.ToString();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            int idRFP = InsertAgencyProfession();
        }
        
        
        private int InsertAgencyProfession()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString))
            {
                String userID = Membership.GetUser().ProviderUserKey.ToString();
                int Agency_Profession = getAgencyPro();
                String query = "INSERT INTO Agency_Info(ID_Profession, UserId) VALUES(" + Agency_Profession.ToString() + ",'" + userID + "')";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.CommandType = CommandType.Text;
                conn.Open();
                cmd.ExecuteNonQuery();

                query = "SELECT TOP(1) ID_Info FROM Agency_Info ORDER BY ID_Info DESC";
                cmd.CommandText = query;
                int idInfo = (int)cmd.ExecuteScalar();
                conn.Close();
                return idInfo;
            }
        }

        private int getAgencyPro()
        {
            if (rbWebsite.Checked)
                return 0;
            else if (rbMobile.Checked)
                return 1;
            else
                return 2;
        }

        
    }
}
