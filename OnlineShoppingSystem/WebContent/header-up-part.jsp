<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	if ((String) session.getAttribute("name") != null) {
%>
<link rel="stylesheet"
	href="../../../../../images/demobar_w3_4thDec2019.css">
<!-- //header -->
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
				<li>Hello <font color="orange"><b><%=session.getAttribute("name")%></b></font></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<%
	} else {
%>
<link rel="stylesheet"
	href="../../../../../images/demobar_w3_4thDec2019.css">
<!-- //header -->
<!-- header-bot -->
<div class="header-bot">
	<div class="container">
	<div class="form-row">
		<div class="col-md-2 header-left">
				<a href="index.jsp"><img src="images/logo3.jpg" style="width:150px;height:120px;"></a>
		</div>
		<div class="col-md-7 header-middle">
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
	</div>
		<div class="clearfix"></div>
	</div>
</div>
<%
	}
%>