<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Graphical Password Authentication System</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<style>
    table tr th{
        float:left;
    }
</style>
</head>
<body>
<div id="logo">
	<h1><a href="#" class="icon icon-group"><span>Graphical Password Authentication System</span></a></h1>
</div>
<div id="header">
	<div id="menu" class="container">
		<ul>
			<li><a href="index.html" accesskey="1" title="">Homepage</a></li>
			<li><a href="login.jsp" accesskey="1" title="">Login</a></li>
			<li class="current_page_item"><a href="register.jsp" accesskey="2" title="">Register</a></li>
			
		</ul>
	</div>
</div>
<div id="page-wrapper">
<div id="page" class="container">
	<div id="content">
		<div class="title">
			<h2>Welcome Upload More</h2>
		<%
                   String id=(String)session.getAttribute("id");
                %>
                   
                        <form action="UploadServlet" method="post" enctype="multipart/form-data">
                            <table align="center" style="margin-top:50px;">
                                <tr><th>ID</th><td><input type="text" name="id" value="<%=id%>" readonly=""></input></td></tr>
                                       <tr><th>Image2</th><td><input type="file" name="image1" required=""></input></td></tr>
                           
                                <tr><th></th><td><input type="submit" value="Register"></input>
                              <input type="reset" value="Reset"></input></td></tr>
                                <tr><th></th><td>Already Have an Account ?<a href="login.jsp">Login</a></td></tr>
                                  
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
