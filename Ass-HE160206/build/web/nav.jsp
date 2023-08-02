<%-- 
    Document   : nav
    Created on : Mar 7, 2023, 1:56:49 AM
    Author     : Trung Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <ul type='none'>
            <li class='nav-li'>
                <a class='nav-li-span' href="home?page=Home">Home</a>
            </li>
            <li class='nav-li'>
                <a class='nav-li-span' href="home?page=DailyNote">Daily Note</a>
            </li>                    
            <li class='nav-li'>
                <a class='nav-li-span nav-li-span-4' href="home?page=TodoList">To-do List</a>
            </li>
            <li class='nav-li'>
                <a class='nav-li-span' href="home?page=Account">Account</a>
            </li>
        </ul>
    </body>
</html>
