using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Automation.Agency
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
                    String idNoti = Request.QueryString["id"].ToString();
                    String sql = "UPDATE Noti SET UnSeen = 1 WHERE ID_Noti = " + idNoti;
                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                Response.Redirect("~/Agency/Accepted_Proposals.aspx");
            }
        }
    }
}