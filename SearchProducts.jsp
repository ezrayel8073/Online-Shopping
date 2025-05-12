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
            <h2>Product Search </h2>
            <form name="psearch" action="psearch.jsp" method="post">
                <table align="center" cellpadding="10px" cellspacing="10px">
                    <tr>
                        <td>Search Product</td><td><input type="pname"  name="pname"required=""></td>
                    </tr>
                    <tr><td><input type="submit" value="Search"></td><td><input type="Reset"</td></tr>
                </table>
            </form>
           
        </div>
        <div id="data">
            <a href="UserHome.jsp">Back</a>
            
        </div>
        
    </body>
</html>
