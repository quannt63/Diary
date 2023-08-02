<%-- 
    Document   : achievements
    Created on : Mar 6, 2023, 3:16:07 PM
    Author     : Trung Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .achievements-title{
                height: 36px;
                text-align: center;
                font-size: 26px;
                background-color: rgba(0,0,0,0.1);
                border-radius: 6px 6px 0 0;
            }
            .achievements-text{
                float: right;
            }
            .achievements-text textArea{
                font-family: 'Dancing Script';
                font-size: 16px;
                width: 100%;
                padding: 3px 6px;
                box-sizing: border-box;
                border-top: 0;
                border-left: 2px rgba(0,0,0,0.1) solid;
                border-right: 2px rgba(0,0,0,0.1) solid;
                border-bottom: 2px rgba(0,0,0,0.1) solid;
            }
            .achievements-text textArea:focus{
                outline: none;
            }
        </style>
    </head>
    <body>
        <div class="achievements-title">
            <span>Achievements</span>
        </div>
        <div class="achievements-text">
            <textarea name="achievements" cols="30" rows="7">${note.getAchiverment()}</textarea>
        </div>
    </body>
</html>
