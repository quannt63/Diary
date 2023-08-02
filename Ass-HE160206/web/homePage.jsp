<%-- 
    Document   : homePage
    Created on : Mar 5, 2023, 10:42:15 PM
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
        .home{
            display: flex;
            justify-content: space-between;
            align-self: center;
            width: 100%;
            height: 100%;
            padding: 0 5px;
        }
        .home-img, .home-content{
            width: 43%;
            height: 90%;
            margin-top: 3%;
        }
        .home-img{
            box-sizing: border-box;
            padding: 60px 90px 20px 55px;
        }
        .home-img img{
            width: 100%;
            height: 100%;
        }
        .home-content-month{
            /*margin-left: 10%;*/
            margin-top: 8%;
            margin-bottom: 8%;
        }
        #month{
            display: inline;
            font-family:'Dancing Script';
            font-size: 70px;
            font-weight: lighter;
        }
        #year{
            font-size: 36px;
        }
        .calendar td{
            text-align: center;
            font-family:'Dancing Script';
            font-size: 26px;
            width: 56px;
            height: 50px;
        }
        .calendar{
            display: flex;
            justify-content: center;
            align-self: center;
        }
        .btn{
            color: #999999;
            background-color: #ffffff;
            border: none;
            cursor: pointer;
            font-size: 36px;
            padding: 10px;
        }
        .today{
            background-color: rgba(0,0,0,0.2);
            border-radius: 6px;
        }
        td:not(.today):hover{
            background-color: rgba(0,0,0,0.1);
            border-radius: 6px;
        }
        .thu{
            background-color: #ffffff;
        }
    </style>
    <body>
        <div class='home'>
            <div class='home-img'>
                <img src="Images/Picture4.png">
            </div>
            <div class='home-content'>
                <div class="home-content-month">
                    <button class="btn" id='prev' onclick="prevMonth()"><</button>
                    <h1 id='month'></h1>
                    <span id='year'></span>
                    <button class="btn" id='next' onclick="nextMonth()">></button>
                </div>

                <table class='calendar' id='calendar'>

                </table>
            </div>
        </div>
    </body>
    <script>
        date = new Date();
        year = date.getFullYear();
        month = date.getMonth();
        months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

        function showCalendar() {
            firstDay = new Date(year, month, 1).getDay();
            lastDate = new Date(year, month + 1, 0).getDate();
            document.getElementById("month").innerHTML = months[month] + ", ";
            document.getElementById("year").innerHTML = year;
            document.getElementById("calendar").innerHTML =
                    "<tr><td class='thu today'>Sun</td>\n\
                        <td class='thu today'>Mon</td>\n\
                        <td class='thu today'>Tue</td>\n\
                        <td class='thu today'>Wed</td>\n\
                        <td class='thu today'>Thu</td>\n\
                        <td class='thu today'>Fri</td>\n\
                        <td class='thu today'>Sat</td>\n\
                    </tr>\n\
                    <tr id='week1'>\n\
                    </tr>\n\
                    <tr id='week2'>\n\
                    </tr>\n\
                    <tr id='week3'>\n\
                    </tr>\n\
                    <tr id='week4'>\n\
                    </tr>\n\
                    <tr id='week5'>\n\
                    </tr>\n\
                    <tr id='week6'>\n\
                    </tr>";
            week1 = document.getElementById("week1");
            week2 = document.getElementById("week2");
            week3 = document.getElementById("week3");
            week4 = document.getElementById("week4");
            week5 = document.getElementById("week5");
            week6 = document.getElementById("week6");


            for (i = 0; i < firstDay; i++) {
                td = document.createElement("td");
                week1.appendChild(td);
            }

            for (i = 1; i <= lastDate; i++) {
                td = document.createElement("td");
                td.innerHTML = "<a class='day' href='search?account=${u.getAccount()}&year="+year+"&month="+month+"&date"+i+"'>" + i + "</a>";

                if (year === date.getFullYear() && month === date.getMonth() && i === date.getDate()) {
                    td.classList.add("today");
                }
                if ((firstDay + i - 1) / 7 >= 0 && (firstDay + i - 1) / 7 < 1) {
                    week1.appendChild(td);
                }
                if ((firstDay + i - 1) / 7 >= 1 && (firstDay + i - 1) / 7 < 2) {
                    week2.appendChild(td);
                }
                if ((firstDay + i - 1) / 7 >= 2 && (firstDay + i - 1) / 7 < 3) {
                    week3.appendChild(td);
                }
                if ((firstDay + i - 1) / 7 >= 3 && (firstDay + i - 1) / 7 < 4) {
                    week4.appendChild(td);
                }
                if ((firstDay + i - 1) / 7 >= 4 && (firstDay + i - 1) / 7 < 5) {
                    week5.appendChild(td);
                }
                if ((firstDay + i - 1) / 7 >= 5 && (firstDay + i - 1) / 7 < 6) {
                    week6.appendChild(td);
                }
            }
        }
        function nextMonth() {
            if (month === 11) {
                year++;
                month = 0;
            } else {
                month++;
            }
            showCalendar();
        }
        function prevMonth() {
            if (month === 0) {
                year--;
                month = 11;
            } else {
                month--;
            }
            showCalendar();
        }

        showCalendar();
    </script>

</html>
