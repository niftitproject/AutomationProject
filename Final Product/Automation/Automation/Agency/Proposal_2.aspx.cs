using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Automation.Agency
{
    public partial class Proposal__2_ : System.Web.UI.Page
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
            if (Session["Warranty"] != null)
            {
                Warranty.Text = Session["Warranty"].ToString();
                Time.Text = Session["Time"].ToString();
                Duration.Text = Session["Duration"].ToString();
                Cost.Text = Session["Cost"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Warranty"] = Warranty.Text;
            Session["Time"] = Time.Text;
            Session["Duration"] = Duration.Text;
            Session["Cost"] = Cost.Text;
            Response.Redirect("Proposal_3.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Warranty"] = Warranty.Text;
            Session["Time"] = Time.Text;
            Session["Duration"] = Duration.Text;
            Session["Cost"] = Cost.Text;
            Response.Redirect("Proposal.aspx");
        }

        
    }
}