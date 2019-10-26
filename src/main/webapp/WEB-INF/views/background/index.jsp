<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ch">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <%--<meta name="description" content="左右结构项目，属于大人员的社交工具">
    <meta name="keywords" content="左右结构项目 社交 占座 ">--%>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <title>水质采样后台管理系统</title>
    <script src="${pageContext.servletContext.contextPath}/static/background/js/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/static/background/js/bootstrap.min.js"></script>
    <script>
        $(function() {
            $(".meun-item").click(function() {
                $(".meun-item").removeClass("meun-item-active");
                $(this).addClass("meun-item-active");
                var itmeObj = $(".meun-item").find("img");
                itmeObj.each(function() {
                    var items = $(this).attr("src");
                    items = items.replace("_grey.png", ".png");
                    items = items.replace(".png", "_grey.png");
                    $(this).attr("src", items);
                });
                var attrObj = $(this).find("img").attr("src");
                attrObj = attrObj.replace("_grey.png", ".png");
                $(this).find("img").attr("src", attrObj);
            });
            $("#topAD").click(function() {
                $("#topA").toggleClass(" glyphicon-triangle-right");
                $("#topA").toggleClass(" glyphicon-triangle-bottom");
            });
            $("#topBD").click(function() {
                $("#topB").toggleClass(" glyphicon-triangle-right");
                $("#topB").toggleClass(" glyphicon-triangle-bottom");
            });
            $("#topCD").click(function() {
                $("#topC").toggleClass(" glyphicon-triangle-right");
                $("#topC").toggleClass(" glyphicon-triangle-bottom");
            });
            $(".toggle-btn").click(function() {
                $("#leftMeun").toggleClass("show");
                $("#rightContent").toggleClass("pd0px");
            })
        })
    </script>
   <%-- <!--[if lt IE 9]>
    <script src="${pageContext.servletContext.contextPath}/static/background/js/html5shiv.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/static/background/js/respond.min.js"></script>--%>
    <![endif]-->
    <link href="${pageContext.servletContext.contextPath}/static/background/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/background/css/common.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/background/css/slide.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/background/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/background/css/flat-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/background/css/jquery.nouislider.css">
</head>

<body>
<div id="wrap">
    <!-- 左侧菜单栏目块 -->
    <div class="leftMeun" id="leftMeun">
        <div id="logoDiv">
            <p id="logoP"><img id="logo" alt="水质检测" src="${pageContext.servletContext.contextPath}/static/background/images/logo.png"><span>水质采样后台</span></p>
        </div>
        <div id="personInfor">
            <p id="userName">欢迎您：${admin}</p>
                <a href="${pageContext.servletContext.contextPath}/adminQuit">退出登录</a>
            </p>
        </div>
        <%--<div class="meun-title">账号管理</div>--%>
        <div class="meun-item meun-item-active" aria-controls="employee" role="tab" data-toggle="tab" id="employee_manager"><img src="${pageContext.servletContext.contextPath}/static/background/images/icon_source.png">员工管理</div>
        <div class="meun-item" aria-controls="bottleType" role="tab" data-toggle="tab" id="bottleType_manager"><img src="${pageContext.servletContext.contextPath}/static/background/images/icon_chara_grey.png">瓶子类型</div>
        <div class="meun-item" aria-controls="reagentType" role="tab" data-toggle="tab" id="reagentType_manager"><img src="${pageContext.servletContext.contextPath}/static/background/images/icon_user_grey.png" >试剂类型</div>
        <div class="meun-item" aria-controls="place" role="tab" data-toggle="tab" id="place_manager"><img src="${pageContext.servletContext.contextPath}/static/background/images/icon_change_grey.png">地点管理</div>
        <div class="meun-item" aria-controls="task" role="tab" data-toggle="tab" id="task_manager"><img src="${pageContext.servletContext.contextPath}/static/background/images/icon_source.png">任务管理</div>
    </div>
    <!-- 右侧具体内容栏目 -->
    <div id="rightContent">
        <a class="toggle-btn" id="nimei">
            <i class="glyphicon glyphicon-align-justify"></i>
        </a>
        <!-- Tab panes -->
        <div class="tab-content">
            <!--员工管理模块-->
            <div role="tabpanel" class="tab-pane active employee" id="employee">
                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" id="addUser_modal_btn">添加员工 </button>
                    </div>
                    <%--关键字搜索--%>
                    <%--<div class="col-xs-4">
                        <input type="text" class="form-control input-sm" placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>--%>
                    <%--按照条件进行排序--%>
                    <%--<div class="col-lg-3 col-lg-offset-2 col-xs-4" style=" padding-right: 40px;text-align: right;">
                        <label for="paixu">排序:&nbsp;</label>
                        <select class=" form-control">
                            <option>地区</option>
                            <option>地区</option>
                            <option>班期</option>
                            <option>性别</option>
                            <option>年龄</option>
                            <option>份数</option>
                        </select>
                    </div>--%>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 " id="employee_id">
                            序号
                        </div>
                        <div class="col-xs-2 " id="employee_user_id">
                            职工号
                        </div>
                        <div class="col-xs-2" id="employee_username">
                            用户名
                        </div>
                        <div class="col-xs-2" id="employee_password">
                            密码
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">
                <%--        <div class="row">
                            <div class="col-xs-2">
                                1
                            </div>
                            <div class="col-xs-2 ">
                                123455
                            </div>
                            <div class="col-xs-2">
                                张三
                            </div>
                            <div class="col-xs-2">
                                123
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#reviseUser">任务</button>
                            </div>
                        </div>--%>

                    </div>

                </div>
                <!--页码块-->
                <%--<footer class="footer">--%>
                    <%--<ul class="pagination">--%>
                        <%--<li>--%>
                            <%--<select>--%>
                                <%--<option>1</option>--%>
                                <%--<option>2</option>--%>
                                <%--<option>3</option>--%>
                                <%--<option>4</option>--%>
                                <%--<option>5</option>--%>
                                <%--<option>6</option>--%>
                                <%--<option>7</option>--%>
                                <%--<option>8</option>--%>
                                <%--<option>9</option>--%>
                                <%--<option>10</option>--%>
                            <%--</select>--%>
                            <%--页--%>
                        <%--</li>--%>
                        <%--<li class="gray">--%>
                            <%--共20页--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<i class="glyphicon glyphicon-menu-left">--%>
                            <%--</i>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<i class="glyphicon glyphicon-menu-right">--%>
                            <%--</i>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</footer>--%>

                <!--弹出添加员工窗口-->
             <%--   <div class="modal fade" id="addEmployee" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">添加员工</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">地区：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">国际关系地区</option>
                                                    <option value="">北京大学</option>
                                                    <option value="">天津大学</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">权限：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">管理员</option>
                                                    <option value="">普通用户</option>
                                                    <option value="">游客</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>--%>
                <!-- /.modal -->

                <!--弹出添加员工窗口-->
                <div class="modal fade" id="addUserModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">添加员工</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal" id="addUser_form">
                                        <div class="form-group">
                                            <label for="add_userId" class="col-xs-3 control-label">职工号：</label>
                                            <div class="col-xs-8">
                                                <input type="text" class="form-control input-sm duiqi" id="add_userId" placeholder="" name="userId">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="add_userName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="text" class="form-control input-sm duiqi" id="add_userName" placeholder="" name="userName">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="add_password" class="col-xs-3 control-label">密码：</label>
                                            <div class="col-xs-8 ">
                                                <input type="text" class="form-control input-sm duiqi" id="add_password" placeholder="" name="password">
                                            </div>
                                        </div>

                                       <%-- <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">地区：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">国际关系地区</option>
                                                    <option value="">北京大学</option>
                                                    <option value="">天津大学</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">权限：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">管理员</option>
                                                    <option value="">普通用户</option>
                                                    <option value="">游客</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
                                            </div>
                                        </div>--%>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green" id="add_save_button">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出修改员工窗口-->
                <div class="modal fade" id="modifyUserModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">修改员工</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal" id="employee_modify_form">
                                        <input type="hidden" name="id" id="employee_modify_id">
                                        <div class="form-group ">
                                            <label for="employee_modify_userId" class="col-xs-3 control-label">职工号：</label>
                                            <div class="col-xs-8 ">
                                                <input type="text" class="form-control input-sm duiqi" id="employee_modify_userId" name="userId">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="employee_modify_userName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="text" class="form-control input-sm duiqi" id="employee_modify_userName" name="userName">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="employee_modify_password" class="col-xs-3 control-label">密码：</label>
                                            <div class="col-xs-8">
                                                <input type="text" class="form-control input-sm duiqi" id="employee_modify_password" name="password">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green" id="employee_modify_button">修改</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除用户警告窗口-->
                <div class="modal fade" id="deleteUserModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该员工？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn  btn-xs btn-danger" id="employee_delete_button">确定</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!--查看任务的界面-->
            <div role="tabpanel" class="tab-pane employee_task" id="employee_task">
                <div class="check-div form-inline">
                    <div class="col-xs-3 col-lg-offset-5" style="font-weight: bolder">
                        所有任务
                    </div>
                    <div class="col-lg-2 col-lg-offset-2" style=" padding-right: 40px;text-align: right;">
                        <label>排序:&nbsp;</label>
                        <select class=" form-control">
                            <option>地区</option>
                            <option>地区</option>
                            <option>班期</option>
                            <option>性别</option>
                            <option>年龄</option>
                            <option>份数</option>
                        </select>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 ">
                            序号
                        </div>
                        <div class="col-xs-2">
                            采样人
                        </div>
                        <div class="col-xs-2">
                            采样地点
                        </div>
                        <div class="col-xs-2">
                            瓶子类型
                        </div>
                        <div class="col-xs-2">
                            试剂类型
                        </div>
                        <div class="col-xs-2">
                            完成时间
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2">
                                goodmoning
                            </div>
                            <div class="col-xs-2">
                                国际关系地区
                            </div>
                            <div class="col-xs-2">
                                李豆豆
                            </div>
                            <div class="col-xs-2">
                                13688889999
                            </div>
                            <div class="col-xs-2">
                                状态
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
               <%-- <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>--%>

                <!--弹出添加用户窗口-->
             <%--   <div class="modal fade" id="addUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">地区：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">国际关系地区</option>
                                                    <option value="">北京大学</option>
                                                    <option value="">天津大学</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">权限：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">管理员</option>
                                                    <option value="">普通用户</option>
                                                    <option value="">游客</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>--%>
                <!-- /.modal -->

                <!--弹出修改用户窗口-->
               <%-- <div class="modal fade" id="reviseUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">地区：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">权限：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>--%>
                <!-- /.modal -->

                <!--弹出删除用户警告窗口-->
                <%--<div class="modal fade" id="deleteUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该用户？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn  btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>--%>
                <!-- /.modal -->

            </div>
            <!-- 瓶子类型管理模块 -->
            <div role="tabpanel" class="tab-pane bottleType" id="bottleType">
                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" id="addBottleType_modal_btn">添加瓶子类型 </button>
                    </div>
                </div>
                <!--页码块-->
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-4 " id="bottleType_id">
                            序号
                        </div>
                        <div class="col-xs-4 " id="bottleType_bottleTypeName">
                            瓶子类型
                        </div>
                        <div class="col-xs-4">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                    </div>
                </div>
               <%-- <footer class="footer">
                <ul class="pagination">
                <li>
                <select>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                </select>
                页
                </li>
                <li class="gray">
                共20页
                </li>
                <li>
                <i class="glyphicon glyphicon-menu-left">
                </i>
                </li>
                <li>
                <i class="glyphicon glyphicon-menu-right">
                </i>
                </li>
                </ul>
                </footer>--%>
                <!--弹出添加瓶子类型窗口-->
                <div class="modal fade" id="addBottleTypeModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">添加采样瓶分类</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal" id="addBottleType_form">
                                        <div class="form-group">
                                            <label for="add_bottleType" class="col-xs-3 control-label">类型：</label>
                                            <div class="col-xs-8">
                                                <input type="text" class="form-control input-sm duiqi" id="add_bottleType" placeholder="" name="bottleTypeName">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green" id="addBottleTye_save_button">保 存</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!--弹出修改采样瓶类型窗口-->
                <div class="modal fade" id="modifyBottleTypeModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">修改</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal" id="bottleType_modify_form">
                                        <input type="hidden" name="id" id="bottleType_modify_id">
                                        <div class="form-group ">
                                            <label for="bottleType_modify_name" class="col-xs-3 control-label">类型：</label>
                                            <div class="col-xs-8 ">
                                                <input type="text" class="form-control input-sm duiqi" id="bottleType_modify_name" name="bottleTypeName">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green" id="bottleType_modify_button">修改</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除采样瓶类型警告窗口-->
                <div class="modal fade" id="deleteBottleTypeModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该种类型的采样瓶？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn  btn-xs btn-danger" id="bottleType_delete_button">确定</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!-- 试剂类型管理模块 -->
            <div role="tabpanel" class="tab-pane reagentType" id="reagentType">
                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" id="addReagentType_modal_btn">添加试剂 </button>
                    </div>
                </div>
                <!--页码块-->
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-4 " id="reagentType_id">
                            序号
                        </div>
                        <div class="col-xs-4 " id="reagentType_reagentName">
                            试剂类型
                        </div>
                        <div class="col-xs-4">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                    </div>
                </div>
                <%-- <footer class="footer">
                 <ul class="pagination">
                 <li>
                 <select>
                 <option>1</option>
                 <option>2</option>
                 <option>3</option>
                 <option>4</option>
                 <option>5</option>
                 <option>6</option>
                 <option>7</option>
                 <option>8</option>
                 <option>9</option>
                 <option>10</option>
                 </select>
                 页
                 </li>
                 <li class="gray">
                 共20页
                 </li>
                 <li>
                 <i class="glyphicon glyphicon-menu-left">
                 </i>
                 </li>
                 <li>
                 <i class="glyphicon glyphicon-menu-right">
                 </i>
                 </li>
                 </ul>
                 </footer>--%>
                <!--弹出添加试剂类型窗口-->
                <div class="modal fade" id="addReagentTypeModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">添加试剂</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal" id="addReagentType_form">
                                        <div class="form-group">
                                            <label for="add_reagentType" class="col-xs-3 control-label">类型：</label>
                                            <div class="col-xs-8">
                                                <input type="text" class="form-control input-sm duiqi" id="add_reagentType" placeholder="" name="reagentName">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green" id="addReagentType_save_button">保 存</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!--弹出修改试剂类型窗口-->
                <div class="modal fade" id="modifyReagentTypeModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">修改</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal" id="reagentType_modify_form">
                                        <input type="hidden" name="id" id="reagentType_modify_id">
                                        <div class="form-group ">
                                            <label for="bottleType_modify_name" class="col-xs-3 control-label">类型：</label>
                                            <div class="col-xs-8 ">
                                                <input type="text" class="form-control input-sm duiqi" id="reagentType_modify_name" name="reagentName">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green" id="reagentType_modify_button">修改</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除试剂类型警告窗口-->
                <div class="modal fade" id="deleteReagentTypeModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该种类型的采样瓶？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn  btn-xs btn-danger" id="reagentType_delete_button">确定</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!-- 地点管理模块 -->
            <div role="tabpanel" class="tab-pane place" id="place">
                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" id="addPlace_modal_btn">添加地点 </button>
                    </div>
                </div>
                <!--页码块-->
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-4 " id="place_id">
                            序号
                        </div>
                        <div class="col-xs-4 " id="place_placeName">
                            地点
                        </div>
                        <div class="col-xs-4">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                    </div>
                </div>
                <%-- <footer class="footer">
                 <ul class="pagination">
                 <li>
                 <select>
                 <option>1</option>
                 <option>2</option>
                 <option>3</option>
                 <option>4</option>
                 <option>5</option>
                 <option>6</option>
                 <option>7</option>
                 <option>8</option>
                 <option>9</option>
                 <option>10</option>
                 </select>
                 页
                 </li>
                 <li class="gray">
                 共20页
                 </li>
                 <li>
                 <i class="glyphicon glyphicon-menu-left">
                 </i>
                 </li>
                 <li>
                 <i class="glyphicon glyphicon-menu-right">
                 </i>
                 </li>
                 </ul>
                 </footer>--%>
                <!--弹出添加地点窗口-->
                <div class="modal fade" id="addPlaceModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">添加地点</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal" id="addPlace_form">
                                        <div class="form-group">
                                            <label for="add_place" class="col-xs-3 control-label">地点名称：</label>
                                            <div class="col-xs-8">
                                                <input type="text" class="form-control input-sm duiqi" id="add_place" placeholder="" name="placeName">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="add_longitudeOne" class="col-xs-3 control-label">经度1：</label>
                                            <div class="col-xs-8">
                                                <input type="text" class="form-control input-sm duiqi" id="add_longitudeOne" placeholder="" name="longitudeOne">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="add_latitudeOne" class="col-xs-3 control-label">纬度1：</label>
                                            <div class="col-xs-8">
                                                <input type="text" class="form-control input-sm duiqi" id="add_latitudeOne" placeholder="" name="latitudeOne">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="add_longitudeTwo" class="col-xs-3 control-label">经度2：</label>
                                            <div class="col-xs-8">
                                                <input type="text" class="form-control input-sm duiqi" id="add_longitudeTwo" placeholder="" name="longitudeTwo">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="add_latitudeTwo" class="col-xs-3 control-label">纬度2：</label>
                                            <div class="col-xs-8">
                                                <input type="text" class="form-control input-sm duiqi" id="add_latitudeTwo" placeholder="" name="latitudeTwo">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green" id="addPlace_save_button">保 存</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!--弹出修改地点窗口-->
                <div class="modal fade" id="modifyPlaceModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">修改</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal" id="place_modify_form">
                                        <input type="hidden" name="id" id="place_modify_id">
                                        <div class="form-group ">
                                            <label for="place_modify_name" class="col-xs-3 control-label">地点：</label>
                                            <div class="col-xs-8 ">
                                                <input type="text" class="form-control input-sm duiqi" id="place_modify_name" name="placeName">
                                            </div>
                                        </div>

                                        <div class="form-group ">
                                            <label for="place_modify_longitudeOne" class="col-xs-3 control-label">经度1：</label>
                                            <div class="col-xs-8 ">
                                                <input type="text" class="form-control input-sm duiqi" id="place_modify_longitudeOne" name="longitudeOne">
                                            </div>
                                        </div>

                                        <div class="form-group ">
                                            <label for="place_modify_latitudeOne" class="col-xs-3 control-label">纬度1：</label>
                                            <div class="col-xs-8 ">
                                                <input type="text" class="form-control input-sm duiqi" id="place_modify_latitudeOne" name="latitudeOne">
                                            </div>
                                        </div>

                                        <div class="form-group ">
                                            <label for="place_modify_longitudeTwo" class="col-xs-3 control-label">经度2：</label>
                                            <div class="col-xs-8 ">
                                                <input type="text" class="form-control input-sm duiqi" id="place_modify_longitudeTwo" name="longitudeTwo">
                                            </div>
                                        </div>

                                        <div class="form-group ">
                                            <label for="place_modify_latitudeTwo" class="col-xs-3 control-label">纬度2：</label>
                                            <div class="col-xs-8 ">
                                                <input type="text" class="form-control input-sm duiqi" id="place_modify_latitudeTwo" name="latitudeTwo">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green" id="place_modify_button">修改</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除试剂类型警告窗口-->
                <div class="modal fade" id="deletePlaceModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该地点？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn  btn-xs btn-danger" id="place_delete_button">确定</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!--任务管理模块-->
            <div role="tabpanel" class="tab-pane task" id="task">
                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" id="addTask_modal_btn">添加任务 </button>
                    </div>
                    <%--关键字搜索--%>
                    <%--<div class="col-xs-4">
                        <input type="text" class="form-control input-sm" placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>--%>
                    <%--按照条件进行排序--%>
                    <%--<div class="col-lg-3 col-lg-offset-2 col-xs-4" style=" padding-right: 40px;text-align: right;">
                        <label for="paixu">排序:&nbsp;</label>
                        <select class=" form-control">
                            <option>地区</option>
                            <option>地区</option>
                            <option>班期</option>
                            <option>性别</option>
                            <option>年龄</option>
                            <option>份数</option>
                        </select>
                    </div>--%>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 " id="task_id">
                            序号
                        </div>
                        <div class="col-xs-2 " id="task_placeName">
                            采样地点
                        </div>
                        <div class="col-xs-2" id="task_reagent">
                            试剂类型
                        </div>
                        <div class="col-xs-2" id="task_bottleType">
                            瓶子类型
                        </div>
                        <div class="col-xs-2" id="task_user">
                            采样人
                        </div>
                        <%--<div class="col-xs-1" id="task_finishTime">
                            完成时间
                        </div>--%>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">
                        <%--        <div class="row">
                                    <div class="col-xs-2">
                                        1
                                    </div>
                                    <div class="col-xs-2 ">
                                        123455
                                    </div>
                                    <div class="col-xs-2">
                                        张三
                                    </div>
                                    <div class="col-xs-2">
                                        123
                                    </div>
                                    <div class="col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#reviseUser">任务</button>
                                    </div>
                                </div>--%>

                    </div>

                </div>
                <!--弹出添加任务窗口-->
                <div class="modal fade" id="addTaskModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">添加任务</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal" id="addTask_form">
                                         <div class="form-group">
                                        <label for="add_task_placeName" class="col-xs-3 control-label">地点：</label>
                                        <div class="col-xs-8">
                                            <select class=" form-control select-duiqi" id="add_task_placeName" name="place.id">
                                            </select>
                                        </div>
                                    </div>
                                        <div class="form-group">
                                            <label for="add_task_bottleTypeName" class="col-xs-3 control-label">瓶子类型：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi" id="add_task_bottleTypeName" name="bottleType.id">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="add_task_reagentName" class="col-xs-3 control-label">试剂类型：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi" id="add_task_reagentName" name="reagent.id">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="add_task_userName" class="col-xs-3 control-label">采样人：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi" id="add_task_userName" name="user.userId">
                                                </select>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green" id="addTask_save_button">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <!--弹出修改任务窗口-->
                <div class="modal fade" id="modifyTaskModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">修改任务</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal" id="task_modify_form">
                                        <input type="hidden" name="id" id="task_modify_id">
                                        <div class="form-group">
                                            <label for="modify_task_placeName" class="col-xs-3 control-label">地点：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi" id="modify_task_placeName" name="place.id">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="modify_task_bottleTypeName" class="col-xs-3 control-label">瓶子类型：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi" id="modify_task_bottleTypeName" name="bottleType.id">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="modify_task_reagentName" class="col-xs-3 control-label">试剂类型：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi" id="modify_task_reagentName" name="reagent.id">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="modify_task_userName" class="col-xs-3 control-label">采样人：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi" id="modify_task_userName" name="user.userId">
                                                </select>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green" id="task_modify_button">修改</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除任务警告窗口-->
                <div class="modal fade" id="deleteTaskModal" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该员工？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn  btn-xs btn-danger" id="task_delete_button">确定</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <%--<div role="tabpanel" class="tab-pane sour" id="sour">
                <div class="check-div form-inline">
                    <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSource">添加资源</button>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">
                            编码
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            名称
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                            链接
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">
                        <div class="row">
                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                                1
                            </div>
                            <div id="topAD" class="col-lg-4 col-md-4 col-sm-4 col-xs-4" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSystem" aria-expanded="true" aria-controls="collapseOne">
                                <span id="topA" class="glyphicon  glyphicon-triangle-bottom  "></span> <span>系统管理</span>
                            </div>
                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                /admin/system/userlist/software/
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                            </div>
                        </div>

                        <!--系统管理折叠狂-->

                        <div id="collapseSystem" class="collapse in" aria-expanded="true">
                            <div class="row">
                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl2 ">
                                    2
                                </div>
                                <div id="topBD" onClick="changeA()" class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl2" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseAccount" aria-expanded="true" aria-controls="collapseOne">
                                    <span onClick="changeB()" id="topB" class="glyphicon glyphicon-triangle-bottom"></span> <span>账号管理</span>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    /rlist/
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                    <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                </div>
                            </div>
                            <!--用户管理折叠狂-->
                            <div id="collapseAccount" class="collapse in" aria-expanded="true">
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3 ">
                                        1
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
                                        <span class=""> &nbsp;</span><span>资源管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  levl3 ">
                                        2
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
                                        <span></span><span>权限管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl2 ">
                                    3
                                </div>
                                <div id="topCD" class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl2" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSchool" aria-expanded="true" aria-controls="collapseOne">
                                    <span id="topC" onClick="changeC()" class="glyphicon glyphicon-triangle-bottom"></span><span> 地区管理</span>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    /admin/system
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                    <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                </div>
                            </div>
                            <!--地区管理折叠狂-->
                            <div id="collapseSchool" class="collapse in" aria-expanded="true">
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  levl3">
                                        1
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4   levl3">
                                        <span></span><span>地区管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3">
                                        2
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
                                        <span></span><span>规则管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs " data-toggle="modal " data-target="#changeSource ">修改</button>
                                        <button class="btn btn-danger btn-xs " data-toggle="modal " data-target="#deleteSource ">删除</button>
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3 ">
                                        3
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl3">
                                        <span></span><span>人员信息</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1   levl3">
                                        4
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
                                        <span></span><span>座位管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 ">
                                        <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>
                <!--弹出窗口 添加资源-->
                <div class="modal fade" id="addSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加资源</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">名称：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">链接：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">排序：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">父节点：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInput1" class="col-xs-3 control-label">资源类型：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="leixing" id="anniu">菜单</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="leixing" id="meun"> 按钮</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--修改资源弹出窗口-->
                <div class="modal fade" id="changeSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改资源</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">名称：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">链接：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">排序：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">父节点：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInput1" class="col-xs-3 control-label">资源类型：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="leixing" id="anniu">菜单</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="leixing" id="meun"> 按钮</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <!--弹出删除资源警告窗口-->
                <div class="modal fade" id="deleteSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该资源？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!-- 权限管理模块 -->
            <div role="tabpanel" class="tab-pane" id="char">

                <div class="check-div">
                    <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addChar">添加权限</button>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-1 ">
                            编码
                        </div>
                        <div class="col-xs-4">
                            权限名
                        </div>
                        <div class="col-xs-5">
                            描述
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">
                        <div class="row">
                            <div class="col-xs-1 ">
                                1
                            </div>
                            <div class="col-xs-4">
                                </span><span>管理员</span>
                            </div>
                            <div class="col-xs-5">
                                管理员具有超年权限
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeChar">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteChar">删除</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-1 ">
                                2
                            </div>
                            <div class="col-xs-4">
                                <span>游客</span>
                            </div>
                            <div class="col-xs-5">
                                可以查看信息
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs">修改</button>
                                <button class="btn btn-danger btn-xs">删除</button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>
                <!--增加权限弹出窗口-->
                <div class="modal fade" id="addChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加权限</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">权限名：</label>
                                            <div class="col-xs-6 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">描述：</label>
                                            <div class="col-xs-6 ">
                                                <textarea class="form-control input-sm duiqi"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">系统资源：</label>
                                            <div class="col-xs-6">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--修改权限弹出窗口-->
                <div class="modal fade" id="changeChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改权限</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">权限名：</label>
                                            <div class="col-xs-6 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">描述：</label>
                                            <div class="col-xs-6 ">
                                                <textarea class="form-control input-sm duiqi"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">系统资源：</label>
                                            <div class="col-xs-6">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除权限警告窗口-->
                <div class="modal fade" id="deleteChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该权限？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!-- 修改密码模块 -->
            <div role="tabpanel" class="tab-pane" id="chan">
                <div class="check-div">
                    原始密码为12312313
                </div>
                <div style="padding: 50px 0;margin-top: 50px;background-color: #fff; text-align: right;width: 420px;margin: 50px auto;">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-4 control-label">原密码：</label>
                            <div class="col-xs-5">
                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-4 control-label">新密码：</label>
                            <div class="col-xs-5">
                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-4 control-label">重复密码：</label>
                            <div class="col-xs-5">
                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                            </div>
                        </div>
                        <div class="form-group text-right">
                            <div class="col-xs-offset-4 col-xs-5" style="margin-left: 169px;">
                                <button type="reset" class="btn btn-xs btn-white">取 消</button>
                                <button type="submit" class="btn btn-xs btn-green">保存</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <!--地区管理模块-->
            <div role="tabpanel" class="tab-pane" id="scho">

                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSchool">添加地区 </button>
                    </div>
                    <div class="col-lg-4 col-xs-5">
                        <input type="text" class=" form-control input-sm " placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                    <div class="col-lg-3 col-lg-offset-1 col-xs-3" style="padding-right: 40px;text-align: right;float: right;">
                        <label for="paixu">排序:&nbsp;</label>
                        <select class="form-control">
                            <option>地区</option>
                            <option>排名</option>
                        </select>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-1 ">
                            编码
                        </div>
                        <div class="col-xs-2 ">
                            地区
                        </div>
                        <div class="col-xs-1">
                            经度
                        </div>
                        <div class="col-xs-1">
                            维度
                        </div>
                        <div class="col-xs-2">
                            建筑信息
                        </div>
                        <div class="col-xs-2">
                            人员列表
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-1 ">
                                1
                            </div>
                            <div class="col-xs-2">
                                国际关系地区
                            </div>
                            <div class="col-xs-1">
                                45.0
                            </div>
                            <div class="col-xs-1">
                                95.90
                            </div>
                            <div class="col-xs-2">
                                <a class="linkCcc">查看</a>
                            </div>
                            <div class="col-xs-2">
                                <a class="linkCcc">查看</a>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseSchool">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSchool">删除</button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出添加用户窗口-->
                <div class="modal fade" id="addSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加地区</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">地区名称：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">经度：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">纬度：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">简称：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出修改用户窗口-->
                <div class="modal fade" id="reviseSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改地区</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">地区名称：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">经度：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">纬度：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">简称：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除用户警告窗口-->
                <div class="modal fade" id="deleteSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该地区？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!--规则管理模块-->
            <div role="tabpanel" class="tab-pane" id="regu" style="padding-top: 50px;">
                <div class="data-div">
                    <div class="tablebody col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">签到超时时间</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax1">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">30</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">抢座超时时间</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax2">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">15</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">临时离开超时时间</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax3">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">60</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">违约次数冻结上限</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax4">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">100</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">可预约天数</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax5">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">7</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">最大未完成预约数</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax6">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">10</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                            <button type="button" class="btn btn-xs btn-green">保 存</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--时间段管理模块-->
            <div role="tabpanel" class="tab-pane" id="time">
                <div class="check-div form-inline">
                    <span href="#sitt" aria-controls="sitt" role="tab" data-toggle="tab" style="cursor: pointer;"><span class="glyphicon glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;返回上一页</span>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="btn btn-yellow btn-xs " data-toggle="modal" data-target="#addTime">添加时间段 </button>

                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-3 ">
                            编码
                        </div>
                        <div class="col-xs-3">
                            开始
                        </div>
                        <div class="col-xs-3">
                            结束
                        </div>

                        <div class="col-xs-3">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-3 ">
                                6426398978
                            </div>
                            <div class="col-xs-3">
                                10:10
                            </div>
                            <div class="col-xs-3">
                                19:30
                            </div>
                            <div class="col-xs-3">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeTime">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteTime">删除</button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出增加时间段窗口-->
                <div class="modal fade" id="addTime" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">时间段设置</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">开始时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">结束时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm" id="sName" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--修改增加时间段窗口-->
                <div class="modal fade" id="changeTime" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改时间段</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">开始时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">结束时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-green btn-xs">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <!--弹出删除时间段警告窗口-->
                <div class="modal fade" id="deleteTime" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该时间段？
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-danger btn-xs">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!--座位管理模块-->
            <div role="tabpanel" class="tab-pane" id="sitt">

                <div class="check-div form-inline" style="">
                    <div class="col-lg-4 col-xs-7 col-md-6">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addBuilding">添加楼宇 </button>
                        <label for="paixu">楼宇:&nbsp;</label>
                        <select class=" form-control">
                            <option>第一教学楼</option>
                            <option>逸夫楼</option>
                            <option>综合楼</option>
                            <option>图书馆</option>
                        </select>
                        <button class="btn btn-white btn-xs ">修 改</button>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4 col-xs-4 col-md-5 " style="padding-right: 40px;text-align: right;">
                        <input type="text" class=" form-control input-sm " placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 "style="padding-left: 20px;">
                            楼层
                        </div>
                        <div class="col-xs-3"style="padding-left: 20px;">
                            区域
                        </div>
                        <div class="col-xs-2" style="padding-left: 2px;">
                            座位数
                        </div>
                        <div class="col-xs-2">
                            空余座位
                        </div>
                        <div class="col-xs-3">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="sitTable">
                            <table class="table  table-responsive">
                                <tr>
                                    <td valign="middle" class="col-xs-2" rowspan="3">图书馆第一层</td>
                                    <td class="col-xs-3">第一自习室</td>
                                    <td class="col-xs-2">2</td>
                                    <td class="col-xs-2" style="padding-left: 40px!important;">3</td>
                                    <td class="col-xs-3"style="padding-left: 50px!important;">
                                        <a class="linkCcc" href="#sitDetail" aria-controls="char" role="tab" data-toggle="tab">座位信息</a>
                                        <a class="linkCcc" href="#time" aria-controls="char" role="tab" data-toggle="tab">时间段设置</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-xs-3">第一自习室</td>
                                    <td class="col-xs-2">2</td>
                                    <td class="col-xs-2" style="padding-left: 40px!important;">3</td>
                                    <td class="col-xs-3"style="padding-left: 50px!important;">
                                        <a class="linkCcc" href="#sitDetail" aria-controls="char" role="tab" data-toggle="tab">座位信息</a>
                                        <a class="linkCcc" href="#time" aria-controls="char" role="tab" data-toggle="tab">时间段设置</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-xs-3">第一自习室</td>
                                    <td class="col-xs-2">2</td>
                                    <td class="col-xs-2" style="padding-left: 40px!important;">3</td>
                                    <td class="col-xs-3"style="padding-left: 50px!important;">
                                        <a class="linkCcc" href="#sitDetail" aria-controls="char" role="tab" data-toggle="tab">座位信息</a>
                                        <a class="linkCcc" href="#time" aria-controls="char" role="tab" data-toggle="tab">时间段设置</a>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出添加楼宇窗口-->
                <div class="modal fade" id="addBuilding" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加楼宇</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">楼层：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">区域：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">座位数：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出修改员工窗口-->
                <div class="modal fade" id="reviseUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">地区：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">权限：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除用户警告窗口-->
                <div class="modal fade" id="deleteUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该用户？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-green btn-xs">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!--座位详情模块-->
            <div role="tabpanel" class="tab-pane" id="sitDetail">
                <div class="check-div form-inline">
                    <span href="#employee_task" aria-controls="employee_task" role="tab" data-toggle="tab" style="cursor: pointer;"><span class="glyphicon glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;返回上一页</span>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-6 ">
                            座位编码
                        </div>
                        <div class="col-xs-6 ">
                            座位名称
                        </div>

                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-6 ">
                                sad2345fas345533
                            </div>
                            <div class="col-xs-6">
                                王座
                            </div>

                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

            </div>
            <!--人员管理模块-->
            <div role="tabpanel" class="tab-pane" id="stud">
                <div class="check-div form-inline">
                    <div class="col-xs-5">
                        <input type="text" class=" form-control input-sm" placeholder="输入文字搜索" style="	!height: 40px!important;">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                    <div class="col-xs-4 col-lg-4  col-md-5" style="padding-right: 40px;text-align: right;float: right;">
                        <label for="daoru">导入人员信息表:&nbsp;</label>
                        <button class="btn btn-white btn-xs " id="daoru">选取文件 </button>
                        <button class="btn btn-white btn-xs ">导入 </button>
                    </div>

                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 ">
                            学号
                        </div>
                        <div class="col-xs-1 ">
                            姓名
                        </div>
                        <div class="col-xs-2">
                            院系
                        </div>
                        <div class="col-xs-2">
                            年年
                        </div>
                        <div class="col-xs-2 ">
                            学习时长
                        </div>
                        <div class="col-xs-2">
                            违约次数
                        </div>
                        <div class="col-xs-1">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2 ">
                                6426398978
                            </div>
                            <div class="col-xs-1">
                                邓超
                            </div>
                            <div class="col-xs-2">
                                计算机地区
                            </div>
                            <div class="col-xs-2">
                                2013年
                            </div>
                            <div class="col-xs-2">
                                15
                            </div>
                            <div class="col-xs-2">
                                2
                            </div>
                            <div class="col-xs-1">
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteObey">清除违约</button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出删除违约记录警告窗口-->
                <div class="modal fade" id="deleteObey" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该违约记录？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>--%>
        </div>
    </div>
</div>

<script>
    getAllEmployees();
    //员工管理模块---begin
    $("#employee_manager").click(function () {
        $("#rightContent .tab-content .tab-pane").removeClass("active");
        // var  aria = "."+$(this).attr("aria-controls");
        $("#rightContent .tab-content .employee").addClass("active");
        // //清空所有数据
        // $("#rightContent .tab-content .employee .data-div>.tablebody").empty();
    //    发送ajax请求获取所有员工数据并展示
        getAllEmployees();
    });
    /*获取所有职工的信息*/
    function getAllEmployees(){
        //清空所有数据
        $("#rightContent .tab-content .employee .data-div>.tablebody").empty();
        $.get("${pageContext.servletContext.contextPath}/getAllEmployees",function (data) {
            // console.log(data);
            $.each(data.data.employees,function (index,item) {
                // console.log(item.userName)
                let row = $("<div></div>").addClass("row");
                let id = $("<div></div>").addClass("col-xs-2").append(index+1);
                let userId = $("<div></div>").addClass("col-xs-2").append(item.userId);
                let userName = $("<div></div>").addClass("col-xs-2").append(item.userName);
                let password = $("<div></div>").addClass("col-xs-2").append(item.password);

                let btn_task = $("<button></button>").addClass("btn btn-primary btn_task btn-xs").attr("userId",item.userId).append("任务");
                let btn_modify = $("<button></button>").addClass("btn btn-success btn_modify btn-xs").attr("userId",item.userId).append("修改");
                let btn_delete = $("<button></button>").addClass("btn btn-danger btn_delete btn-xs").attr("userId",item.userId).append("删除");
                let btn_div = $("<div></div>").addClass("col-xs-2").append(btn_task).append("\n").append(btn_modify).append("\n").append(btn_delete).append("\n");
                    row.append(id)
                    .append(userId)
                    .append(userName)
                    .append(password)
                    .append(btn_div);
                $("#rightContent .tab-content .employee .data-div>.tablebody").append(row);
            })

        });
    }
    $("#addUser_modal_btn").click(function () {
    //    清除模态框中表单的内容
        $("#addUser_form #add_userId").val("");
        $("#addUser_form #add_userName").val("");
        $("#addUser_form #add_password").val("");

    //    弹出模态框
        $("#addUserModal").modal({
            backdrop:"static"
        });
    });
    /*增加员工*/
    $("#add_save_button").click(function () {
        $.post( "${pageContext.servletContext.contextPath}/saveEmployee", $( "#addUser_form" ).serialize(),function (data) {
            // console.log(data);
        //    关闭模态框
            $("#addUserModal").modal('hide');
        //    重新加载所有的员工
            getAllEmployees();
        });
    });
    //查看任务
    $(document).on("click",".btn_task",function(){
        $("#rightContent .tab-content .tab-pane").removeClass("active");
        $("#employee_task").addClass("active");
        let userId = $(this).attr("userId");
        //获取并显示任务
        adminGetAllTasksByUserId(userId);
    });
    function adminGetAllTasksByUserId(userId){
        $.get("${pageContext.servletContext.contextPath}/task/adminGetAllTasksByUserId?userId="+userId,function (data) {
            console.log(data);
            //清空以前的数据
            $("#rightContent .tab-content .employee_task .data-div>.tablebody").empty();
            $.each(data.data.taskList,function (index,item) {
                let row = $("<div></div>").addClass("row");
                let sortNum = $("<div></div>").addClass("col-xs-2").append(index+1);
                let user = $("<div></div>").addClass("col-xs-2").append(item.user.userName);
                let place = $("<div></div>").addClass("col-xs-2").append(item.place.placeName);
                let bottleType = $("<div></div>").addClass("col-xs-2").append(item.bottleType.bottleTypeName);
                let reagent = $("<div></div>").addClass("col-xs-2").append(item.reagent.reagentName);
                let finishTime = $("<div></div>").addClass("col-xs-2");
                let  time= item.finishTime;
                if (time == null){
                    time = "尚未完成"
                } else {
                    let date = new Date(time);
                    time =date.getFullYear()+"年"+(date.getMonth()+1)+"月"+date.getDate()+"日";
                }
                finishTime.append(time);
                row.append(sortNum)
                    .append(user)
                    .append(place)
                    .append(bottleType)
                    .append(reagent)
                    .append(finishTime);
                $("#rightContent .tab-content .employee_task .data-div>.tablebody").append(row);



            })
        })
    }
    //修改员工之数据回显
    $(document).on("click",".btn_modify",function(){
        let userId = $(this).attr("userId");
        $.get( "${pageContext.servletContext.contextPath}/user/getEmployeeByUserId?userId="+userId, function(msg) {
            console.log(msg);
            emp = msg.data.user;
            //    展示要修改的员工信息
            $("#employee_modify_userId").val(emp.userId);
            $("#employee_modify_userName").val(emp.userName);
            $("#employee_modify_password").val(emp.password);
            $("#employee_modify_id").val(emp.id);
            //    弹出模态框
            $("#modifyUserModal").modal({
                backdrop:"static"
            });
        });
    });
    //修改员工之保存到数据库
    $("#employee_modify_button").click(function () {
        $.post( "${pageContext.servletContext.contextPath}/user/updateEmployee", $( "#employee_modify_form" ).serialize(),function (data) {
            // console.log(data);
            //    关闭模态框
            $("#modifyUserModal").modal('hide');
            //    重新加载所有的员工
            getAllEmployees();
        });
    });

    //删除员工
    $(document).on("click",".btn_delete",function(){
        let userId = $(this).attr("userId");
        $("#employee_delete_button").attr("userId",userId);
        //弹出模态框
        $("#deleteUserModal").modal({
            backdrop:"static"
        });
    });
    //点击确定按钮删除员工
    $("#employee_delete_button").click(function () {
        let userId = $(this).attr("userId");
        $.get("${pageContext.servletContext.contextPath}/user/deleteEmployeeById?userId="+userId,function (data) {
            getAllEmployees();
        });
        //关闭模态框
        $("#deleteUserModal").modal('hide');
    });
    //员工管理模块---end

    //采集瓶类型管理模块---begin
    $("#bottleType_manager").click(function () {
        $("#rightContent .tab-content .tab-pane").removeClass("active");
        var  aria = "."+$(this).attr("aria-controls");
        $("#rightContent .tab-content "+aria).addClass("active");
        getAllBottleTypes();
    });
    //增加瓶子类型之弹出模态框
    $("#addBottleType_modal_btn").click(function () {
        //    清除模态框中表单的内容
        $("#addBottleType_form #add_bottleType").val("");
        //    弹出模态框
        $("#addBottleTypeModal").modal({
            backdrop:"static"
        });
    });
    //增加瓶子类型之保存至数据库
    $("#addBottleTye_save_button").click(function () {
        $.post("${pageContext.servletContext.contextPath}/bottleType/addBottleType",$("#addBottleType_form").serialize(),function (data) {
            //    关闭模态框
            $("#addBottleTypeModal").modal('hide');
            getAllBottleTypes();
        })
    });
    //修改瓶子类型之回显数据
    $(document).on("click",".btn_bottleType_modify",function(){
        let id = $(this).attr("id");
        $.get( "${pageContext.servletContext.contextPath}/bottleType/getBottleTypeById?id="+id, function(msg) {
            let bottleType = msg.data.bottleType;
            //    展示要修改的员工信息
            $("#bottleType_modify_id").val(bottleType.id);
            $("#bottleType_modify_name").val(bottleType.bottleTypeName);
            //    弹出模态框
            $("#modifyBottleTypeModal").modal({
                backdrop:"static"
            });
        });
    });
    //修改瓶子类型之修改
    $("#bottleType_modify_button").click(function () {
        $.post("${pageContext.servletContext.contextPath}/bottleType/modifyBottleType",$("#bottleType_modify_form").serialize(),function (data) {
            //    关闭模态框
            $("#modifyBottleTypeModal").modal('hide');
            //    重新加载所有的瓶子
            getAllBottleTypes();
        })
    });
    //删除瓶子类型之弹出模态框
    $(document).on("click",".btn_bottleType_delete",function(){
        let id = $(this).attr("id");
        $("#bottleType_delete_button").attr("did",id);
        //弹出模态框
        $("#deleteBottleTypeModal").modal({
            backdrop:"static"
        });
    });
    $("#bottleType_delete_button").click(function (data) {
        let id = $(this).attr("did");
        $.get("${pageContext.servletContext.contextPath}/bottleType/deleteBottleTypeById?id="+id,function (data) {
            $("#deleteBottleTypeModal").modal('hide');
            getAllBottleTypes();
        })
    });
    function getAllBottleTypes() {
        $("#rightContent .tab-content .bottleType .data-div>.tablebody").empty();
        $.get("${pageContext.servletContext.contextPath}/bottleType/getAllBottleTypes",function (data) {
            // console.log(data);
            $.each(data.data.bottleTypeList,function (index,item) {
                let row = $("<div></div>").addClass("row");
                let id = $("<div></div>").addClass("col-xs-4").append(index+1);
                let bottleTypeName = $("<div></div>").addClass("col-xs-4").append(item.bottleTypeName);
                let btn_modify = $("<button></button>").addClass("btn btn-success btn_bottleType_modify btn-xs").attr("id",item.id).append("修改");
                let btn_delete = $("<button></button>").addClass("btn btn-danger btn_bottleType_delete btn-xs").attr("id",item.id).append("删除");
                let btn_div = $("<div></div>").addClass("col-xs-4").append("\n").append(btn_modify).append("\n").append(btn_delete).append("\n");
                row.append(id)
                    .append(bottleTypeName)
                    .append(btn_div);
                $("#rightContent .tab-content .bottleType .data-div>.tablebody")
                    .append(row);
            })
        });
    }
    //试剂类型管理模块----begin
    $("#reagentType_manager").click(function () {
        $("#rightContent .tab-content .tab-pane").removeClass("active");
        var  aria = "."+$(this).attr("aria-controls");
        $("#rightContent .tab-content "+aria).addClass("active");
        getAllReagent();
    });
    //增加试剂类型之弹出模态框
    $("#addReagentType_modal_btn").click(function () {
        //    清除模态框中表单的内容
        $("#addReagentType_form #add_reagentType").val("");
        //    弹出模态框
        $("#addReagentTypeModal").modal({
            backdrop:"static"
        });
    });
    //增加试剂类型之保存至数据库
    $("#addReagentType_save_button").click(function () {
        $.post("${pageContext.servletContext.contextPath}/reagent/addReagent",$("#addReagentType_form").serialize(),function (data) {
            //    关闭模态框
            $("#addReagentTypeModal").modal('hide');
            getAllReagent();
        })
    });
    //修改试剂类型之回显数据
    $(document).on("click",".btn_reagent_modify",function(){
        let id = $(this).attr("id");
        $.get( "${pageContext.servletContext.contextPath}/reagent/getReagentById?id="+id, function(msg) {
            let reagent = msg.data.reagent;
            //    展示要修改的员工信息
            $("#reagentType_modify_id").val(reagent.id);
            $("#reagentType_modify_name").val(reagent.reagentName);
            //    弹出模态框
            $("#modifyReagentTypeModal").modal({
                backdrop:"static"
            });
        });
    });
    //修改试剂类型之修改
    $("#reagentType_modify_button").click(function () {
        $.post("${pageContext.servletContext.contextPath}/reagent/modifyReagent",$("#reagentType_modify_form").serialize(),function (data) {
            //    关闭模态框
            $("#modifyReagentTypeModal").modal('hide');
            //    重新加载所有的瓶子
            getAllReagent();
        })
    });
    //删除试剂类型之弹出模态框
    $(document).on("click",".btn_reagent_delete",function(){
        // getAllReagent();
        let id = $(".btn_reagent_delete").attr("id");
        $("#deleteReagentTypeModal #reagentType_delete_button").attr("did",id);
        alert(id);
        //弹出模态框
        $("#deleteReagentTypeModal").modal({
            backdrop:"static"
        });

    });
    $("#reagentType_delete_button").click(function (data) {
        let id = $(this).attr("did");
        $.ajax({
            url:'${pageContext.servletContext.contextPath}/reagent/deleteReagentById/'+id,
            type:'DELETE',
            success:function(data){
                $("#deleteReagentTypeModal").modal('hide');
                getAllReagent();
            }
        });
    });
    //获取所有试剂
    function getAllReagent() {
        $("#rightContent .tab-content .reagentType .data-div>.tablebody").empty();
        $.get("${pageContext.servletContext.contextPath}/reagent/getAllReagent",function (data) {
            console.log(data);
            $.each(data.data.reagentList,function (index,item) {
                let row = $("<div></div>").addClass("row");
                let id = $("<div></div>").addClass("col-xs-4").append(index+1);
                let reagentTypeName = $("<div></div>").addClass("col-xs-4").append(item.reagentName);
                let btn_modify = $("<button></button>").addClass("btn btn-success btn_reagent_modify btn-xs").attr("id",item.id).append("修改");
                let btn_delete = $("<button></button>").addClass("btn btn-danger btn_reagent_delete btn-xs").attr("id",item.id).append("删除");
                let btn_div = $("<div></div>").addClass("col-xs-4").append("\n").append(btn_modify).append("\n").append(btn_delete).append("\n");
                row.append(id)
                    .append(reagentTypeName)
                    .append(btn_div);
                $("#rightContent .tab-content .reagentType .data-div>.tablebody")
                    .append(row);
            })
        });
    }
    //试剂类型管理模块----end

    //地点管理模块---begin
    $("#place_manager").click(function () {
        $("#rightContent .tab-content .tab-pane").removeClass("active");
        var  aria = "."+$(this).attr("aria-controls");
        $("#rightContent .tab-content "+aria).addClass("active");
        getAllPlaces();
    });
    //增加地点之弹出模态框
    $("#addPlace_modal_btn").click(function () {
        //    清除模态框中表单的内容
        $("#addPlace_form #add_place").val("");
        $("#addPlace_form #add_latitudeOne").val("");
        $("#addPlace_form #add_longitudeOne").val("");
        $("#addPlace_form #add_latitudeTwo").val("");
        $("#addPlace_form #add_longitudeTwo").val("");
        //    弹出模态框
        $("#addPlaceModal").modal({
            backdrop:"static"
        });
    });
    //增加地点之保存至数据库
    $("#addPlace_save_button").click(function () {
        $.post("${pageContext.servletContext.contextPath}/place/addPlace",$("#addPlace_form").serialize(),function (data) {
            //    关闭模态框
            $("#addPlaceModal").modal('hide');
            getAllPlaces();
        })
    });
    //修改地点之回显数据
    $(document).on("click",".btn_place_modify",function(){
        let id = $(this).attr("id");
        $.get( "${pageContext.servletContext.contextPath}/place/getPlaceById?id="+id, function(msg) {
            console.log(msg);
            let place = msg.data.place;
            //    展示要修改的员工信息
            $("#place_modify_id").val(place.id);
            $("#place_modify_name").val(place.placeName);
            $("#place_modify_longitudeOne").val(place.longitudeOne);
            $("#place_modify_latitudeOne").val(place.latitudeOne);
            $("#place_modify_longitudeTwo").val(place.longitudeTwo);
            $("#place_modify_latitudeTwo").val(place.latitudeTwo);

            //    弹出模态框
            $("#modifyPlaceModal").modal({
                backdrop:"static"
            });
        });
    });
    //修改地点之修改
    $("#place_modify_button").click(function () {
        $.post("${pageContext.servletContext.contextPath}/place/modifyPlace",$("#place_modify_form").serialize(),function (data) {
            //    关闭模态框
            $("#modifyPlaceModal").modal('hide');
            //    重新加载所有的地点
            getAllPlaces();
        })
    });
    //删除地点之弹出模态框
    $(document).on("click",".btn_place_delete",function(){
        let id = $(this).attr("id");
        $("#place_delete_button").attr("did",id);
        //弹出模态框
        $("#deletePlaceModal").modal({
            backdrop:"static"
        });
    });
    $("#place_delete_button").click(function (data) {
        let id = $(this).attr("did");
        $.get("${pageContext.servletContext.contextPath}/place/deletePlaceById?id="+id,function (data) {
            $("#deletePlaceModal").modal('hide');
            getAllPlaces();
        })
    });
    function getAllPlaces() {
        $("#rightContent .tab-content .place .data-div>.tablebody").empty();
        $.get("${pageContext.servletContext.contextPath}/place/getAllPlaces",function (data) {
            // console.log(data);
            $.each(data.data.placeList,function (index,item) {
                let row = $("<div></div>").addClass("row");
                let id = $("<div></div>").addClass("col-xs-4").append(index+1);
                let placeName = $("<div></div>").addClass("col-xs-4").append(item.placeName);
                let btn_modify = $("<button></button>").addClass("btn btn-success btn_place_modify btn-xs").attr("id",item.id).append("修改");
                let btn_delete = $("<button></button>").addClass("btn btn-danger btn_place_delete btn-xs").attr("id",item.id).append("删除");
                let btn_div = $("<div></div>").addClass("col-xs-4").append("\n").append(btn_modify).append("\n").append(btn_delete).append("\n");
                row.append(id)
                    .append(placeName)
                    .append(btn_div);
                $("#rightContent .tab-content .place .data-div>.tablebody")
                    .append(row);
            })
        });
    }

    //任务管理模块---begin
    $("#task_manager").click(function () {
        $("#rightContent .tab-content .tab-pane").removeClass("active");
        // var  aria = "."+$(this).attr("aria-controls");
        $("#rightContent .tab-content .task").addClass("active");

        //    发送ajax请求获取所有员工数据并展示
        getAllTasks();
    });
    /*获取所有任务的信息*/
    function getAllTasks(){
        //清空所有数据
        $("#rightContent .tab-content .task .data-div>.tablebody").empty();
        $.get("${pageContext.servletContext.contextPath}/task/getAllTasks",function (data) {
            console.log(data);
            $.each(data.data.taskList,function (index,item) {
                // console.log(item.userName)
                let row = $("<div></div>").addClass("row");
                let id = $("<div></div>").addClass("col-xs-2").append(index+1);
                let placeName = $("<div></div>").addClass("col-xs-2").append(item.place.placeName);
                let reagent = $("<div></div>").addClass("col-xs-2").append(item.reagent.reagentName);
                let bottleType = $("<div></div>").addClass("col-xs-2").append(item.bottleType.bottleTypeName);
                let user = $("<div></div>").addClass("col-xs-2").append(item.user.userName);
                let btn_modify = $("<button></button>").addClass("btn btn-success btn_task_modify btn-xs").attr("did",item.id).append("修改");
                let btn_delete = $("<button></button>").addClass("btn btn-danger btn_task_delete btn-xs").attr("did",item.id).append("删除");
                let btn_div = $("<div></div>").addClass("col-xs-2").append(btn_modify).append("\n").append(btn_delete).append("\n");
                row.append(id)
                    .append(placeName)
                    .append(reagent)
                    .append(bottleType)
                    .append(user)
                    .append(btn_div);
                $("#rightContent .tab-content .task .data-div>.tablebody").append(row);
            })

        });
    }
    //添加任务之弹出模态框
    $("#addTask_modal_btn").click(function () {
      /*  //    清除模态框中表单的内容
        $("#addUser_form #add_userId").val("");
        $("#addUser_form #add_userName").val("");
        $("#addUser_form #add_password").val("");*/
        //发送请求获取采样地点、瓶子类型、试剂类型、所有员工
        $.get("${pageContext.servletContext.contextPath}/task/getAllInfo",function (data) {
            console.log(data);
            //清空之前的内容
            $("#addTaskModal #addTask_form .form-control").empty();
            //回显地点
            let place_option1 = $("<option></option>").attr("value",-1).append("---请选择---");
            $("#add_task_placeName").append(place_option1);
            $.each(data.data.places,function (index,item) {
               let option2 = $("<option></option>").attr("value",item.id).append(item.placeName);
                $("#add_task_placeName").append(option2);
            });
            //回显瓶子类型
            let bottleType_option1 = $("<option></option>").attr("value",-1).append("---请选择---");
            $("#add_task_bottleTypeName").append(bottleType_option1);
            $.each(data.data.bottleTypes,function (index,item) {
                let option2 = $("<option></option>").attr("value",item.id).append(item.bottleTypeName);
                $("#add_task_bottleTypeName").append(option2);
            });
            //回显试剂类型
            let reagent_option1 = $("<option></option>").attr("value",-1).append("---请选择---");
            $("#add_task_reagentName").append(reagent_option1);
            $.each(data.data.reagents,function (index,item) {

                let option2 = $("<option></option>").attr("value",item.id).append(item.reagentName);
                $("#add_task_reagentName").append(option2);
            });
            //回显员工
            let user_option1 = $("<option></option>").attr("value","-1").append("---请选择---");
            $("#add_task_userName").append(user_option1);
            $.each(data.data.employees,function (index,item) {
                let option2 = $("<option></option>").attr("value",item.userId).append(item.userName);
                $("#add_task_userName").append(option2);
            });
            //    弹出模态框
            $("#addTaskModal").modal({
                backdrop:"static"
            });
        });

    });
    // 添加任务
    $("#addTask_save_button").click(function () {
        $.post( "${pageContext.servletContext.contextPath}/task/addTask", $( "#addTask_form" ).serialize(),function (data) {
            // console.log(data);
            //    关闭模态框
            $("#addTaskModal").modal('hide');
            //    重新加载所有的员工
            getAllTasks();
        });
    });
    //修改任务之数据回显
    $(document).on("click",".btn_task_modify",function(){
        let did = $(this).attr("did");
        $.get( "${pageContext.servletContext.contextPath}/task/getTaskById?id="+did, function(data) {
            console.log(data);
            let currentTask = data.data.currentTask;
            //清空之前的内容
            $("#modifyTaskModal #task_modify_form .form-control").empty();
            $("#task_modify_id").val(did);
            //回显地点
            let option2 = null;
            $.each(data.data.places,function (index,item) {
               if (currentTask.place.id == item.id){
                   option2= $("<option></option>")
                       .attr("value",item.id)
                       .attr("selected",true)
                       .append(item.placeName);
               }else {
                  option2 = $("<option></option>")
                       .attr("value",item.id)
                       .append(item.placeName);
               }
                $("#modify_task_placeName").append(option2);
            });
            //回显试剂类型
            $.each(data.data.reagents,function (index,item) {
                if (currentTask.reagent.id == item.id){
                    option2= $("<option></option>")
                        .attr("value",item.id)
                        .attr("selected",true)
                        .append(item.reagentName);
                }else {
                    option2 = $("<option></option>")
                        .attr("value",item.id)
                        .append(item.reagentName);
                }
                $("#modify_task_reagentName").append(option2);
            });
            //回显瓶子类型
            $.each(data.data.bottleTypes,function (index,item) {
                if (currentTask.bottleType.id == item.id){
                    option2= $("<option></option>")
                        .attr("value",item.id)
                        .attr("selected",true)
                        .append(item.bottleTypeName);
                }else {
                    option2 = $("<option></option>")
                        .attr("value",item.id)
                        .append(item.bottleTypeName);
                }
                $("#modify_task_bottleTypeName").append(option2);
            });
            //回显采样人
            let user_option1 = $("<option></option>").attr("value","-1").append("---暂不分配---");
            $("#modify_task_userName").append(user_option1);
               if (currentTask.user == null){
                   $.each(data.data.employees,function (index,item) {
                       let option = $("<option></option>").attr("value",item.userId).append(item.userName);
                       $("#modify_task_userName").append(option);
                   });
               } else {
                   $.each(data.data.employees,function (index,item) {
                       if (currentTask.user.userId == item.userId){
                           option2= $("<option></option>")
                               .attr("value",item.id)
                               .attr("selected",true)
                               .append(item.userName);
                       }else {
                           option2 = $("<option></option>")
                               .attr("value",item.id)
                               .append(item.userName);
                       }
                       $("#modify_task_userName").append(option2);
               });
               }

            //    弹出模态框
            $("#modifyTaskModal").modal({
                backdrop:"static"
            });
        });
    });
    //修改任务之保存到数据库
    $("#task_modify_button").click(function () {
        $.post( "${pageContext.servletContext.contextPath}/task/ModifyTask", $( "#task_modify_form" ).serialize(),function (data) {
            // console.log(data);
            //    关闭模态框
            $("#modifyTaskModal").modal('hide');
            //    重新加载所有的员工
            getAllTasks();
        });
    });
    //删除任务之弹出模态框
    $(document).on("click",".btn_task_delete",function(){
        let did = $(this).attr("did");
        $("#task_delete_button").attr("did",did);
        //弹出模态框
        $("#deleteTaskModal").modal({
            backdrop:"static"
        });
    });
    //删除任务
    $("#task_delete_button").click(function (data) {
        let id = $(this).attr("did");
        $.get("${pageContext.servletContext.contextPath}/task/deleteTaskById?id="+id,function (data) {
            $("#deleteTaskModal").modal('hide');
            getAllTasks();
        })
    });

</script>
<!-- 滑块js -->
<!--	<script type="text/javascript">
        scale = function(btn, bar, title, unit) {
                this.btn = document.getElementById(btn);
                this.bar = document.getElementById(bar);
                this.title = document.getElementById(title);
                this.step = this.bar.getElementsByTagName("div")[0];
                this.unit = unit;
                this.init();
        };
        scale.prototype = {
                init: function() {
                        var f = this,
                                g = document,
                                b = window,
                                m = Math;
                        f.btn.onmousedown = function(e) {
                                var x = (e || b.event).clientX;
                                var l = this.offsetLeft;
//						var max = f.bar.offsetWidth - this.offsetWidth;
                                var max = f.bar.offsetWidth-20 ;
                                g.onmousemove = function(e) {
                                        var thisX = (e || b.event).clientX;
                                        var to = m.min(max, m.max(-2, l + (thisX - x)));
                                        f.btn.style.left = to+ 'px';
                                        f.ondrag(m.round(m.max(0, to / max) * 100), to);
                                        b.getSelection ? b.getSelection().removeAllRanges() : g.selection.empty();
                                };
                                g.onmouseup = new Function('this.onmousemove=null');
                        };
                },
                ondrag: function(pos, x) {
                        this.step.style.width = Math.max(0, x) +2+ 'px';
                        this.title.innerHTML = pos / 10 + this.unit + "";
                }
        }
        new scale('btn0', 'bar0', 'title0', "分钟");
        new scale('btn1', 'bar1', 'title1', "分钟");
        new scale('btn2', 'bar2', 'title2', "天");
        new scale('btn3', 'bar3', 'title3', "次");
</script>
-->
<script src="${pageContext.servletContext.contextPath}/static/background/js/jquery.nouislider.js"></script>

<!-- this page specific inline scripts -->
<script>
    //min/max slider
    function huadong(my, unit, def, max) {
        $(my).noUiSlider({
            range: [0, max],
            start: [def],
            handles: 1,
            connect: 'upper',
            slide: function() {
                var val = Math.floor($(this).val());
                $(this).find(".noUi-handle").text(
                    val + unit
                );
                console.log($(this).find(".noUi-handle").parent().parent().html());
            },
            set: function() {
                var val = Math.floor($(this).val());
                $(this).find(".noUi-handle").text(
                    val + unit
                );
            }
        });
        $(my).val(def, true);
    }
    huadong('.slider-minmax1', "分钟", "5", 30);
    huadong('.slider-minmax2', "分钟", "6", 15);
    huadong('.slider-minmax3', "分钟", "10", 60);
    huadong('.slider-minmax4', "次", "2", 10);
    huadong('.slider-minmax5', "天", "3", 7);
    huadong('.slider-minmax6', "天", "8", 10);
</script>

</body>

</html>