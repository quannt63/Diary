<%-- 
    Document   : profile
    Created on : Mar 7, 2023, 2:35:23 AM
    Author     : Trung Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .boxInput{
                position: relative;
                margin-bottom: 16px;
            }
            .input{
                position: absolute;
                font-family: 'Dancing Script';
                font-size: 23px;
                line-height: 1.5;
                color: #666666;

                display: block;
                width: 60%;
                background: #e6e6e6;
                height: 50px;
                border: 0;
                border-radius: 0 25px 25px 0;
                bottom: 0;
                left: 0;
                margin-left: 140px;
                padding-left: 20px;
                box-sizing: border-box;
            }
            .title{
                font-size: 23px;
                line-height: 1.5;
                color: white;
                display: flex;
                align-items: center;
                justify-content: center;
                background: rgba(0,0,0,0.5);
                height: 50px;
                width: 140px;
                border: 0;
                border-radius: 25px 0 0 25px;
            }
            .gender{
                display: flex;
                align-self: center;
            }
            .gender-male, .gender-female{
                font-size: 23px;
                line-height: 1.5;
                color: #666666;

                display: flex;
                align-self: center;
                /*justify-content: center;*/
                width: 30%;
                background: #e6e6e6;
                height: 50px;
                box-sizing: border-box;
                border-radius: 25px;
            }
            .gender-male span, .gender-female span{
                padding-left: 10px;
                display: flex;
                align-self: center;
                width: 50px;
            }
            .gender-male input, .gender-female input{
                width: 25px;
                margin-left: 20px;
            }
            .btn{
                text-align: center;
            }
            .btn input{
                font-family: Times New Roman;
                font-size: 20px;
                height: 46px;
                border-radius: 23px;
                border: 0;
            }
            .btn input:first-child{
                margin-right: 10px;
                background-color: rgb(255,165,65);
            }
            .btn input:first-child:hover{
                background-color: rgba(255,165,65,0.7);
            }
            .btn input:last-child{
                margin-left: 10px;
                background-color: rgba(98,215,71);
            }
            .btn input:last-child:hover{
                background-color: rgba(98,215,71,0.7);
            }
        </style>
    </head>
    <body>
        <form class='profile' action='register' method='post'>
            <div class='account boxInput'>
                <span class="title">Account</span>
                <input class="input" type="text" name="account" value='${account.getAccount()}' readonly>
            </div>
            <!--<input style="display: none" type="password" name="pass" value="${account.getPassword()}">-->
            <div class='fistName boxInput'>
                <span class="title">Fist Name</span>
                <input class="input" type="text" name="fistName" value='${account.getFistName()}'>
            </div>
            <div class='lastName boxInput'>
                <span class="title">Last Name</span>
                <input class="input" type="text" name="lastName" value='${account.getLastName()}'>
            </div>
            <div class='gender boxInput'>
                <span class="title">Gender</span>
                <div class="gender-male">
                    <input id="gender-male" type="radio" name="gender" value='m'><span>Male</span>
                </div>
                <div class="gender-female">
                    <input id="gender-female" type="radio" name="gender" value='f'><span>Female</span>
                </div>                
            </div>
            <div class='phone boxInput'>
                <span class="title">Phone</span>
                <input class="input" type="text" name="phone" value='${account.getPhone()}'>
            </div>
            <div class='mail boxInput'>
                <span class="title">Mail</span>
                <input class="input" type="text" name="mail" value='${account.getMail()}'>
            </div>
            <div class='address boxInput'>
                <span class="title">Address</span>
                <input class="input" type="text" name="address" value='${account.getAddress()}'>
            </div>
            <div class='dob boxInput'>
                <span class="title">BirthDate</span>
                <input class="input" type="text" name="dob" value='${account.getDob()}'>
            </div>
            <div class="btn">
                <input type="submit" name="btn-change" value="Update">
                <input type="submit" name="btn-change" value="Change Password">
            </div>
        </form>
    </body>
    <script>
        function setGender() {
            var gender = "${account.getGender()}";
            if (gender === "m") {
                document.getElementById("gender-male").checked = true;
            }
            if (gender === "f") {
                document.getElementById("gender-female").checked = true;
            }
        }
        setGender();
    </script>
</html>
