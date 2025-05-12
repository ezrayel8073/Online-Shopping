<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%String uname=(String)session.getAttribute("uname");%>
<%@page import="java.sql.*" %>
          <%@page import="dbcon.Dbconnection"%>

          
             
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
           <h2> View  Product Quantization Ranking Details</h2>
            
            <table align="center" border="2px">
                <tR><h3>NAME WISE PRODUCTS</h3></tr>
                <tr>
                                <th>Buyer</th>
                                <th>Product Id</th>
                                
                                <th>Product Name</th>
                                <th>Date</th>
                                <th>Rank</th>
                                    
                            </tr>
                <%
              
              try
              {
                  
              Connection con=Dbconnection.getConnection();
              Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select * from purchase where  status='namewise' order by rank asc;");
             
                    while(rs.next())
                            {%>
                            <tr>
                
                            <td><%=rs.getString(1)%></td>  
                              <td><%=rs.getString(2)%></td>
                            <th><%=rs.getString(3)%></th>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(6)%></td>
                            
                           <% }
}
catch(Exception e)
{
out.println(e);

}
%>
<tr>

            </table>
<table align="center" border="2px">
                <tR><h3>CODEWORD WISE PRODUCTS</h3></tr>
                <tr>
                                <th>Buyer</th>
                                <th>Product Id</th>
                                
                                <th>Product Name</th>
                                <th>Date</th>
                                <th>Rank</th>
                                    
                            </tr>
                <%
              
              try
              {
                  
              Connection con=Dbconnection.getConnection();
              Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select * from purchase where  status='codewise' order by rank asc;");
             
                    while(rs.next())
                            {%>
                            <tr>
                
                            <td><%=rs.getString(1)%></td>  
                              <td><%=rs.getString(2)%></td>
                            <th><%=rs.getString(3)%></th>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(6)%></td>
                            
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
           
            <a href="AdminHome.jsp">Back</a>
            
          
            
        </div>
        
    </body>
</html>
