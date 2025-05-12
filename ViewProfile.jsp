<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%String uname=(String)session.getAttribute("uname");%>
<%@page import="java.sql.*" %>
          <%@page import="dbcon.Dbconnection"%>

          <%
              try
              {
                  
              Connection con=Dbconnection.getConnection();
              Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select * from user where uname='"+uname+"'");
              %>
<html>
    <head>
        <title>Online Product Quantization</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            #title
            {
                width: 100%;
                height: 50px;
                background-color: lightsteelblue;
                border: 2px solid lightsteelblue;
                color: red;
                font-size:30px;
                text-align: center;
                margin-top: 0px;
                font-weight: bold;
            }
            #menu
            {
                width: 100%;
                height: 50px;
                background-color: lightsteelblue;
                border: 2px solid lightsteelblue;
            }
            ul li a{
                list-style: none;
                color: lightslategray;
                text-decoration: none;
                font-weight: bold;
                font-size: 20px;
                text-transform:uppercase;
            }
            ul li{
                list-style: none;
                float: left;
                width: 200px;
                
            }
            #data
            {
                text-align: center;
                width: 50%;
                margin-top: 100px;
                color: lightgoldenrodyellow;
                font-weight: bold;
                font-size: 20px;
                float: right;
            }
            #image
            {
             text-align: center;
                width: 50%;
               margin-top: 100px;
                color: lightgoldenrodyellow;
                font-weight: bold;
                font-size: 20px;
                float: left;  
               
            }
            a{
                text-decoration: none;
                color:lightgoldenrodyellow;
            }
            </style>
    </head>
    <body bgcolor="lightslategray">
        <div id="title">Online Product Quantization</div>
        <div id="menu">
            <ul>
                <li><a href="UserHome.jsp">HOME</a></li>
                
                <li><a href="userlogin.jsp">Logout</a></li>
            </ul>
            
        </div>
        <div id="image">
            <table border="2px">
                <tr>
                    <th>ID</th>
                    <th>UserName</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Address</th>
                    <th>Date Of Birth</th>
                    <th>Gender</th>
                    <th>Profile Picture</th>
                </tr>
                <%while(rs.next())
                            {%>
                <tr>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getString(1)%></td>
                     <td><%=rs.getString(3)%></td>
                      <td><%=rs.getString(4)%></td>
                       <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                         <td><%=rs.getString(7)%></td>
                          <td><image src="view1.jsp?id=<%=rs.getString(9)%>" width="200" height="200"></td>
                </tr>
                 <% }
}
catch(Exception e)
{
out.println(e);

}
%>
            </table>
        </div>
        <div id="data">
            <a href="UserHome.jsp">Back</a>
            
        </div>
        
    </body>
</html>
