<%-- 
    Document   : home1
    Created on : Mar 6, 2023, 6:01:40 PM
    Author     : Trung Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            html{
                font-family: 'Dancing Script';
                height: 100%;
                background-image: url(Images/background.jpg);
                background-size: 100% 100%;
                Background-attachment: Fixed;
            }
            body{
                height: 100%;
                margin: 0;
            }
            .container{
                height: 100%;
                display: flex;
                align-items: flex-end;
                justify-content: center;
            }
            .nav{
                width: 10%;
                height: 90%;
                z-index: 1;
                background-color: rgba(0,0,0,0);
                margin-bottom: 30px;
                margin-left: -37px;
                margin-top: 30px;
            }
            .content{
                width: 85%;
                height: 90%;
                background-image: url(Images/Picture5.png);
                background-size: 100% 100%;
                margin-bottom: 30px;
                display: flex;
                justify-content: center;
            }
            .nav ul{
                margin-top: 40px;
                padding-left: 0;
            }
            .nav-li{
                width: 30%;
                height: 70px;
                background-color: greenyellow;
                margin-bottom: 10px;
                margin-right: 70%;
                border-radius: 0 20px 20px 0;
            }
            .nav-li-span{
                display: none;
            }
            .nav-li:hover{
                width: 100%;
                height: 70px;
                background-color: greenyellow;
                margin-bottom: 10px;
                margin-left: 0;
                text-align: center;
            }
            .nav-li:hover .nav-li-span{
                display: inline;
                font-size: 30px;
                line-height: 70px;
            }
            .nav-li:first-child{
                width: 100%;
                height: 70px;
                background-color: rgb(255,165,65);
                margin-bottom: 10px;
                margin-left: 0;
                text-align: center;
            }
            .nav-li:first-child .nav-li-span{
                display: inline;
                font-size: 30px;
                line-height: 70px;
            }
            .content > div{
                width: 90%;
                height: 90%;
                display: flex;
                justify-content: center;
                align-self: center;
            }
            a{
                color: black;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="container">
            
            <div class="content">
                <div id='home'>
                    <%@include  file="homePage.jsp"%>
                </div>

            </div>
            <div class="nav">
                <%@include file="nav.jsp" %>
            </div>
        </div>
    </body>
</html>
