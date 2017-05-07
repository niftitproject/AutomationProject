using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Web.Security;

namespace Automation
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Membership.GetUser() == null)

                Response.Redirect("~/default.aspx");

        }
        protected void Search_Click(object sender, EventArgs e)
        {
            //search only Name, Comapy....
            if (Field.Text == "All" && Price1.Text == "" && Price2.Text == "" && SearchTxt.Text != "")
            {
                string selectCommand = "SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options where (Name_Of_Customer LIKE '" + SearchTxt.Text + "' or Name_Of_Company LIKE '" + SearchTxt.Text + "' or RFP_Title LIKE '" + SearchTxt.Text + "')";
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataBind();
            }

            //search only option

            else if ((Field.Text == "All") && SearchTxt.Text == "" && Price1.Text == "" && Price2.Text == "")
            {
                string selectCommand = "SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options";
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataBind();
            }
            else if ((Field.Text == "Web" || Field.Text == "Mobile" || Field.Text == "Software") && SearchTxt.Text == "" && Price1.Text == "" && Price2.Text == "")
            {
                string selectCommand = "SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options where RFP_Options.Description LIKE '%" + Field.Text + "%'";
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataBind();
            }
            //search only for price

            else if (Price1.Text != "" && Price2.Text != "" && Price2.Text != ">2000" && SearchTxt.Text == "" && Field.Text == "All")
            {
                string selectCommand = "SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options where Budget >= " + Price1.Text + " and Budget <= " + Price2.Text + "";
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataBind();
            }
            else if (Price1.Text != "" && Price2.Text == ">2000" && SearchTxt.Text == "" && Field.Text == "All")
            {
                string selectCommand = "SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options where Budget >= " + Price1.Text + " and Budget <= 999999";
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataBind();
            }
            //search combine Name and Price

            else if (SearchTxt.Text != "" && Price1.Text != "" && Price2.Text != "" && Price2.Text != ">2000" && Field.Text == "All")
            {
                string selectCommand = "SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options where (Budget >= " + Price1.Text + " and Budget <= " + Price2.Text + " AND (Name_Of_Customer LIKE '" + SearchTxt.Text + "' or Name_Of_Company LIKE '" + SearchTxt.Text + "' or RFP_Title LIKE '" + SearchTxt.Text + "'))";
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataBind();
            }
            else if (SearchTxt.Text != "" && Price1.Text != "" && Price2.Text != "" && Price2.Text == ">2000" && Field.Text == "All")
            {
                string selectCommand = "SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options where (Budget >= " + Price1.Text + " and Budget <= 999999 AND (Name_Of_Customer LIKE '" + SearchTxt.Text + "' or Name_Of_Company LIKE '" + SearchTxt.Text + "' or RFP_Title LIKE '" + SearchTxt.Text + "'))";
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataBind();
            }
            //search combine Name and Option

            else if ((Field.Text == "Web" || Field.Text == "Mobile" || Field.Text == "Software") && SearchTxt.Text != "" && Price1.Text == "" && Price2.Text == "")
            {
                string selectCommand = "SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options where (RFP_Options.Description LIKE '%" + Field.Text + "%' AND (Name_Of_Customer LIKE '" + SearchTxt.Text + "' or Name_Of_Company LIKE '" + SearchTxt.Text + "' or RFP_Title LIKE '" + SearchTxt.Text + "'))";
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataBind();
            }
            //search combine Price and Option
            else if (SearchTxt.Text == "" && Price1.Text != "" && Price2.Text != "" && Price2.Text != ">2000" && (Field.Text == "Web" || Field.Text == "Mobile" || Field.Text == "Software"))
            {
                string selectCommand = "SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options where (Budget >= " + Price1.Text + " and Budget <= " + Price2.Text + " AND (RFP_Options.Description LIKE '%" + Field.Text + "%'))";
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataBind();
            }
            else if (SearchTxt.Text == "" && Price1.Text != "" && Price2.Text != "" && Price2.Text == ">2000" && (Field.Text == "Web" || Field.Text == "Mobile" || Field.Text == "Software"))
            {
                string selectCommand = "SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options where (Budget >= " + Price1.Text + " and Budget <=999999 AND (RFP_Options.Description LIKE '%" + Field.Text + "%'))";
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataBind();
            }
            //search combine Name, Price and Option
            else if ((Field.Text == "Web" || Field.Text == "Mobile" || Field.Text == "Software") && SearchTxt.Text != "" && Price1.Text != "" && Price2.Text != "" && Price2.Text != ">2000")
            {
                string selectCommand = "SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options where (Budget >= " + Price1.Text + " and Budget <= " + Price2.Text + " AND (RFP_Options.Description LIKE '%" + Field.Text + "%') AND (Name_Of_Customer LIKE '" + SearchTxt.Text + "' or Name_Of_Company LIKE '" + SearchTxt.Text + "' or RFP_Title LIKE '" + SearchTxt.Text + "'))";
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataBind();
            }
            else if ((Field.Text == "Web" || Field.Text == "Mobile" || Field.Text == "Software") && SearchTxt.Text != "" && Price1.Text != "" && Price2.Text != "" && Price2.Text == ">2000")
            {
                string selectCommand = "SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options where (Budget >= " + Price1.Text + " and Budget <=999999 AND (RFP_Options.Description LIKE '%" + Field.Text + "%') AND (Name_Of_Customer LIKE '" + SearchTxt.Text + "' or Name_Of_Company LIKE '" + SearchTxt.Text + "' or RFP_Title LIKE '" + SearchTxt.Text + "'))";
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataBind();
            }
        }
    }
}
