using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Automation.User
{
    public partial class exSeen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string constring = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString.ToString();

                using (SqlConnection con = new SqlConnection(constring))
                {
                    String idNotiUser = Request.QueryString["id"].ToString();
                    String sql = "UPDATE Noti_User SET unSeen = 1 WHERE ID_Noti_User = " + idNotiUser;
                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                Response.Redirect("~/User/List_Of_RFP_Answer.aspx");
            }
        }
    }
}