<%-- 
    Document   : userloginaction
    Created on : 7 Mar, 2019, 2:32:08 PM
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
                   ResultSet rs=st.executeQuery("select *from user where uname='"+uname+"' and password='"+password+"'");
                  if(rs.next())
                  {
                   response.sendRedirect("UserHome.jsp?msg=sucess");  
                  }
                  else
                  {
                    response.sendRedirect("userlogin.jsp?msg=Username Or Password Incorrect");   
                  }
                }
                catch(Exception e)
                {
  out.println(e);                  
                }
%>