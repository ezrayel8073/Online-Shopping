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
              ResultSet rs=st.executeQuery("select * from category");
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
                <li><a href="AdminHome.jsp">HOME</a></li>
                
                <li><a href="adminlogin.jsp">Logout</a></li>
            </ul>
            
        </div>
        <div id="image">
            <image src="images/addproduct.jpg" height="300px"></image>
        </div>
        <div id="data">
            <h2> Add Product Details</h2>
            <form name="login" action="AddProducts" method="post" enctype="multipart/form-data">
            <table align="center" cellpadding="5px" cellspacing="5px">
                <tr>
                    <td>Product Name</td><td><input type="text" name="pname" required></td>
                </tr>
                <tr>
                    <td>Category Name</td><td>
                        <select name="pcategory">
                            <%while(rs.next())
                            {%>
                            <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>  
                           <% }
}
catch(Exception e)
{
out.println(e);

}
%>
</select>
                        </td>
                </tr>
                <tr>
                    <td>Product Prize</td><td><input type="text" name="pprize" required></td>
                </tr>
                <tr>
                    <td>Product Image</td><td><input type="file" name="image" required></td>
                </tr>
                <tr><td><input type="Submit" value="Add"></td><td><input type="Reset"></td></tr>
            </table>
            
           </form>
            
        </div>
        
    </body>
</html>
