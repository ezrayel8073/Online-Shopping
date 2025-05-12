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
             String pname=request.getParameter("pname"); 
              
              try
              {
                  
              Connection con=Dbconnection.getConnection();
              Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select * from products where pname='"+pname+"' ");
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
                margin-top: 180px;
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
                <li><a href="AdminHome.jsp">HOME</a></li>
                
                <li><a href="userlogin.jsp">Logout</a></li>
            </ul>
            
        </div>
        <div id="image">
           <h2> View Searched Product Details</h2>
            
            <table align="center" border="2px">
                <tr>
                                <th>Product Id</th>
                                <th>Product Image</th>
                                <th>Product Name</th>
                                <th>Code Word</th>
                                <th>Product Category</th>
                                <th>Product Prize</th>
                                
                                <th>Purchase</th>
                            </tr>
                <%while(rs.next())
                            {%>
                            <tr>
                
                            <td><%=rs.getString(6)%></td>  
                            <td><image src="view.jsp?id=<%=rs.getString(6)%>" width="150" height="150"></td>
                            <td><%=rs.getString(1)%></td>
                            <th><%=rs.getString(4)%></th>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><a href="PPurchase.jsp?pid=<%=rs.getString(6)%>&value=name&pname=<%=pname%>"><input type="button" value="PURCHASE"></a></td> 
                           <% }
}
catch(Exception e)
{
out.println(e);

}
%>
<tr>

            </table>
        </div>
        <div id="data">
           
            <a href="UserHome.jsp">Back</a>
            
          
            
        </div>
        
    </body>
</html>
