<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%String uname=(String)session.getAttribute("uname");%>
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
            <h2>Product successfully purchased</h2>
            <%
            String pname=request.getParameter("pname");
            String pid=request.getParameter("pid");
            %>
            <form name="csearch" action="ratingDB1.jsp" method="post">
                <table align="center" cellpadding="10px" cellspacing="10px">
                    <tr><td>PRODUCT CODE</td><td><input type="text" name="pname" value="<%=pname%>" readonly=""></td></tr>
                    <tr><td>PROJECT ID</td><td><input type="text" name="pid" value="<%=pid%>" readonly=""></td></tr>
                     <tr>
                        <td>GIVE YOUR RATING</td><td><input type="text"  name="rate" required=""></td>
                    </tr>
                    <tr><td><input type="submit" value="RATE HERE"></td><td><input type="Reset"</td></tr>
                </table>
            </form>
           
        </div>
        <div id="data">
            <a href="UserHome.jsp">Back</a>
            
        </div>
        
    </body>
</html>
