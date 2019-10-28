<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ch">
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="${pageContext.servletContext.contextPath}/static/jquery/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/login/css/style.css" />
</head>
<body>
<script>

</script>
<h1>请登录</h1>
<div class="log" style="width: 100%;">
    <div class="content1" style="float: none;margin: 0 auto;width: 43%">
        <h2>登录</h2>
        <form method="post" id="form">
            <input type="text" name="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入用户名';}" value="请输入用户名">
            <input type="password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入密码';}" value="请输入密码">
            <div class="button-row">
                <input type="submit" class="sign-in" value="登陆" id="login"><span style="width: 50px;height:50px;line-height:50px;text-align:center;display: inline-block">OR</span>
                <input type="submit" class="reset" value="注册" id="regist">
                <div class="clear"></div>
            </div>
        </form>
    </div>
</div>

<script type="text/javascript">
   $("#login").click(function () {
        $("#form").attr("action","${pageContext.servletContext.contextPath}/adminGoLogin").submit();
    });

    $("#regist").click(function () {
        $("#form").attr("action","${pageContext.servletContext.contextPath}/adminRegist").submit();
    })

</script>
</body>

</html>