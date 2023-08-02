<%-- 
    Document   : problems
    Created on : Mar 6, 2023, 3:17:17 PM
    Author     : Trung Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .problems-title{
                height: 36px;
                text-align: center;
                font-size: 26px;
                background-color: rgba(0,0,0,0.1);
                border-radius: 6px 6px 0 0;
            }
            .problems-text{
                float: right;
            }
            .problems-text textArea{
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
            .problems-text textArea:focus{
                outline: none;
            }
        </style>
    </head>
    <body>
        <div class="problems-title">
            <span>Problems</span>
        </div>
        <div class="problems-text">
            <textarea name="problems" cols="30" rows="7">${note.getProblem()}</textarea>
        </div>
    </body>
</html>
