

<%@page import="com.dbcon.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String uname=request.getParameter("uname");
    session.setAttribute("uname",uname);
    String password=request.getParameter("pwd");
    
try
{
    
    Connection con=DBCon.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from ureg where username='"+uname+"' and password='"+password+"'");
    if(rs.next())
    {
   String email=rs.getString("email");
      String id=rs.getString("id");
            session.setAttribute("id",id);
             session.setAttribute("email",email);
        %>
        <script type="text/javascript">
            window.alert("Login Sucess");
            window.location="UVery.jsp";
            </script>
        
        <%
    }
else
{
 %>
        <script type="text/javascript">
            window.alert("Login Fail");
            window.location="login.jsp";
            </script>
        
        <%
}
    
}
catch(Exception e)
{
    out.println(e);
}
    %>
