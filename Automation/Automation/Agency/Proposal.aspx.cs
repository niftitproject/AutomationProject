using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using System.Web.Security;


namespace Automation.Agency
{
    public partial class Proposal : System.Web.UI.Page
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
            if (Session["ProContext"] != null || Session["Object"] != null || Session["Technical"] != null || Session["CMS"] != null || Session["Hosts"] != null || Session["Marketing"] != null || Session["Design"] != null)
            {
                ProContext.Text = Session["ProContext"].ToString();
                Object.Text = Session["Object"].ToString();
                Technical.Text = Session["Technical"].ToString();
                CMS.Text = Session["CMS"].ToString();
                Hosts.Text = Session["Hosts"].ToString();
                Marketing.Text = Session["Marketing"].ToString();
                Design.Text = Session["Design"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["CompanyName"] = CompanyName.Rows[0].Cells[1].Text;
            Session["ProContext"] = ProContext.Text;
            Session["Object"] = Object.Text;
            Session["Technical"] = Technical.Text;
            Session["CMS"] = CMS.Text;
            Session["Hosts"] = Hosts.Text;
            Session["Marketing"] = Marketing.Text;
            Session["Design"] = Design.Text;
            if (Request.QueryString["id"] != null)
                Session["ID_RFP"] = Request.QueryString["id"];
            Response.Redirect("Proposal_2.aspx");
        }
    }
}
