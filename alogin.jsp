<%-- 
    Document   : alogin
    Created on : 3 Mar, 2019, 11:29:33 AM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="dbcon.Dbconnection"%>
<%
    String uname=request.getParameter("uname");
    session.setAttribute("uname",uname);
    String password=request.getParameter("password");
    try
    {
      Connection con=Dbconnection.getConnection();
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select *from admin where uname='"+uname+"' and password='"+password+"'");
      if(rs.next())
      {
          %>
          <script type="text/javascript">
              window.alert("Admin Login SucessFully");
              window.location="AdminHome.jsp";
              </script>
          <%
      }
else
{
 %>
          <script type="text/javascript">
              window.alert("Admin Login Failed");
              window.location="adminlogin.jsp";
              </script>
          <%
}
    }
    catch(Exception e)
    {
      out.println(e);  
    }
%>