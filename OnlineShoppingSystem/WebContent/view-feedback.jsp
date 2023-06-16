<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>

<!-- Mirrored from p.w3layouts.com/demos/apr-2016/05-04-2016/smart_shop/web/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 Jul 2020 05:57:57 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<title>Online Clothes Shopping System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<script src="js/jquery.easing.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
</head>
<body>
	<script
		src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
	<script
		src="../../../../../../m.servedby-buysellads.com/monetization.js"
		type="text/javascript"></script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
			}
		})();
	</script>
	<!--<script>(function(v,d,o,ai){ai=d.createElement("script");ai.defer=true;ai.async=true;ai.src=v.location.protocol+o;d.head.appendChild(ai);})(window, document, "//a.vdo.ai/core/w3layouts_V2/vdo.ai.js?vdo=34");</script>-->
	<div id="codefund">
		<!-- fallback content -->
	</div>
	<script src="https://ethicalads.io/?ref=codefund" async="async"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-149859901-1');
	</script>

	<script>
		window.ga = window.ga || function() {
			(ga.q = ga.q || []).push(arguments)
		};
		ga.l = +new Date;
		ga('create', 'UA-149859901-1', 'demo.w3layouts.com');
		ga('require', 'eventTracker');
		ga('require', 'outboundLinkTracker');
		ga('require', 'urlChangeTracker');
		ga('send', 'pageview');
	</script>
	<script async src='../../../../../js/autotrack.js'></script>

	<meta name="robots" content="noindex">
<body>
	<link rel="stylesheet"
		href="../../../../../images/demobar_w3_4thDec2019.css">
	<!-- header-bot -->
	<div class="header-bot">
		<div class="container">
			<div class="col-md-12 header-center">
				<h2>Online Clothes Shopping System</h2>
			</div>
			<div class="col-md-9 header-middle">
				<form action="searchProduct.jsp" method="post">
					<div class="search">
						<input type="search" name="search" placeholder="Search Product"
							style="width: 680px;">
					</div>
					<div class="sear-sub">
						<input type="submit" value=" ">
					</div>
					<div class="clearfix"></div>
				</form>
			</div>
			<div class="col-md-3 header-right footer-bottom">
				<ul>
					<li><a href="admin-login.jsp" style="width: 150px;"><i
							class="fas fa-user"></i>&nbsp;Admin Login</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header-bot -->
	<!-- banner -->
	<div class="ban-top">
		<div class="container">
			<div class="top_nav_left">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<jsp:include page="header.jsp"></jsp:include>
					</div>
				</nav>
			</div>
			<div class="top_nav_right">
				<div class="cart box_1">
					<a href="checkout.jsp"> <%
 	ResultSet resultCount = DatabaseConnection
 		.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
 resultCount.next();
 int count = resultCount.getInt(1);
 %>
						<h3>
							<div class="total">
								<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
								(
								<%=count%>
								items )
							</div>

						</h3>

					</a>
					<p>
						<a href="javascript:;" class="simpleCart_empty">My Cart</a>
					</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- contact -->
	<br><br>
	<div class="container">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">View Customers Feedback</h4>
			</div>
		</div><br>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<%
							ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblfeedback");
							while (resultset.next()) {
						%>
						<div class="form-group">
							<label>Customer Name : </label> <font color="orange"><%=resultset.getString("cname")%></font>
						</div>
						<div class="form-group">
							<label>Feedback : </label>
							<%=resultset.getString("feedback")%>
						</div>
						<div class="form-group">
							<label>Feedback Date : </label>
							<%=resultset.getString("created_at")%>
						</div>
						<div class="form-row">
							<div class="rateyo" id="rating"
								data-rateyo-rating="<%=resultset.getString("ratings")%>"
								data-rateyo-num-stars="5" data-rateyo-score="3" readonly></div>
							<input type="hidden" name="rating" readonly>
						</div>
						<hr>
						<%
							}
						%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //contact -->
	<!---728x90--->

	<!-- //product-nav -->
	<jsp:include page="footer.jsp"></jsp:include>
	<script>
		$(function() {
			$(".rateyo").rateYo().on(
					"rateyo.change",
					function(e, data) {
						var rating = data.rating;
						$(this).parent().find('.score').text(
								'score :' + $(this).attr('data-rateyo-score'));
						$(this).parent().find('.result').text('rating :' + rating);
						$(this).parent().find('input[name=rating]').val(rating); //add rating value to input field
					});
		});
	</script>
</body>
</html>
