<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<% String msg=request.getParameter("reg");%>
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
            </style>
    </head>
    <body bgcolor="lightslategray">
        <div id="title">Online Product Quantization</div>
        <div id="menu">
            <ul>
                <li><a href="index.html">HOME</a></li>
                <li><a href="userlogin.jsp">User Login</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="adminlogin.jsp">Admin Login</a></li>
            </ul>
            
        </div>
        <div id="image">
            <image src="images/createaccount.png"></image>
        </div>
        <div id="data">
            <%if(msg!=null)
               {
                   %>
                    <tr> <td><center><h2><%=msg%></h2></center></td><tr>
                    
              <% }%>
            <h2>User Registration</h2>
            <form name="login" action="RegisterAction" method="post" enctype="multipart/form-data">
            <table align="center" cellpadding="5px" cellspacing="5px">
                <tr>
                    <td>UserName</td><td><input type="text" name="uname" required=""></td>
                </tr>
                <tr>
                    <td>Password</td><td><input type="password" name="password" required=""></td>
                </tr>
                <tr>
                    <td>Email Id</td><td><input type="email" name="email" required=""></td>
                </tr>
                <tr>
                    <td>Mobile</td><td><input type="text" name="mobile" required=""></td>
                </tr>
                <tr>
                    <td>Address</td><td><textarea rows="5" cols="18" name="address" required=""></textarea></td>
                </tr>
                <tr>
                    <td>Date Of Birth</td><td><input type="date" name="dob" required=""></td>
                </tr>
                <tr>
                    <td>Gender</td><td><select name="gender" required="">
                            <option value="Male">Male</option>
                            <option value="FeMale">FeMale</option>
                            <option value="Others">Others</option>
                                </td>
                </tr>
                <tr>
                    <td>Profile Pic</td><td><input type="file" name="image" required=""></td>
                </tr>
                <tr><td><input type="Submit" value="Register"></td><td><input type="Reset"></td></tr>
            </table>
            
           </form>
        </div>
        
    </body>
</html>
