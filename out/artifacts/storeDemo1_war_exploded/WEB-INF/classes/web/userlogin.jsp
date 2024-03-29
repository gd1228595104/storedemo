<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/10
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>SCT-后台系统</title>
    <link href="style/authority/login_css.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#login_sub").click(function(){
                $("#submitForm").attr("action", "AdminLoginAction.action").submit();
            });
        });

        /*回车事件*/
        function EnterPress(e){ //传入 event
            var e = e || window.event;
            if(e.keyCode == 13){
                $("#submitForm").attr("action", "index.html").submit();
            }
        }
    </script>
</head>
<body>
<div id="login_center">
    <div id="login_area">
        <div id="login_box">
            <div id="login_form">
                <form id="submitForm" action="AdminLoginAction.action" method="post">
                    <div id="login_tip">
                        <span id="login_err" class="sty_txt2"></span>
                    </div>
                    <div>
                        用户名：<input type="text" name="user.username" class="username" id="name">
                    </div>
                    <div>
                        密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="user.password" class="pwd" id="pwd" onkeypress="EnterPress(event)" onkeydown="EnterPress()">
                    </div>
                    <div id="btn_area">
                        <input type="button" class="login_btn" id="login_sub"  value="登  录">
                        <input type="reset" class="login_btn" id="login_ret" value="重 置">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
