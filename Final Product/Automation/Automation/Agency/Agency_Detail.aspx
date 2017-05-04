<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agency_Detail.aspx.cs" Inherits="Automation.Agency.Agency_Detail" %>

<%@ Register src="notiProposalAccepted.ascx" tagname="notiProposalAccepted" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
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
			
			
			

			
			
			<!-- MAIN -->
            
                <div id="main">
				<!-- wrapper-main -->
				<div class="wrapper">
					
					
					<!-- content -->
					<div id="content">
						
					<!-- title -->
					<div id="page-title">
						<span class="title">Agency Profile</span>
						<span class="subtitle">Detail Of Your Profile</span>
					</div>
					<!-- ENDS title -->

					<!-- page-content -->
					<div id="page-content">						
						<!-- 1/4 cols -->
						
						<div class="three-fourth ">
							<h6 class="line-divider">Agency Information</h6>
							
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="672px" 
                                AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                                ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                                SortExpression="UserName" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" 
                                SortExpression="CreateDate" />
                            <asp:BoundField DataField="LastLoginDate" HeaderText="LastLoginDate" 
                                SortExpression="LastLoginDate" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
						    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                                
                                SelectCommand="SELECT aspnet_Users.UserName, aspnet_Membership.Email, aspnet_Membership.CreateDate, aspnet_Membership.LastLoginDate FROM aspnet_Membership INNER JOIN aspnet_Users ON aspnet_Membership.UserId = aspnet_Users.UserId AND aspnet_Membership.UserId = @id">
                                <SelectParameters>
                                    <asp:SessionParameter Name="id" SessionField="ProviderUserKey" />
                                </SelectParameters>
                            </asp:SqlDataSource>
						</div>
						<div class="one-fourth last">
							<h6 class="line-divider">History </h6>
                                <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                                DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
                                AutoGenerateColumns="False" AllowPaging="True" PageSize="4">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" 
                                            SortExpression="Company_Name" />
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
						    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                                
                                SelectCommand="SELECT Proposal.Company_Name FROM Proposal INNER JOIN RFP ON Proposal.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Question ON RFP.ID_RFP = RFP_Question.ID_RFP WHERE (Proposal.UserId = @id)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="id" SessionField="ProviderUserKey" />
                                </SelectParameters>
                            </asp:SqlDataSource>
						</div>
                        <div class="three-fourth ">
							<h6 class="line-divider">Agency Profession</h6>
                            <b><asp:Label ID="Label3" runat="server" Text="Choose your profession"></asp:Label></b>
                            <br /><br />
                            <asp:RadioButton GroupName="Pro" ID="rbWebsite" runat="server" Text="Website" />
                            <asp:RadioButton GroupName="Pro" ID="rbMobile" runat="server" Text="Mobile Application"/>
                            <asp:RadioButton GroupName="Pro" ID="rbSoftware" runat="server" Text="Software" /><br /><br />
                            <asp:Button ID="Button1" runat="server" Text="Confirm" onclick="Button1_Click" 
                                style="height: 26px" />
                            <br /><br />
                            <asp:Label ID="Label2" runat="server" Text="Your profession"></asp:Label>
						    <br /><br />
                            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                                DataSourceID="SqlDataSource3" Height="50px" Width="215px" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="Double" BorderWidth="1px" 
                                CellPadding="1" GridLines="Horizontal" HorizontalAlign="Justify">
                                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <Fields>
                                    <asp:BoundField DataField="Notes" SortExpression="Notes" />
                                </Fields>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#333333" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                                
                                SelectCommand="SELECT Agency_Profession.Notes FROM Agency_Profession INNER JOIN Agency_Info ON Agency_Profession.ID_Profession = Agency_Info.ID_Profession ">
                            </asp:SqlDataSource>
                      
						<div class="clear "></div>
						<!-- ENDS 1/4 cols -->
						
            </div>
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
								<li class="page_item"><a href="">Home</a></li>
								<li class="page_item"><a href="">Features</a></li>
								<li class="page_item"><a href="">Blog</a></li>
								<li class="page_item"><a href="">Portfolio</a></li>
								<li class="page_item"><a href="">Gallery</a></li>
								<li class="page_item"><a href="">Contact</a></li>
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
</html>
