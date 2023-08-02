<%-- 
    Document   : login
    Created on : Mar 1, 2023, 10:07:35 PM
    Author     : Trung Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap');
        .fontds {
            font-family: 'Dancing Script';
        }
        html{
            height: 100%;
            background-image: url(Images/background.jpg);
            background-size: 100% 100%;
            Background-attachment: Fixed;
        }
        body{
            height: 100%;
            margin: 0;
            display: flex;
            align-self: center;
        }
        .container{
            width: 100%;
            padding-top: 30px;
            padding-bottom: 30px;
            display: flex;
            justify-content: space-around;
            align-self: center;
            height: 86%;
            padding: 0;
        }
        .heading{
            font-size: 90px;
            width: 35%;
            display: flex;
            justify-content: center;
            align-self: center;
        }
        .content{
            width: 500px;
            height: 650px;
            background-image: url(Images/Picture1.png);
            background-size: 100% 100%;
        }

    </style>
    <link href="Images/fontawesome-free-6.3.0-web/css/solid.css" rel="stylesheet">
    <body>
        ${error}
        <div class='container'>
            <div class='heading'>
                <h1 class='fontds'>Diary</h1>
            </div>
            
            <%
                String disLogin="block";                
                String disRegister="none";
                Boolean checkLogin=true;
                if(request.getAttribute("checkLogin")!=null){
                    checkLogin=(Boolean)request.getAttribute("checkLogin");
                }
                if(!checkLogin){
                    disLogin="none";                
                    disRegister="block";
                }
            %>
            
            <div  class='content'>
                <div class='login' style="display: <%=disLogin%>">
                    <%@include file="login.jsp" %>
                </div>
                <div class='register' style="display: <%=disRegister%>">
                    <%@include file="register.jsp" %>
                </div>
            </div>

        </div>

    </body>
</html>
