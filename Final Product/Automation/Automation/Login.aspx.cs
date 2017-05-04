using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Automation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            if (Roles.GetRolesForUser(Login1.UserName)[0] == "User")
                Response.Redirect("~/User/User_Detail.aspx");
            else
                Response.Redirect("~/Agency/Agency_Detail.aspx");
        }

    }
}