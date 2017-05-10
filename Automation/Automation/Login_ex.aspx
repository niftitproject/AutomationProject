<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_ex.aspx.cs" Inherits="Automation.Login_exaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta charset="utf-8">
		<title>Automation</title>
		
		<!-- CSS -->
		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="css/social-icons.css" type="text/css" media="screen" />
		<!--[if IE 8]>
			<link rel="stylesheet" type="text/css" media="screen" href="css/ie8-hacks.css" />
		<![endif]-->
		<!-- ENDS CSS -->	
		
		<!-- GOOGLE FONTS 
		<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>-->
		
		<!-- JS -->
		<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.13.custom.min.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript" src="js/jquery.scrollTo-1.4.2-min.js"></script>
		<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
		<script type="text/javascript" src="js/custom.js"></script>
		
		<!-- Isotope -->
		<script src="js/jquery.isotope.min.js"></script>
		
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
		<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
		<script src="js/nivo-slider/jquery.nivo.slider.js" type="text/javascript"></script>
		<!-- ENDS Nivo slider -->
		
		<!-- tabs -->
		<link rel="stylesheet" href="css/tabs.css" type="text/css" media="screen" />
		<script type="text/javascript" src="js/tabs.js"></script>
  		<!-- ENDS tabs -->
  		
  		<!-- prettyPhoto -->
		<script type="text/javascript" src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="js/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="css/superfish.css" /> 
		<link rel="stylesheet" media="screen" href="css/superfish-left.css" /> 
		<script type="text/javascript" src="js/superfish-1.4.8/js/hoverIntent.js"></script>
		<script type="text/javascript" src="js/superfish-1.4.8/js/superfish.js"></script>
		<script type="text/javascript" src="js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="js/poshytip-1.0/src/tip-twitter/tip-twitter.css" type="text/css" />
		<link rel="stylesheet" href="js/poshytip-1.0/src/tip-yellowsimple/tip-yellowsimple.css" type="text/css" />
		<script type="text/javascript" src="js/poshytip-1.0/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="css/jquery.tweet.css" media="all"  type="text/css"/> 
		<script src="js/tweet/jquery.tweet.js" type="text/javascript"></script> 
		<!-- ENDS Tweet -->
		
		<!-- Fancybox -->
		<link rel="stylesheet" href="js/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />
		<script type="text/javascript" src="js/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
		<!-- ENDS Fancybox -->
		
		

	</head>
	
	<body class="home">
    <form id="form1" runat="server">
			<!-- HEADER -->
			<div id="header">
				<!-- wrapper-header -->
				<div class="wrapper">
					<a href="default.aspx"><img id="logo" src="img/NIFTIT/nifty-logo.png" /></a>
					<!-- search -->
					<div class="top-search" id="form2" runat="server">
                        <ul>
                        <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
                        <asp:LoginName ID="LoginName1" runat="server" ForeColor="Red"/>
                        <asp:LoginStatus id="LoginStatus1" runat="server" ForeColor="Red"/>
                        </ul>
                        
                        </div>
                        </div>
                    </div>
					<!-- ENDS search -->
				</div>
				<!-- ENDS wrapper-header -->					
			</div>
			<!-- ENDS HEADER -->
			
			
			<!-- Menu -->
			<div id="menu">
			
			
			
				<!-- ENDS menu-holder -->
				<div id="menu-holder">
					<!-- wrapper-menu -->
					<div class="wrapper">
						<!-- Navigation -->
						<ul id="nav" class="sf-menu">
							<li class="current-menu-item"><a href="Home.aspx">Home</a></li>
							<li><a href="Contact.aspx">Contact</a></li>
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
                    <div class="wrapper">
                   <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" 
                            Width="945px" onloggedin="Login1_LoggedIn">
                       <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
                   </asp:Login>
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

