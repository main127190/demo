<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<!DOCTYPE html>
<html style="height: 100%">
<head>
    <title>系统登入</title>
    <meta name="keywords" content="引用的easyUI框架">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <%@ include file="/commons/basejs.jsp" %>
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/style/css/login.css?v=201612202107" />
    <script type="text/javascript" src="${staticPath }/static/login.js?v=20170115" charset="utf-8"></script>
</head>
<body onkeydown="enterlogin();">
<div class="top_div" ></div>
<div class="top_center" >
<div style="background: rgb(255, 255, 255); margin: auto ; border: 1px solid rgb(231, 231, 231);
border-image:none;width:400px;text-align: center;position:absolute;top: 50%;
                left:50%;margin-left: -200px; ">
    <form method="post" id="loginform">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <%--<div style="width: 165px; height: 96px; position: absolute;">--%>
            <%--<div class="tou"></div>--%>
            <%--<div class="initial_left_hand" id="left_hand"></div>--%>
            <%--<div class="initial_right_hand" id="right_hand"></div>--%>
        <%--</div>--%>
        <P style="padding: 30px 0px 10px; position: relative;">
            <span class="u_logo"></span>
            <input class="ipt" type="text" name="username" placeholder="请输入用户名或邮箱"/>
        </P>
        <P style="position: relative;">
            <span class="p_logo"></span>
            <input class="ipt" id="password" type="password" name="password" placeholder="请输入密码"/>
        </P>
        <P style="padding: 10px 0px 10px; position: relative;">
            <input class="captcha" type="text" name="captcha" placeholder="请输入验证码"/>
            <img id="captcha" alt="验证码" src="${path }/captcha.jpg" data-src="${path }/captcha.jpg?t=" style="vertical-align:middle;border-radius:4px;width:94.5px;height:35px;cursor:pointer;">
        </P>
        <P style="position: relative;text-align: left;">
            <input class="rememberMe" type="checkbox" name="rememberMe" value="1" checked style="vertical-align:middle;margin-left:40px;height:20px;"/> 记住密码
        </P>
        <div style="height: 50px; line-height: 50px; margin-top: 10px;border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
            <P style="margin: 0px 35px 20px 45px;">
                <%--<span style="float: left;">--%>
                    <%--&lt;%&ndash;<a style="color: rgb(204, 204, 204);" href="javascript:;">忘记密码?</a>&ndash;%&gt;--%>
                <%--</span>--%>
                <%--<span style="float: right;">--%>
                    <%--<a style="color: rgb(204, 204, 204); margin-right: 10px;" href="javascript:;">注册</a>--%>
                    <button  style="background: rgb(0, 142, 173); padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152);
                     border-image: none; color: rgb(255, 255, 255);width: 80%;
                      font-weight: bold;" href="javascript:;" onclick="submitForm()">登&nbsp;&nbsp;&nbsp;&nbsp;录</button>
                <%--</span>--%>
            </P>
        </div>
    </form>
</div>
</div>
<div class="top_bottom" ></div>
</body>
</html>
