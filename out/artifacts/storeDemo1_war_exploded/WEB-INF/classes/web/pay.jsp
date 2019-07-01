<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/20
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>支付</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="js/simpleCart.min.js"> </script>
    <!-- cart -->
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
    <!-- for bootstrap working -->
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- animation-effect -->
    <link href="css/animate.min.css" rel="stylesheet">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!-- //animation-effect -->
</head>

<body>
<!-- header -->
<div class="header">
    <div class="container">
        <div class="header-grid">
            <div class="header-grid-left animated wow slideInLeft" data-wow-delay=".5s">
                <ul>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><c:out value="${username}"></c:out></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><c:out value="${phone}"></c:out></li>
                    <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="login.jsp">登录</a></li>
                    <li class="active"><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href="register.jsp">注册</a></li>
                </ul>
            </div>
            <div class="header-grid-right animated wow slideInRight" data-wow-delay=".5s">
                <ul class="social-icons">
                    <li><a href="#" class="facebook"></a></li>
                    <li><a href="#" class="twitter"></a></li>
                    <li><a href="#" class="g"></a></li>
                    <li><a href="#" class="instagram"></a></li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="logo-nav">
            <div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
                <h1><a href="index.jsp">电子商城<span></span></a></h1>
            </div>
            <div class="logo-nav-left1">
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav">
                            <li><a href="index.action">首页</a></li>
                            <!-- Mega Menu -->
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">手机，穿戴系列 <b class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>小米手机</h6>
                                                <c:forEach items="${小米手机}" var="mobilephone">
                                                    <li><a href="SingleGoodsAction.action?goodsname=${mobilephone.goods_name}">${mobilephone.goods_name}</a></li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>红米手机</h6>
                                                <c:forEach items="${红米手机}" var="mobilephone">
                                                    <li><a href="SingleGoodsAction.action?goodsname=${mobilephone.goods_name}">${mobilephone.goods_name}</a></li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>穿戴</h6>
                                                <c:forEach items="${手环手表}" var="mobilephone">
                                                    <li><a href="SingleGoodsAction.action?goodsname=${mobilephone.goods_name}">${mobilephone.goods_name}</a></li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">家居系列 <b class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>电视</h6>
                                                <c:forEach items="${电视}" var="mobilephone">
                                                    <li><a href="SingleGoodsAction.action?goodsname=${mobilephone.goods_name}">${mobilephone.goods_name}</a></li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>笔记本</h6>
                                                <c:forEach items="${笔记本}" var="mobilephone">
                                                    <li><a href="SingleGoodsAction.action?goodsname=${mobilephone.goods_name}">${mobilephone.goods_name}</a></li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>路由器</h6>
                                                <c:forEach items="${路由器}" var="mobilephone">
                                                    <li><a href="SingleGoodsAction.action?goodsname=${mobilephone.goods_name}">${mobilephone.goods_name}</a></li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li><a href="ProductAction.action">更多</a></li>
                            <li><a href="mail.jsp">反馈</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="logo-nav-right">
                <div class="search-box">
                    <div id="sb-search" class="sb-search">
                        <form>
                            <input class="sb-search-input" placeholder="Enter your search term..." type="search" id="search">
                            <input class="sb-search-submit" type="submit" value="">
                            <span class="sb-icon-search"> </span>
                        </form>
                    </div>
                </div>
                <!-- search-scripts -->
                <script src="js/classie.js"></script>
                <script src="js/uisearch.js"></script>
                <script>
                    new UISearch( document.getElementById( 'sb-search' ) );
                </script>
                <!-- //search-scripts -->
            </div>
            <div class="header-right">
                <div class="cart box_1">
                    <a href="checkout.jsp">
                        <h3> <div class="total">
                            <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
                            <img src="images/bag.png" alt="" />
                        </h3>
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">购物车</a></p>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //header -->
<!-- breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
            <li class="active">选择银行</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- register -->
<%
    String num = request.getParameter("num");
%>
<form action="PayAction_0.action" method="post">
    <table width="60%" align="center" style="border-collapse:separate; border-spacing:10px 20px";>
        <tr><td><br/></td></tr>
        <tr>
            <td>请您选择在线支付银行</td>
        </tr>
        <tr>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBCHINA-NET"><img src="images/bank_img/cmbc.bmp"></td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ICBC-NET"><img src="images/bank_img/gongShang.bmp"></td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ABC-NET"><img src="images/bank_img/abc.bmp"></td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CCB-NET"><img src="images/bank_img/ccb.bmp"></td>
        </tr>
        <tr>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBC-NET"><img src="images/bank_img/cmbc.bmp"></td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CEB-NET" ><img src="images/bank_img/guangda.bmp"></td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="BOCO-NET"><img src="images/bank_img/bcc.bmp"></td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="SDB-NET"><img src="images/bank_img/sfz.bmp"></td>
        </tr>
        <tr>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="BCCB-NET"><img src="images/bank_img/bj.bmp"></td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CIB-NET"><img src="images/bank_img/cib.bmp"></td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="SPDB-NET"><img src="images/bank_img/shpd.bmp"></td>
            <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ECITIC-NET"><img src="images/bank_img/zx.bmp"></td>
        </tr>
        <tr><td><br/></td></tr>
        <tr>
            <td><INPUT TYPE="submit" value="确定支付"></td>
        </tr>
    </table>
</form>
<!-- //register -->

</body>
</html>
