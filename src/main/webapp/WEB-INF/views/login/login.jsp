<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- font files  -->
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' type='text/css'>
    <!-- /font files  -->
    <!-- css files -->
    <link href="${pageContext.servletContext.contextPath}/static/login/css/style.css">
    <!-- /css files -->
    <link href="${pageContext.servletContext.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.servletContext.contextPath}/static/jquery/jquery-3.4.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.servletContext.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body>
<h1>请登录</h1>
<div class="log">
    <div class="content1">
        <h2>Sign In Form</h2>
        <form method="post" id="form">
            <input type="text" name="username" value="您的用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '您的用户名';}">
            <input type="password" name="password" value="PASSWORD" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'PASSWORD';}">
            <div class="button-row">
                <input type="submit" class="sign-in" value="登陆" id="login"><span style="width: 50px;height:50px;line-height:50px;text-align:center;display: inline-block">OR</span>
                <input type="submit" class="reset" value="注册" id="regist">
                <div class="clear"></div>
            </div>
        </form>
    </div>
</div>

<script type="text/javascript">
   <%--登陆--%>
    $("#login").click(function () {
        $("#form").attr("action","${pageContext.servletContext.contextPath}/adminGoLogin").submit();
    });
    /*注册*/
    $("#regist").click(function () {
        $("#form").attr("action","${pageContext.servletContext.contextPath}/adminRegist").submit();
    })

</script>
</body>

</html>