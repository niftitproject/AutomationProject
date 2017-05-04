using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Automation.User
{
    public partial class Accept : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    String sID_Proposal = Request.QueryString["idPro"].ToString();
                    String sID_RFP = Request.QueryString["idRFP"].ToString();

                    //string constring = @"Data Source= Pi-PC;Initial Catalog=NIFTIT;Integrated Security=true";
                    string constring = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString.ToString();

                    using (SqlConnection con = new SqlConnection(constring))
                    {
                        String sql = "SELECT ID_Proposal_Accepted FROM RFP WHERE ID_RFP = " + sID_RFP;
                        con.Open();
                        int id = 0;

                        using (SqlCommand cmd = new SqlCommand(sql, con))
                        {
                            if (cmd.ExecuteScalar() == null)
                                id = 0;
                            else
                                id = (int)cmd.ExecuteScalar();
                        }

                        if (id == 0)
                        {
                            sql = "UPDATE RFP SET ID_Proposal_Accepted = " + sID_Proposal + " WHERE ID_RFP = " + sID_RFP;
                            using (SqlCommand cmd = new SqlCommand(sql, con))
                            {
                                cmd.ExecuteNonQuery();
                            }

                            String UserId = "";
                            sql = "SELECT UserId FROM Proposal WHERE ID_Proposal = " + sID_Proposal;
                            using (SqlCommand cmd = new SqlCommand(sql, con))
                            {
                                UserId = cmd.ExecuteScalar().ToString();
                            }

                            sql = "INSERT INTO Noti(UserId, ID_RFP, ID_Proposal) VALUES('" + UserId + "'," + sID_RFP + "," + sID_Proposal + ")";
                            using (SqlCommand cmd = new SqlCommand(sql, con))
                            {
                                cmd.ExecuteNonQuery();
                            }

                        }
                        con.Close();
                    }
                }
                catch (Exception ex)
                {
                    
                }
                finally
                {
                    Response.Redirect("~/User/User_Detail.aspx");
                }
            }
        }
    }
}