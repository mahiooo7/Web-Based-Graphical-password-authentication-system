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

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head>
<body>
<div id="logo">
	<h1><a href="#" class="icon icon-group"><span>Graphical Password Authentication System</span></a></h1>
</div>
<div id="header">
	<div id="menu" class="container">
		<ul>
			<li><a href="index.html" accesskey="1" title="">Homepage</a></li>
			<li class="current_page_item"><a href="login.jsp" accesskey="1" title="">Login</a></li>
			<li><a href="register.jsp" accesskey="2" title="">Register</a></li>
			
		</ul>
	</div>
</div>
<div id="page-wrapper">
<div id="page" class="container">
	<div id="content">
            <%String msg=request.getParameter("msg");
            if(msg!=null){%>
            <font color="red"><%=msg%></font>
            <%}%>
           <center>SELECT PICTURES </center>
           <form action="logvalidate.jsp" method="post">
                    <table>
		<div class="title" style="width:800px;">
                    
			<%String id=(String)session.getAttribute("id");
                        
                        try{String query="select * from ureg";
                        ResultSet r=Queries.getExecuteQuery(query);
                        while(r.next()){
                            String id1=r.getString("id");
                             String imgid=r.getString("imgid");
                              String imgid2=r.getString("imgid2");
                               String imgid3=r.getString("imgid3");
                        %> 
                        <input type="checkbox" name="c1" value="<%=imgid%>"><image src="view.jsp?id=<%=id1%>" width=100" height="100"/> </input>     
                        <input type="checkbox" name="c2" value="<%=imgid2%>"><image src="view1.jsp?id=<%=id1%>" width=100" height="100"/></input>     
                        <input type="checkbox" name="c3" value="<%=imgid3%>"><image src="view2.jsp?id=<%=id1%>" width=100" height="100"/> </input>     
                            
                       <% }
                           
                        }catch(Exception e){
                          out.println(e);  
                        }
                        
                        
                        %>
                        
		</div>
           <input type="submit" value="Submit"></input>
                    </table>
                </form>
		</div>
	  
</div>
</div>
<div id="featured-wrapper">
	<div id="featured" class="container">
		
</div>
</div>
</body>
</html>
