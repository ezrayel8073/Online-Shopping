<%-- 
    Document   : ratingDB
    Created on : Mar 13, 2019, 12:03:18 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dbcon.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  String uname=(String)session.getAttribute("uname");
String pname=request.getParameter("pname");
String pid=request.getParameter("pid");


int rate=Integer.parseInt(request.getParameter("rate"));
try{
    Connection con=Dbconnection.getConnection();
              Statement st1=con.createStatement(); 
              Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from purchase where name='"+pname+"'and pid='"+pid+"'");
    int r=0;
    while(rs.next()){
        r=Integer.parseInt(rs.getString("rank"));
        }
     int rr=r+rate;
     String ss=""+rr;
    

     int i=st1.executeUpdate("update purchase set rank='"+ss+"' where name='"+pname+"'and pid='"+pid+"'");
    if(i>0){
       response.sendRedirect("csearch.jsp?codeword="+pname+"&msg=success"); 
    }else{
      response.sendRedirect("csearch.jsp?codeword="+pname+"&msg=failed");  
    }
}catch(Exception e){
    out.println(e);
}

%>