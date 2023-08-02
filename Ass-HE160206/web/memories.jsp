<%-- 
    Document   : memories
    Created on : Mar 6, 2023, 3:13:51 AM
    Author     : Trung Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .memories-title{
                height: 40px;
                text-align: center;
                font-size: 33px;
                background-color: rgba(0,0,0,0.1);
                font-weight: bold;
                /*margin: 0 15px;*/
                border-radius: 6px 6px 0 0;
            }
            .memories-content{
                text-align: center;
            }
            .memories-content textArea{
                font-family: 'Dancing Script';
                font-size: 20px;
                width: 100%;
                padding: 5px 8px;
                border-radius: 0 0 6px 6px;
                box-sizing: border-box;
                border-top: 0;
                border-left: 2px rgba(0,0,0,0.1) solid;
                border-right: 2px rgba(0,0,0,0.1) solid;
                border-bottom: 2px rgba(0,0,0,0.1) solid;
            }
            .memories-content textArea:focus{
                outline: none;
            }
        </style>
    </head>
    <body>
        <div class="memories-title">
            <span>Memories</span>
        </div>
        <div class="memories-content">
            <textarea name="memories" cols="55" rows="11">${note.getMemories()}</textarea>
        </div>
    </body>
</html>
