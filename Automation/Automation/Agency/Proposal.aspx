﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proposal.aspx.cs" Inherits="Automation.Agency.Proposal" %>

<%@ Register src="notiProposalAccepted.ascx" tagname="notiProposalAccepted" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta charset="utf-8">
		<title>Automation</title>
		
		<!-- CSS -->
		<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="../css/social-icons.css" type="text/css" media="screen" />
		<!--[if IE 8]>
			<link rel="stylesheet" type="text/css" media="screen" href="css/ie8-hacks.css" />
		<![endif]-->
		<!-- ENDS CSS -->	
		
		<!-- GOOGLE FONTS 
		<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>-->
		
		<!-- JS -->
		<script type="text/javascript" src="../js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript" src="../js/jquery-ui-1.8.13.custom.min.js"></script>
		<script type="text/javascript" src="../js/easing.js"></script>
		<script type="text/javascript" src="../js/jquery.scrollTo-1.4.2-min.js"></script>
		<script type="text/javascript" src="../js/jquery.cycle.all.js"></script>
		<script type="text/javascript" src="../js/custom.js"></script>
		
		<!-- Isotope -->
		<script src="../js/jquery.isotope.min.js"></script>
		
		<!--[if IE]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
		<!--[if IE 6]>
			<script type="text/javascript" src="js/DD_belatedPNG.js"></script>
			<script>
	      		/* EXAMPLE */
	      		//DD_belatedPNG.fix('*');
	    	</script>
		<![endif]-->
		<!-- ENDS JS -->
		
		
		<!-- Nivo slider -->
		<link rel="stylesheet" href="../css/nivo-slider.css" type="text/css" media="screen" />
		<script src="../js/nivo-slider/jquery.nivo.slider.js" type="text/javascript"></script>
		<!-- ENDS Nivo slider -->
		
		<!-- tabs -->
		<link rel="stylesheet" href="../css/tabs.css" type="text/css" media="screen" />
		<script type="text/javascript" src="../js/tabs.js"></script>
  		<!-- ENDS tabs -->
  		
  		<!-- prettyPhoto -->
		<script type="text/javascript" src="../js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="../js/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="../css/superfish.css" /> 
		<link rel="stylesheet" media="screen" href="../css/superfish.css" /> 
		<script type="text/javascript" src="../js/superfish-1.4.8/js/hoverIntent.js"></script>
		<script type="text/javascript" src="../js/superfish-1.4.8/js/superfish.js"></script>
		<script type="text/javascript" src="../js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="../js/poshytip-1.0/src/tip-twitter/tip-twitter.css" type="text/css" />
		<link rel="stylesheet" href="../js/poshytip-1.0/src/tip-yellowsimple/tip-yellowsimple.css" type="text/css" />
		<script type="text/javascript" src="../js/poshytip-1.0/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="css/jquery.tweet.css" media="all"  type="text/css"/> 
		<script src="../js/tweet/jquery.tweet.js" type="text/javascript"></script> 
		<!-- ENDS Tweet -->
		
		<!-- Fancybox -->
		<link rel="stylesheet" href="../js/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.js" type="text/css" media="screen" />
		<script type="text/javascript" src="../js/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
		<!-- ENDS Fancybox -->
		
		

	</head>
	
	<body class="home">
    <form id="form1" runat="server">
			<!-- HEADER -->
			<div id="header">
				<!-- wrapper-header -->
				<div class="wrapper">
					<a href="../default.aspx"> <img id="logo" src="../img/NIFTIT/nifty-logo.png" ></a>
					<!-- search -->
					<div class="top-search" id="form2" runat="server">
                        <ul>
                        <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
                        <asp:LoginName ID="LoginName1" runat="server" ForeColor="Red"/>
                        <asp:LoginStatus id="LoginStatus1" runat="server" ForeColor="Red"/>
                        </ul>
                       <ul> 
                            <asp:HyperLink ID="AgencyInfo" runat="server" ForeColor="Red" 
                                NavigateUrl="~/User/User_Detail.aspx">Information</asp:HyperLink></ul>
                        <ul>
                            <uc1:notiProposalAccepted ID="notiProposalAccepted1" runat="server" />
                        </ul>
                        </div>
                    </div>
					<!-- ENDS search -->
				</div>
				<!-- ENDS wrapper-header -->			
			<!-- ENDS HEADER -->
			
			
			<!-- Menu -->
			<div id="menu">
			
			
			
				<!-- ENDS menu-holder -->
				<div id="menu-holder">
					<!-- wrapper-menu -->
					<div class="wrapper">
                    <a href="../default.aspx"><img id"logo" src"../img/NIFTIT/nifty-logo.png"</a>
						<!-- Navigation -->
						<ul id="nav" class="sf-menu">
							<li class="current-menu-item"><a href="../default.aspx">Home</a></li>
							<li><a href="../User/Upload an RFP.aspx">Upload an RFP</a>
							</li>
							<li><a href="../List of RFPs.aspx">List of RFPs</a></li>
							<li><a href="../Contact.aspx">Contact</a></li>
						</ul>
						<!-- Navigation -->
					</div>
					<!-- wrapper-menu -->
				</div>
				<!-- ENDS menu-holder -->
			</div>
			<!-- ENDS Menu -->
			
			
			

			<!-- Slider -->
			
			<!-- ENDS Slider -->
			
			<!-- MAIN -->
           
             <!-- 2/3 cols -->
             <div id="main">
             <div class="wrapper">
             <div id="content">
             <div id="page-title">
						<span class="title">Proposal Form</span>
						<span class="subtitle">Create Your Proposal</span>
					</div>
			<div class="one-third">
			<h6 class="line-divider">APPROACH TO PROJECT
            <img src="../img/mono-icons/notepencil32.png" title="arrowright32.png"/></h6><br />
			<h6 class="line-divider">WORK PLAN</h6><br />
            <h6 class="line-divider">STAFFING STRUCTURE</h6><br />
            <h6 class="line-divider">BUDGETING</h6>
					</div>
						<div class="two-third last">
                        <asp:Label ID="Label3" runat="server" Text="What is your company name?"></asp:Label>
                        <br />
                            <asp:DetailsView ID="CompanyName" runat="server" AutoGenerateRows="False" 
                                DataSourceID="SqlDataSource2" Height="50px" Width="215px" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="Double" BorderWidth="1px" 
                                CellPadding="4" EnableTheming="True" GridLines="Horizontal" 
                                HorizontalAlign="Justify">
                                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <Fields>
                                    <asp:BoundField DataField="UserName" SortExpression="UserName" />
                                </Fields>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#333333" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                                SelectCommand="SELECT aspnet_Users.UserName FROM aspnet_Users INNER JOIN aspnet_Membership ON aspnet_Users.UserId = aspnet_Membership.UserId AND aspnet_Membership.UserId = @id">
                                <SelectParameters>
                                    <asp:SessionParameter Name="id" SessionField="ProviderUserKey" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        <asp:Label ID="Label4" runat="server" Text="Briefly describe the customer context:"></asp:Label>
                        <br />
                        <asp:TextBox ID="ProContext" runat="server" Width="210px" Height="50px" 
                                TextMode="MultiLine" ></asp:TextBox>
                        <br /><br />
						<asp:Label ID="Label9" runat="server" Text="What is the object of the project?"></asp:Label>
                        <br />
                        <asp:TextBox ID="Object" runat="server" Width="210px" Height="50px" 
                                TextMode="MultiLine"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label10" runat="server" Text="What are the project technical requirements of the project?"></asp:Label>
                            <br />
                        <asp:TextBox ID="Technical" runat="server" Width="210px" Height="50px" 
                                TextMode="MultiLine"></asp:TextBox>
                        <br />
                        <br />
                      
                        <asp:Label ID="Label11" runat="server" Text="What is the CMS requirement of the project?"></asp:Label>
                        <br />
                        <asp:TextBox ID="CMS" runat="server" Width="210px" Height="50px" 
                                TextMode="MultiLine"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label12" runat="server" Text="What kind of hosts do project require?"></asp:Label>
                        <br />
                        <asp:TextBox ID="Hosts" runat="server" Width="210px" Height="50px" 
                                TextMode="MultiLine"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label13" runat="server" Text="What kind of marketing does this project require?"></asp:Label>
                        <br />
                        <asp:TextBox ID="Marketing" runat="server" Width="210px" Height="50px" 
                                TextMode="MultiLine"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label14" runat="server" Text="What are the design requirements of the project?"></asp:Label>
                        <br />
                        <asp:TextBox ID="Design" runat="server" Width="210px" Height="50px" 
                                TextMode="MultiLine"></asp:TextBox><br /><br />

                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Next" />
					</div>
						<div class="clear "></div>
                        </div>
                        </div>
                        </div>
                        
            

			<!-- ENDS MAIN -->

			
			<!-- FOOTER -->
			<div id="footer">
				<!-- wrapper-footer -->
				<div class="wrapper">
					<!-- footer-cols -->
					<ul id="footer-cols">
						<li class="col">
							<h6>Pages</h6>
							<ul>
								<li class="page_item"><a href="index.html">Home</a></li>
								<li class="page_item"><a href="features.html">Features</a></li>
								<li class="page_item"><a href="blog.html">Blog</a></li>
								<li class="page_item"><a href="portfolio.html">Portfolio</a></li>
								<li class="page_item"><a href="gallery.html">Gallery</a></li>
								<li class="page_item"><a href="contact.html">Contact</a></li>
							</ul>
						</li>
						
						<li class="col">
							<h6>Categories</h6>
							<ul>
								<li>
                                <h6>We are proud to announce:</h6>
                                In November 2013, the New York City Mayor’s Office awarded the Made in NY ‘Mark of Distinction’ to NIFTIT, recognizing our efforts in bringing new ideas and innovations to the city.
                                </li>
							</ul>
						</li>
						<li class="col">
							<h6>Get a coffee with us at:</h6>
							NEW YORK CITY<br />
                            1-646-741-8584<br />
                            85 Delancey St, 2nd Floor, New York, NY 10002, USA<br />
                            HO CHI MINH CITY<br />
                            132 Cong Hoa, Floor 1, Tan Binh, Ho Chi Minh City, Vietnam<br />
                            HONG KONG CITY<br />
                            8/F Kongling Building 100 Jervois St, Sheung Wan Central District, Hong Kong
						</li>
					</ul>
					<!-- ENDS footer-cols -->
				</div>
				<!-- ENDS wrapper-footer -->
			</div>
			<!-- ENDS FOOTER -->
		
		
			<!-- Bottom -->
			<div id="bottom">
				<!-- wrapper-bottom -->
				<div class="wrapper">
					<div id="bottom-text">Copyright Automation Group 2016.</div>
					<!-- Social -->
					<ul class="social ">
						<li><a href="http://www.facebook.com" class="poshytip  facebook" title="Become a fan"></a></li>
						<li><a href="http://www.twitter.com" class="poshytip twitter" title="Follow our tweets"></a></li>
						<li><a href="http://www.dribbble.com" class="poshytip dribbble" title="View our work"></a></li>
						<li><a href="http://www.addthis.com" class="poshytip addthis" title="Tell everybody"></a></li>
						<li><a href="http://www.vimeo.com" class="poshytip vimeo" title="View our videos"></a></li>
						<li><a href="http://www.youtube.com" class="poshytip youtube" title="View our videos"></a></li>
					</ul>
					<!-- ENDS Social -->
					<div id="to-top" class="poshytip" title="To top"></div>
				</div>
				<!-- ENDS wrapper-bottom -->
			</div>
			<!-- ENDS Bottom -->
	</form>
    </body>
</html>
