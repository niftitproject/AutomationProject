using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Automation.User
{
    public partial class Manage_RFP_Answer : System.Web.UI.Page
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

            if (gvRFPAnswer.Rows.Count == 0)
            {
                MessageError.Text = "There is no proposal created for this RFP";
                MessageError.Visible = true;
            }
            else
                MessageError.Visible = false;
        }

        //Code de xu ly cho van de hien PopUp confirm
        //protected void gvRFPAnswer_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    int rowSelectedID = Convert.ToInt32(e.CommandArgument);
        //    String strID_RFP = gvRFPAnswer.DataKeys[rowSelectedID].Values["ID_RFP"].ToString();
        //    String strID_Proposal = gvRFPAnswer.DataKeys[rowSelectedID].Values["ID_Proposal"].ToString();

        //    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "confirm", "confirm('Do you want to accept this proposal!')", true);

        //}


        
    }
}