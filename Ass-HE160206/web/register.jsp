<%-- 
    Document   : register
    Created on : Mar 3, 2023, 5:12:33 PM
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
        .title_Reg{
            padding: 0 0 15px;
        }
        .register{
            margin-top: 40px;
        }
        .boxInput_Reg{
            margin-top: 20px;
        }
        .boxInputName{
            margin:0;
            position: relative;
            margin-top: 20px;
            width: 270px;
            margin-left: 28px;
            display: flex;
        }
        .inputName{
            font-family: Times New Roman;
            font-size: 20px;
            line-height: 1.5;
            color: #666666;

            width: 100px;
            background: #e6e6e6;
            height: 40px;
            border: 0;
            border-radius: 25px;
            padding: 0 20px 0 20px;
            margin-left: 10px;
        }
        .btnRegister{
            width: 100%;
            margin-top: 20px;
        }
        .input_Reg{            
            height: 40px;
        }
        .boxInputGender{
            margin:0;
            position: relative;
            margin-top: 20px;
            width: 270px;
            margin-left: 28px;
            display: flex;
        }
        .gender{
            width: 100px;
            padding: 0 35px 0 10px;
            display: flex;
            align-self: center;
            margin-left: 10px;
            height: 40px;
            
        }
        .gender span{
            padding-left: 10px; 
            display: flex;
            align-self: center;
            width: 50px;
        }
        .gender input{
            width: 25px;
        }
        .btn_Reg1{
            width: 140px;
            background-color: rgb(98,215,71);
        }
        .btn_Reg2{
            width: 140px;
            background-color: red;
        }
    </style>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <body>
        <form class="login register" action="register" method="post">
            <div class="title title_Reg">
                <b>Register</b>
            </div>
            <input type="text" name="mod" value="1" style="display: none">
            <div class="boxInput boxInput_Reg">
                <input class="input input_Reg" type="text" name="account" placeholder="Account">
                <span class="icon">
                    <i class="fas fa-user-alt" aria-hidden="true"></i>
                </span>
            </div>

            <div class="boxInput boxInput_Reg">
                <input class="input input_Reg" type="password" name="pass" placeholder="Password">
                <span class="icon">
                    <i class="fas fa-lock" aria-hidden="true"></i>
                </span>
            </div>
            
            <div class="boxInput boxInput_Reg">
                <input class="input input_Reg" type="password" name="re-pass" placeholder="Re-Password">
<!--                <span class="icon">
                    <i class="fas fa-lock" aria-hidden="true"></i>
                </span>-->
            </div>

            <div class="boxInputName">
                <input class="inputName" type="text" name="fistName" placeholder="Fist Name">
                <input class="inputName" type="text" name="lastName" placeholder="Last Name">
            </div>
            
<!--            <div class="boxInputGender">
                <div class="input gender">
                    <input class="" type="radio" name="gender" value='m'><span>Male</span>
                </div >
                <div class="input gender">
                    <input class="" type="radio" name="gender" value='f'><span>Female</span>
                </div>                             
            </div>-->

            <div class="boxInput boxInput_Reg">
                <input class="input input_Reg" type="text" name="phone" placeholder="Phone">
                <span class="icon">
                    <i class="fas fa-phone" aria-hidden="true"></i>
                </span>
            </div>
            
<!--            <div class="boxInput boxInput_Reg">
                <input class="input input_Reg" type="text" name="address" placeholder="Address">
                <span class="icon">
                    <i class="fas fa-map-marker-alt" aria-hidden="true"></i>
                </span>
            </div>-->

<!--            <div class="boxInput boxInput_Reg">
                <input class="input" type="date" name="dob" placeholder="Birthday">
                <span class="icon">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                </span>
            </div>-->

            <div class="bottom btnRegister">
                <input class="btn1 btn_Reg1" type="submit" name="register" value="Submit">
                <input class="btn2 btn_Reg2" type="submit" name="register" value="Cancel">
            </div>

        </form>
    </body>
</html>
