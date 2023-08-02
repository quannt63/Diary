<%-- 
    Document   : todoList
    Created on : Mar 6, 2023, 1:08:20 AM
    Author     : Trung Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap');
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
                margin-right: -36px;
                margin-top: 30px;
            }
            .content{
                width: 85%;
                height: 90%;
                background-image: url(Images/Picture3.png);
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
                margin-left: 70%;
                border-radius: 20px 0 0 20px;
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
            .nav-li:nth-child(3) {
                width: 100%;
                height: 70px;
                background-color: rgb(255,165,65);
                margin-bottom: 10px;
                margin-left: 0;
                text-align: center;
            }
            .nav-li:nth-child(3) .nav-li-span{
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

            #home{
                display: flex;
                justify-content: space-around;
                align-self: center;
                width: 100%;
                height: 100%;
                padding: 0 5px;
            }
            .diary-left, .diary-right{
                width: 40%;
                height: 90%;
                /*margin-top: 3%;*/
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="nav">
                <%@include file="nav.jsp" %>
            </div>
            <div class="content">
                <div id='home'>
                    <div class='diary-left'>
                        <%@include file="todoListContent.jsp" %>
                    </div>
                    <div class='diary-right'>                            
                        <%@include file="weeklySchedule.jsp" %>
                    </div>
                </div>

            </div>

        </div>
    </body>
</html>
