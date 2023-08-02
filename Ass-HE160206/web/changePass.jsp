<%-- 
    Document   : changePass
    Created on : Mar 8, 2023, 2:54:29 AM
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
        .changePassword .title{
            width: 200px;
        }
        .changePassword .input{
            margin-left: 200px;
            width: 48%;
        }
        .changePassword .btn{
            margin-right: 60px;
        }
        .changePassword .btn input{
            margin-top: 20px;
            width: 80px;
        }
    </style>
    <body>
        <form class='changePassword' action='register' method='post'>
            <input type="text" name="mod" value="2" style="display: none">
            <div class='account boxInput'>
                <span class="title">Account</span>
                <input class="input" type="text" name="account" value='${account.getAccount()}' readonly>
            </div>
            <div class='password boxInput'>
                <span class="title">Old Password</span>
                <input class="input" type="password" name="oldPass" value=''>
            </div>
            <div class='password boxInput'>
                <span class="title">New Password</span>
                <input class="input" type="password" name="newPass" value=''>
            </div>
            <div class='password boxInput'>
                <span class="title">Re-Password</span>
                <input class="input" type="password" name="confirm" value=''>
            </div>
            <div class="btn">
                <input type="submit" name="btn-change" value="Save">
                <input type="submit" name="btn-change" value="Exit">
            </div>
        </form>
    </body>
</html>
