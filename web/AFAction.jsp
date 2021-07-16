<%-- 
    Document   : AFAction
    Created on : Mar 28, 2019, 9:57:26 AM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String id=request.getParameter("id");
String amount=request.getParameter("amount");

try{
  String query="insert into fund values('"+id+"','"+amount+"')";  
  int i=Queries.getExecuteUpdate(query);
  if(i>0){
      %>
      <script type="text/javascript">
          window.alert("Successfully added");
          window.location="AddFounds.jsp";
          </script>
           <%
  }else{
%>
      <script type="text/javascript">
          window.alert("Failed to add fund");
          window.location="AddFounds.jsp";
          </script>
           <%
}
    
}catch(Exception e){
    out.println(e);
}
%>