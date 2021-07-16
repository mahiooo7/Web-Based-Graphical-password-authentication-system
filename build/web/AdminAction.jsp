

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");


try{
    if(uname.equalsIgnoreCase("Admin")&&pwd.equalsIgnoreCase("Admin")){
      response.sendRedirect("AdminHome.jsp?msg=success");  
    }else{
     response.sendRedirect("Admin.jsp?msg=failed");    
    }
}catch(Exception e){
  out.println(e);
}
%>