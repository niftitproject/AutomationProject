<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload an RFP.aspx.cs" Inherits="Automation.User.Upload_an_RFP" %>

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
							<li><a href="Upload an RFP.aspx">Upload an RFP</a>
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
            
                <div id="main">
				<!-- wrapper-main -->
				<div class="wrapper">
					
					
					<!-- content -->
					<div id="content">
						
					<!-- title -->
					<div id="page-title">
						<span class="title">RFP Form</span>
						<span class="subtitle">Create Your RFP Form</span>
					</div>
					<!-- ENDS title -->

					<!-- page-content -->
					<div id="page-content">						
						<!-- 2 cols -->
						<div class="one-half">
                       
							<h6 class="line-divider">Information Form </h6>
							<b><asp:Label ID="Label3" runat="server" Text="Name of customer" Width="150"></asp:Label></b><br />
            <asp:TextBox ID="TextBox1" runat="server" Width="200" Height="30" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Name is required" ForeColor="Red" ControlToValidate="TextBox1">
            </asp:RequiredFieldValidator>
    <br />
    <br />
       <b><asp:Label ID="Label4" runat="server" Text="Name of company" Width="150"></asp:Label></b><br />
            <asp:TextBox ID="TextBox2" runat="server" Width="200" Height="30" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Company name is required" ForeColor="Red" ControlToValidate="TextBox2">
            </asp:RequiredFieldValidator>
    <br />
    <br />
        <b><asp:Label ID="Label5" runat="server" Text="RFP title" Width="150"></asp:Label></b><br />
            <asp:TextBox ID="TextBox3" runat="server" Width="200" Height="30" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* RFP title is required" ForeColor="Red" ControlToValidate="TextBox3">
            </asp:RequiredFieldValidator>
    <br />
    <br />

        <b><asp:Label ID="Label8" runat="server" Text="Budget of the project?" Width="150"></asp:Label></b><br />
        <asp:TextBox ID="TextBox5" runat="server" Width="200" Height="30" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Budget is required" ForeColor="Red" ControlToValidate="TextBox5">
            </asp:RequiredFieldValidator>
    <br />
    <br />
            <asp:RadioButton GroupName="Currency" ID="rbVND" runat="server" Text="VND" Checked="True" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton GroupName="Currency" ID="rbUSD" runat="server" Text="USD" />
            <br /><br />
    <fieldset style="width:350px">
        <legend>
            <b><asp:Label ID="Label7" runat="server" BorderColor="Black" Text="What is your options?"></asp:Label></b><br />
        </legend>
        <asp:RadioButton GroupName="Options" ID="rbWebsite" runat="server" Text="Website" Checked="True" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton GroupName="Options" ID="rbMobile" runat="server" Text="Mobile Application" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton GroupName="Options" ID="rbSoftware" runat="server" Text="Software" />
    </fieldset>
            
     <br />
     <br />
        <b><asp:Label ID="Label6" runat="server" Text="End date of RFP" Width="150"></asp:Label></b><br />
        <asp:TextBox ID="TextBox4" runat="server" Width="200px" Height="30" TextMode="MultiLine"></asp:TextBox>
            <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* End date is required" ForeColor="Red" ControlToValidate="TextBox4">
        </asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
        BorderColor="#999999" DayNameFormat="Shortest" 
        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" 
            onselectionchanged="Calendar1_SelectionChanged" CellPadding="4">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
		</div>

			<div class="one-half last">
            
				<h6 class="line-divider">Question Form</h6>
			    <b><asp:Label ID="Label9" runat="server" Text="What is the object of the project?"  ></asp:Label></b> <br />
            <asp:TextBox ID="TextBox6" runat="server" Width="300" Height="30" 
                    TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Question is required" ForeColor="Red" ControlToValidate="TextBox6">
            </asp:RequiredFieldValidator>
  
    <br /> <br />
       <b><asp:Label ID="Label10" runat="server" Text="What are the technical requirements of the project?" ></asp:Label></b><br />
            <asp:TextBox ID="TextBox7" runat="server" Width="300" Height="30" 
                    TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Question is required" ForeColor="Red" ControlToValidate="TextBox7">
            </asp:RequiredFieldValidator>
    <br /><br />
       <b><asp:Label ID="Label11" runat="server" Text="What is the CMS requirement of the project?"></asp:Label></b><br />
            <asp:TextBox ID="TextBox8" runat="server" Width="300" Height="30" 
                    TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="* Question is required" ForeColor="Red" ControlToValidate="TextBox8">
            </asp:RequiredFieldValidator>
    <br /><br />
       <b><asp:Label ID="Label12" runat="server" Text="What kind of hosts do project require?"></asp:Label></b><br />
            <asp:TextBox ID="TextBox9" runat="server" Width="300" Height="30" 
                    TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="* Question is required" ForeColor="Red" ControlToValidate="TextBox9">
            </asp:RequiredFieldValidator>
    <br /><br />
       <b><asp:Label ID="Label13" runat="server" Text="What are the design requirements of the project?"></asp:Label></b><br />
            <asp:TextBox ID="TextBox10" runat="server" Width="300" Height="30" 
                    TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="* Question is required" ForeColor="Red" ControlToValidate="TextBox10">
            </asp:RequiredFieldValidator>
    <br /><br />

       <b><asp:Label ID="Label14" runat="server" Text="What kind of marketing does this project require?"></asp:Label></b><br />
            <asp:TextBox ID="TextBox11" runat="server" Width="300" Height="30" 
                    TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="* Question is required" ForeColor="Red" ControlToValidate="TextBox11">
            </asp:RequiredFieldValidator>
    <br /><br />
    <asp:Label ID="Label15" runat="server" Text="Please, only upload your doc and pdf file" ForeColor="Black"></asp:Label><br /><br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ErrorMessage="Upload file is required" ForeColor="Red" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
    <br /><br />
    &nbsp;<asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Cancel" onclick="Button1_Click" />
 
	</div>
		<div class="clear "></div>
        </div>
        </div>
        </div>
        </div>   
						<!-- ENDS 2 cols -->
    


    
           

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
	</body>
</html>
