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
             String id=request.getParameter("id"); 
              
              try
              {
                  
              Connection con=Dbconnection.getConnection();
              Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select * from products where id='"+id+"' ");
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
            <h2>Add Code Word To product</h2>
            <table align="center" border="2px">
                <form action="addcodewordaction.jsp" method="post">
                <%while(rs.next())
                            {%>
                            <tr><td>Enter Code</td><td><input type="text"  name="codeword"required=""></td></tr>
                            
                <t
                    <tr><td>Product Id</td><td><input type="text" name="id" value="<%=rs.getString(6)%>" readonly=""></td> </tr> 
                            <tr>
                    <td>Product Name</td><td><input type="text" name="pname" value="<%=rs.getString(1)%>" readonly></td>
                </tr>
                <tr>
                    <td>Category Name</td><td>
                        <input type="text"  name="pcategory" value="<%=rs.getString(2)%>" readonly="">
                        </td>
                </tr>
                <tr>
                    <td>Product Prize</td><td><input type="text" name="pprize" value="<%=rs.getString(3)%>" readonly></td>
                </tr>
                <tr>
                    <td>Product Image</td><td><image src="view.jsp?id=<%=rs.getString(6)%>" width="200" height="200"></td>
                </tr>
                <tr><td><input type="Submit" value="submit"></td><td><input type="Reset"></td></tr>
                </form>
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
