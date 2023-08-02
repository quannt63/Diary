<%-- 
    Document   : todoListContent
    Created on : Mar 13, 2023, 5:15:51 PM
    Author     : Trung Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .todoList-title{
                text-align: center;
                padding: 20px 0 10px;
                font-size: 20px;
            }
            .todoList-title h1{
                margin-bottom: 0;
            }
            .todoList-content form{

            }
            .todoList-list{
                margin-top: 20px;
                width: 100%;
                height: 450px;
                /*border: 2px #000 solid;*/
                box-sizing: border-box;
                overflow-y: scroll;
            }
            .todoList-btn{
                text-align: center;
                width: 100%;
                height: 36px;
                box-sizing: border-box;
                margin-top: 10px
            }
            .todoList-btn div{
                display: inline-block;
                width: 76%;
                height: 36px;
                border: 1px #000 solid;
                border-radius: 20px;
            }
            .content-add{
                font-family: 'Dancing Script';
                height: 36px;
                width: 80%;
                border: 0;
                font-size: 20px;
                outline: none;
                box-sizing: border-box;
            }
            .btn-add{
                font-family: 'Dancing Script';
                height: 36px;
                width: 10%;
                background: rgb(255,165,65);
                font-size: 20px;
                border: 1px;
                box-sizing: border-box;
                border-radius: 20px
            }
            .todoList-list>div{
                width: 95%;
                display: flex;
                border: 1.5px #999999 solid;
                border-radius: 20px;
                margin-bottom: 10px;
                margin-left: 5px;
                 box-sizing: content-box;
            }
            .todoList-list-check, .todoList-list-content{
                display: inline-block;              
                box-sizing: border-box;
            }
            .todoList-list-check{
                width: 16%;
                display: flex;
                justify-content: center;
                align-self: center;
                background-color: #999999;
                border-radius: 20px 0 0 20px;
            }
            .todoList-list-check input[type=checkbox]{
                width: 20px;
                height: 20px;
                line-height: 40px;
                margin-top: 10px;
            }
            .todoList-list-content{
                width: 84%;
                margin-left: 10px;
                box-sizing: border-box;
            }
            .todoList-list-content span{
                line-height: 40px;
            }
        </style>
    </head>
    <body>
        <div class="todoList-title">
            <h1>To-do List</h1>
        </div>
        <div class="todoList-content">
            <form>
                <div class="todoList-list">
                    <div>
                        <div class="todoList-list-check">
                            <input type="checkbox" name="" value="">
                        </div>
                        <div class="todoList-list-content">
                            <span>dsadas</span>
                        </div>
                    </div>
                </div>
                <div class="todoList-btn">
                    <div>
                        <input class="content-add" type="text" name="content-add" value="" placeholder="New ">
                    </div>
                    <input class="btn-add" type="submit" name="btn-add" value="Add">
                </div>
            </form>
        </div>
    </body>
</html>
