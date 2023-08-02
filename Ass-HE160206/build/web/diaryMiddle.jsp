<%-- 
    Document   : diary-middle
    Created on : Mar 6, 2023, 2:21:54 AM
    Author     : Trung Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .diary-middle-left{
                width: 48%;  
                display: inline-block;
            }
            .diary-middle-left div{
                border: 2px #666666 dashed;
                border-radius: 6px;
                height: 36px;
                margin-bottom: 14px;
                line-height: 32px;
                padding-left: 6px;
                font-size: 20px;
            }
            .diary-middle-left input{
                border: 0;
                color: #666666;
                font-family: 'Dancing Script';
                font-size: 16px;
            }
            .diary-middle-left input:focus{
                outline: none;
            }
            .diary-middle-right{
                width: 48%; 
                display: inline-block;
                float: right;
                border: 2px #666666 solid;
                border-radius: 6px;
                text-align: center;
            }
            .diary-middle-right div:first-child{
                text-align: center;
                line-height: 33px;
                font-size: 30px;
                background: rgba(0,0,0,0.1);
            }
            .diary-middle-right textArea{
                border: 0;
                font-family: 'Dancing Script';
                font-size: 16px;
            }
            .diary-middle-right textArea:focus{
                outline: none;
            }
        </style>
    </head>
    <body>
        <div class="diary-middle-left">
            <div>
                <span>Weather:</span><input type='text' name='weather' value='${note.getWeather()}'>
            </div>
            <div>
                <span>Energy:</span><input type='text' name='energy' value='${note.getEnergy()}'>
            </div>
            <div>
                <span>Feeling:</span><input type='text' name='feeling' value='${note.getFeeling()}'>
            </div>
        </div>
        <div class="diary-middle-right">
            <div>
                <span>Highlights</span>
            </div>
            <div>
                <textarea name='highlight' cols="29" rows="6" >${note.getHighlight()}</textarea>
            </div>
        </div>
    </body>
</html>
