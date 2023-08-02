<%-- 
    Document   : diary
    Created on : Mar 6, 2023, 7:11:16 PM
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
            .nav-li:nth-child(2) {
                width: 100%;
                height: 70px;
                background-color: rgb(255,165,65);
                margin-bottom: 10px;
                margin-left: 0;
                text-align: center;
            }
            .nav-li:nth-child(2) .nav-li-span{
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

            .home{
                display: flex;
                justify-content: space-between;
                align-self: center;
                width: 100%;
                height: 100%;
                padding: 0 5px;
            }
            .diary-left, .diary-right{
                width: 43%;
                height: 90%;
                margin-top: 3%;
            }
            .diary-left-head{
                display: flex;
                justify-content: space-between;
                margin-bottom: 23px;
            }
            .diary-date input{
                border: 0;
                font-size: 16px;
                width: 70%;
                font-family: 'Dancing Script';
            }
            .diary-date{
                float: right;
                border: 2px #666666 dashed;
                border-radius: 9px;
                line-height: 36px;
                font-size: 20px;
                width: 36%;
                margin: 0;
                padding: 0;
                padding-left: 5px;
            }
            .diary-date input:focus{
                outline: none;
            }
            .diary-weekdays{
                width:63%;
            }
            .diary-weekdays td{
                width: 8%;
            }
            .diary-weekdays input[type=radio]{
                margin: 0;
                width: 63%;
            }
            .diary-middle{
                margin-bottom: 16px;
            }
            .achievements, .problems{
                width: 46%;
                display: inline-block;
            }
            .problems{
                float: right;
            }
            .diary-btn-save{
                text-align: center;
                margin-top: 16px;
            }
            .diary-btn-save input{
                font-family: Times New Roman;
                font-size: 18px;
                width: 63px;
                height: 36px;
                border-radius: 16px;
                border: 0;
                background-color: rgb(255,165,65);
            }
            .diary-btn-save input:hover{
                background-color: rgba(255,165,65,0.7);
            }
            .diary-right-foot{
                margin-top: 20px;
            }
            .diary-right-foot-title{
                height: 40px;
                text-align: center;
                font-size: 33px;
                background-color: rgba(0,0,0,0.2);
                border-radius: 6px 6px 0 0;
            }
            .diary-right-foot-text textArea{
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
            .diary-right-foot-text textArea:focus{
                outline: none;
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
                    <form id="dailyNote" class="home" action='search' method='post'>
                        <div class='diary-left'>
                            <div class='diary-left-head'>
                                <%@include file="diaryLeftHead.jsp" %>
                            </div>
                            <div class="diary-middle">
                                <%@include file="diaryMiddle.jsp" %>
                            </div>
                            <div class="memories">
                                <%@include file="memories.jsp" %>
                            </div>
                        </div>
                        <div class='diary-right'>                            
                            <div class="achievements">
                                <%@include file="achievements.jsp" %>
                            </div>
                            <div class='problems'>
                                <%@include file="problems.jsp" %>
                            </div>
                            <div class='diary-right-foot'>
                                <div class="diary-right-foot-title">
                                    <span>Grateful for</span>
                                </div>
                                <div class="diary-right-foot-text">
                                    <textarea name="gratefull" cols="50" rows="5">${note.getGratefull()}</textarea>
                                </div>
                            </div>
                            <div class='diary-right-foot'>
                                <div class="diary-right-foot-title">
                                    <span>Next Day</span>
                                </div>
                                <div class="diary-right-foot-text">
                                    <textarea name="nextDay" cols="50" rows="5">${note.getNextDay()}</textarea>
                                </div>
                            </div>
                            <div class="diary-btn-save">
                                <input type="submit" name="diary-btn-save" value="Save">
                            </div>
                        </div>
                    </form>
                </div>

            </div>

        </div>
    </body>
</html>
