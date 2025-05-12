<%-- 
    Document   : addcategoryaction
    Created on : 7 Mar, 2019, 11:26:44 AM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
          <%@page import="dbcon.Dbconnection"%>
          <%String email=(String)session.getAttribute("email"); %>
          <%
              String category=request.getParameter("category");
              
              try
              {
                  
              Connection con=Dbconnection.getConnection();
              Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select count(*) from category where category='"+category+"'");
              if(rs.next())
              {
                  int count=rs.getInt(1);
                  if(count==0)
                  {
                      int i=st.executeUpdate("insert into category values('"+category+"')");
                      if(i>0)
                      {
                     %>
                    <script type="text/javascript">
                        window.alert("Product category  Added Success");
                        window.location="AdminHome.jsp";
                        </script>
                    <%     
                      }
else
{
%>
                    <script type="text/javascript">
                        window.alert("Product category  Adding Fail");
                        window.location="AdminHome.jsp";
                        </script>
                    <%  
}
                  }
%>
                    <script type="text/javascript">
                        window.alert("Product category  Already Exist");
                        window.location="AdminHome.jsp";
                        </script>
                    <%  
}
%>
                    <script type="text/javascript">
                        window.alert("Issue  Already Exist");
                        window.location="UHome.jsp";
                        </script>
                    <%
}
              
catch(Exception e)
{
out.println(e);
}
%>