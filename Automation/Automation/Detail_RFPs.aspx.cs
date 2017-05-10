using System;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


namespace Automation
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String idRFP = Request.QueryString["id"].ToString();
            Response.Redirect("~/Agency/Proposal.aspx?id=" + idRFP);
        }

        protected void PostComment_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;


            MembershipUser currentUser = Membership.GetUser();
            Guid currentUserId = (Guid)currentUser.ProviderUserKey;

            //Determine ID_RFP
            String idRFP = Request.QueryString["id"].ToString();

            // Insert a new record into GuestbookComments
            string connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            string insertSql = "INSERT INTO CommentMsg(Comment, UserId, ID_RFP) VALUES(@Comment, @UserId, @ID_RFP)";

            using (SqlConnection myConnection = new SqlConnection(connectionString))
            {
                myConnection.Open();

                SqlCommand myCommand = new SqlCommand(insertSql, myConnection);
                myCommand.Parameters.AddWithValue("@Comment", Comment.Text.Trim());
                myCommand.Parameters.AddWithValue("@UserId", currentUserId);
                myCommand.Parameters.AddWithValue("@ID_RFP", idRFP);
                myCommand.ExecuteNonQuery();

                myConnection.Close();
            }

            // "Reset" the Subject and Body TextBoxes
            Comment.Text = string.Empty;


            CommentList.DataBind(); ;
        }
      
    }
}
