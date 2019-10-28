<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/login/css/style.css" />
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.servletContext.contextPath}/static/jquery/jquery-3.4.1.min.js"></script>
</head>
<body>
<h1>请注册</h1>
<div class="log">
    <div class="content2" style="float: none;margin: 0 auto;">
        <h2>注册</h2>
        <form action="${pageContext.servletContext.contextPath}/adminGoRegist" method="post" style="position: relative" id="regist_form">
            <input type="text" name="username" value="用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户名';}" id="username">
            <span class="help-block" style="position: absolute;right: 0px;top: 41px; font-size: 15px"></span>
            <input type="tel" name="phone" value="电话号码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电话号码';}">
            <input type="email" name="email" value="电子邮箱" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电子邮箱';}">
            <input type="password" name="password" value="您的密码..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '您的密码...';}">
            <button class="register" id="register">注册</button>
        </form>
    </div>
    <div class="clear"></div>
</div>

<script type="text/javascript">
    //检验用户名是否存在
    $("#username").change(function () {
        $.post("${pageContext.servletContext.contextPath}/checkRegistUsername",{"username":$("#username").val()},function (result) {
            console.log(result);
            if (result.code == 200){
                show_validation("#username","success","用户名可用");
                $("#register").attr("ajax_validation","check_success");
            } else if (result.code == 500){
                show_validation("#username","fail","用户名已存在");
                $("#register").attr("ajax_validation","check_failed");
            }

        });
    });
    //提示成功/错误消息
    function show_validation(ele,status,msg) {
        $(ele).parent().removeClass("has-success has-error");
        $(ele).next("span").text("");
        if ("success" == status){

            $(ele).parent().addClass("has-success");
            $(ele).next("span").text(msg);
        } else {
            $(ele).parent().addClass("has-error");
            $(ele).next("span").text(msg);
        }
    }
    //注册按钮的点击事件
    $("#register").click(function () {
        if ($(this).attr("ajax_validation") == "check_failed"){
            return false;
        }
    //保存注册信息
    $("#regist_form").submit();
    })
    
</script>
</body>
</html>