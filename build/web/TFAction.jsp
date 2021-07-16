<%-- 
    Document   : AFAction
    Created on : Mar 28, 2019, 9:57:26 AM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String id=request.getParameter("id");
String senderid=request.getParameter("senderid");
String amount=request.getParameter("amount");

try{
  String query="insert into transfer values('"+id+"','"+senderid+"','"+amount+"')";  
  int i=Queries.getExecuteUpdate(query);
  if(i>0){
      %>
      <script type="text/javascript">
          window.alert("Successfully Sent");
          window.location="TransferFound.jsp";
          </script>
           <%
  }else{
%>
      <script type="text/javascript">
          window.alert("Failed to Transfer fund");
          window.location="TransferFound.jsp";
          </script>
           <%
}
    
}catch(Exception e){
    out.println(e);
}
%>