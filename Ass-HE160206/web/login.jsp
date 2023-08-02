<%-- 
    Document   : login
    Created on : Mar 2, 2023, 12:19:15 AM
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
            .title {
                font-family: Times New Roman;
                padding: 40px 0 44px;
                font-size: 60px;
                color: rgb(255,165,65);
                text-align: center;
            }
            form{
                margin: 50px 80px 50px 40px;
                /*text-align: center;*/
            }
            .boxInput{
                position: relative;
                margin-top: 30px;
                width: 90%;
                margin-left: 10%;
            }
            .input{
                font-family: Times New Roman;
                font-size: 20px;
                line-height: 1.5;
                color: #666666;

                display: block;
                width: 193px;
                background: #e6e6e6;
                height: 50px;
                border: 0;
                border-radius: 25px;
                padding: 0 30px 0 68px;

            }
            .icon{
                display: flex;
                align-items: center;
                position: absolute;
                border-radius: 25px;
                bottom: 0;
                left: 0;
                width: 100%;
                height: 100%;
                padding-left: 35px;
                pointer-events: none;
                color: #666666;
            }
            .bottom{
                margin-top: 30px;
                width: 70%;
                margin-left: 40px;
                display: inline-block;
                justify-content: space-between;
                align-items: center;
            }
            .btn1{
                font-family: Times New Roman;
                font-size: 15px;
                line-height: 1.5;
                color: #fff;
                text-transform: uppercase;

                width: 45%;
                height: 50px;
                border-radius: 25px;
                background: rgb(255,165,65);
                text-align: center;
            }
            .btn1:hover{
                background:#666666;
            }
            .btn2{
                font-family: Times New Roman;
                font-size: 15px;
                line-height: 1.5;
                color: #fff;
                text-transform: uppercase;

                width: 45%;
                height: 50px;
                border-radius: 25px;
                background: rgb(98,215,71);
                text-align: center; 
                margin-left: 10px
            }
            .btn2:hover{
                background:#666666;
            }
        </style>
        <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <form class="login" action="login" method="post">
            <div class="title">
                <b>Login</b>
            </div>

            <div class="boxInput">
                <input class="input" type="text" name="account" placeholder="Account" value="">
                <span class="icon">
                    <i class="fas fa-user-alt" aria-hidden="true"></i>
                </span>
            </div>

            <div class="boxInput">
                <input class="input" type="password" name="pass" placeholder="Password">
                <span class="icon">
                    <i class="fas fa-lock"></i>
                </span>
            </div>

            <div class="bottom">
                <input class="btn1" type="submit" name="login" value="Login">
                <input class="btn2" type="submit" name="login" value="Register">
            </div>

        </form>
    </body>
    <script>
        
    </script>
        
</html>
