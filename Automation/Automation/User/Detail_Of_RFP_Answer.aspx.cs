﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Automation.User
{
    public partial class Detail_Of_RFP : System.Web.UI.Page
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
        }
    }
}