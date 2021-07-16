<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Swarming 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20131201

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Graphical Password Authentication System</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
  <link href="table.css" rel="stylesheet">

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head>
<body>
<div id="logo">
	<h1><a href="#" class="icon icon-group"><span>Graphical Password Authentication System</span></a></h1>
</div>
<div id="header">
	<div id="menu" class="container">
		<ul>
			<li><a href="UHomePage.jsp" accesskey="1" title="">Homepage</a></li>
			<li><a href="ViewProfile.jsp" accesskey="1" title="">View Profile</a></li>
                        <li  class="current_page_item"><a href="AddFounds.jsp" accesskey="1" title="">Add Founds</a></li>
                        <li><a href="TransferFound.jsp" accesskey="1" title="">Transfer Founds</a></li>
                        <li><a href="ViewFounds.jsp" accesskey="1" title="">View Founds</a></li>
			<li><a href="login.jsp" accesskey="2" title="">Logout</a></li>
				
		</ul>
	</div>
</div>
<div id="page-wrapper">
<div id="page" class="container">
	<div id="content">
		<div class="title">
                    <%String id=(String)session.getAttribute("id"); %>
                    <center><h2>ADD FUNDS</h2></center>
                    <form action="AFAction.jsp" method="post">
                    <table>
                        <tr><th>ID</th><td><input type="text" name="id" value="<%=id%>"></td></tr>
                        <tr><th>ENTER AMOUNT</th><td><input type="text" name="amount" ></td></tr>
                    <tr><th></th><td><input type="submit" value="Add Fund"/></td></tr>

                    </table>
                    </form>
		</div>
		</div>
	<div id="sidebar"><a href="#" class="image image-full"><img src="images/9976.png" alt="" /></a></div>
        
</div>
</div>
<div id="featured-wrapper">
	<div id="featured" class="container">
		
</div>
</div>
</body>
</html>
