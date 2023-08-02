<%-- 
    Document   : diaryLeftHead
    Created on : Mar 6, 2023, 2:11:23 AM
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
        <table class="diary-weekdays">
            <tr>
                <td>Sun</td>
                <td>Mon</td>
                <td>Tue</td>
                <td>Wed</td>
                <td>Thu</td>
                <td>Fri</td>
                <td>Sat</td>
            </tr>
            <tr>
                <td><input type="radio" name="weekdays" id='0'></td>
                <td><input type="radio" name="weekdays" id='1'></td>
                <td><input type="radio" name="weekdays" id='2'></td>
                <td><input type="radio" name="weekdays" id='3'></td>
                <td><input type="radio" name="weekdays" id='4'></td>
                <td><input type="radio" name="weekdays" id='5'></td>
                <td><input type="radio" name="weekdays" id='6'></td>
            </tr>
        </table>
        <div class="diary-date">
            <span>Date:</span>
            <input type="date" name="date" value='${note.getDate()}' onchange="change()">
        </div>
    </body>
    <script>
        function change(){
            document.getElementById("dailyNote").submit();
        }
        function setWeekDay() {
            getDate="${note.getDate()}";
            date = getDate.split(/[-]/);
            day = new Date(date[0], date[1]-1, date[2]).getDay();
            
            if (day===0) {
                document.getElementById("0").checked = true;
            }
            if (day===1) {
                document.getElementById("1").checked = true;
            }
            if (day===2) {
                document.getElementById("2").checked = true;
            }
            if (day===3) {
                document.getElementById("3").checked = true;
            }
            if (day===4) {
                document.getElementById("4").checked = true;
            }
            if (day===5) {
                document.getElementById("5").checked = true;
            }
            if (day===6) {
                document.getElementById("6").checked = true;
            }
        }
        setWeekDay();
    </script>
</html>
