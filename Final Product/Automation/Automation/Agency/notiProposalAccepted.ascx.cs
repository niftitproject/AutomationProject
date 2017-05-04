using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace Automation.Agency
{
    public partial class notiProposalAccepted : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void timerRequest_Tick(object sender, EventArgs e)
        {
            String constring = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString.ToString();
            String userID = Membership.GetUser().ProviderUserKey.ToString();
            using (SqlConnection con = new SqlConnection(constring))
            {
                String sql = "SELECT COUNT(ID_Noti) FROM Noti WHERE UserId = '" + userID + "' AND unSeen = 0";
                int countNoti = 0;
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    if (cmd.ExecuteScalar() == null)
                        countNoti = 0;
                    else
                        countNoti = (int)cmd.ExecuteScalar();
                }
                if (countNoti != 0)
                    hypNoti.Text = "Notification " + countNoti.ToString();
                else
                    hypNoti.Text = "";

                con.Close();
            }
        }
    }
}