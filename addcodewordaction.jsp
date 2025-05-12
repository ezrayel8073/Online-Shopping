<%-- 
    Document   : addcodewordaction
    Created on : 8 Mar, 2019, 8:46:44 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
          <%@page import="dbcon.Dbconnection"%>

          <%
              
             String codeword=request.getParameter("codeword");
             String id=request.getParameter("id");
              try
              {
                  
              Connection con=Dbconnection.getConnection();
              Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select count(*) from products where codeword='"+codeword+"'");
              if(rs.next())
              {
               int count=rs.getInt(1);
               if(count==0)
               {
              int i=st.executeUpdate("update products set codeword='"+codeword+"' where id='"+id+"'");
              if(i>0)
              {
                   %>
          <script type="text/javascript">
              window.alert("Code Word Added To Product");
              window.location="AdminHome.jsp";
              </script>
          <%
              }
else
{
 %>
          <script type="text/javascript">
              window.alert("Unbale To Add Code Word Try Later ");
              window.location="AdminHome.jsp";
              </script>
          <%
}
}
%>
          <script type="text/javascript">
              window.alert("Code Word Alredy Added to Some Other Product");
              window.location="AdminHome.jsp";
              </script>
          <%
}

}
catch(Exception e)
{
out.println(e);
}
%>