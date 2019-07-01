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
    <title>Register</title>
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
                <h1><a href="index.jsp">小米商城 <span></span></a></h1>
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
            <li class="active">注册页面</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- register -->
<div class="register">
    <div class="container">
        <h3 class="animated wow zoomIn" data-wow-delay=".5s">注册</h3>
        <p class="est animated wow zoomIn" data-wow-delay=".5s">小米，为发烧而生</p>
        <div class="login-form-grids">
            <h5 class="animated wow slideInUp" data-wow-delay=".5s">注册信息</h5>
            <form action="registesAction.action" method="post" class="animated wow slideInUp" data-wow-delay=".5s">
                <input type="text" name="customer.name" placeholder="姓名..." required=" " >
                <input type="text" name="customer.username" placeholder="用户名..." required=" " >
                <input type="password" name="customer.password" placeholder="密码..." required=" " >
                <input type="text" name="customer.phone" placeholder="电话号码..." required=" ">
                <br>
                <input type="email" name="customer.email" placeholder="邮箱地址..." required=" " >
                <br>
                <input type="text" name="customer.address" placeholder="收件地址..." required=" ">
                <br>
                <input type="text" name="customer.money_account" placeholder="账户账号..." required=" " >
                <input type="submit" value="注册">
            <!--
            <div class="register-check-box animated wow slideInUp" data-wow-delay=".5s">
            <div class="check">
                  <label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>订阅通讯</label>
              </div>

            </div>
            -->
            </form>
            <%--<form class="animated wow slideInUp" data-wow-delay=".5s">--%>
            <%--<h6 class="animated wow slideInUp" data-wow-delay=".5s">Login information</h6>--%>
                <%--<input type="email" placeholder="邮箱地址..." required=" " >--%>
                <%--<input type="text" placeholder="收件地址..." required=" ">--%>
                <%--<input type="text" placeholder="账户账号..." required=" " >--%>
<%--                <div class="register-check-box">
                    <div class="check">
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>I accept the terms and conditions</label>
                    </div>
                </div>--%>
                <%--<input type="submit" value="注册">--%>
            <%--</form>--%>
        </div>
        <div class="register-home animated wow slideInUp" data-wow-delay=".5s">
            <a href="index.jsp">首页</a>
        </div>
    </div>
</div>
<!-- //register -->
<!-- footer -->
<!--
<div class="footer">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".5s">
                <h3>About Us</h3>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse.<span>Excepteur sint occaecat cupidatat
						non proident, sunt in culpa qui officia deserunt mollit.</span></p>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".6s">
                <h3>Contact Info</h3>
                <ul>
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>1234k Avenue, 4th block, <span>New York City.</span></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 567</li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".7s">
                <h3>Flickr Posts</h3>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/15.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/16.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/15.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/16.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/15.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/16.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".8s">
                <h3>Blog Posts</h3>
                <div class="footer-grid-sub-grids">
                    <div class="footer-grid-sub-grid-left">
                        <a href="single.html"><img src="images/9.jpg" alt=" " class="img-responsive" /></a>
                    </div>
                    <div class="footer-grid-sub-grid-right">
                        <h4><a href="single.html">culpa qui officia deserunt</a></h4>
                        <p>Posted On 25/3/2016</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="footer-grid-sub-grids">
                    <div class="footer-grid-sub-grid-left">
                        <a href="single.html"><img src="images/10.jpg" alt=" " class="img-responsive" /></a>
                    </div>
                    <div class="footer-grid-sub-grid-right">
                        <h4><a href="single.html">Quis autem vel eum iure</a></h4>
                        <p>Posted On 25/3/2016</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="footer-logo animated wow slideInUp" data-wow-delay=".5s">
            <h2><a href="index.html">Best Store <span>shop anywhere</span></a></h2>
        </div>
        <div class="copy-right animated wow slideInUp" data-wow-delay=".5s">
            <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        </div>
    </div>
</div>
-->
<!-- //footer -->
</body>
</html>
