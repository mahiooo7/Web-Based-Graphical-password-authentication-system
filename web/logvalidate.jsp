

<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String id=(String)session.getAttribute("id");

String c1=request.getParameter("c1");
String c2=request.getParameter("c2");
String c3=request.getParameter("c3");

try{
    String query="select * from ureg where id='"+id+"' and imgid='"+c1+"'and imgid2='"+c2+"'and imgid3='"+c3+"'";
    ResultSet r=Queries.getExecuteQuery(query);
    if(r.next()){
     response.sendRedirect("UHomePage.jsp?msg=success");   
    }else{
      response.sendRedirect("UVery.jsp?msg=images mismatch");    
    }
}catch(Exception e){
  out.println(e);  
}

%>