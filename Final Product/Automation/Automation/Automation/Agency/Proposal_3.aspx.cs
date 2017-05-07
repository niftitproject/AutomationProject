using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Automation.Agency
{
    public partial class Proposal__3_ : System.Web.UI.Page
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
            if (Session["Role1"] != null)
            {
                Role1.Text = Session["Role1"].ToString();
                Role2.Text = Session["Role2"].ToString();
                Role3.Text = Session["Role3"].ToString();
                Role4.Text = Session["Role4"].ToString();
                Role5.Text = Session["Role5"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Role1"] = Role1.Text;
            Session["Role2"] = Role2.Text;
            Session["Role3"] = Role3.Text;
            Session["Role4"] = Role4.Text;
            Session["Role5"] = Role5.Text;
            Response.Redirect("Proposal_4.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Role1"] = Role1.Text;
            Session["Role2"] = Role2.Text;
            Session["Role3"] = Role3.Text;
            Session["Role4"] = Role4.Text;
            Session["Role5"] = Role5.Text;
            Response.Redirect("Proposal_2.aspx");
        }
    }
}