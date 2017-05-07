using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;

namespace Automation.User
{
    public partial class Display : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String sID_Proposal = Request.QueryString["id"].ToString();

                //string constring = @"Data Source= Pi-PC;Initial Catalog=NIFTIT;Integrated Security=true";


                string proposalPath = Server.MapPath("~/PDF_Proposal");
                string newFile = proposalPath + "/Proposal_" + sID_Proposal.ToString() + ".pdf";

                WebClient User = new WebClient();
                Byte[] FileBuffer = User.DownloadData(newFile);
                if (FileBuffer != null)
                {
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-length", FileBuffer.Length.ToString());
                    Response.BinaryWrite(FileBuffer);
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}



