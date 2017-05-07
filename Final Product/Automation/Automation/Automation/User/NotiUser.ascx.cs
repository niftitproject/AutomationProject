using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Security;
using System.Data.SqlClient;

namespace Automation.User
{
    public partial class NotiUser : System.Web.UI.UserControl
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
                String sql = "SELECT COUNT (ID_Noti_User) FROM Noti_User, RFP WHERE RFP.UserId = '" + userID + "' AND Noti_user.ID_RFP = RFP.ID_RFP AND unSeen = 0";
                int countNoti1 = 0;
                con.Open();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    object id = cmd.ExecuteScalar();
                    if (id == null)
                        countNoti1 = 0;
                    else

                        countNoti1 = (int)id;
                }
                if (countNoti1 != 0)
                    hypNoti1.Text = "Notification " + countNoti1.ToString();
                else
                    hypNoti1.Text = "";

                con.Close();
            }
        }

    }
}