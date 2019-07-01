<%@ page import="java.util.List" %>
<%@ page import="bean.Goods" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/20
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Checkout</title>
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
<script language="JavaScript">
    /*
      购物车物品数量的增加与减少
     */
    function  fun1(f,row) {
        var num = document.getElementById(row).innerText;
        var i ="total_price"+ (parseInt(row)-1);
        document.getElementById(i).innerText = parseInt(f)*(parseInt(num)+1);
    }
    function  fun2(f,row) {
        var num = document.getElementById(row).innerText;
        var i ="total_price"+ (parseInt(row)-1);
        document.getElementById(i).innerText = parseInt(f)*(parseInt(num)-1);
    }
    /*
        计算总价格
     */
    function fun3(size) {
        var total_price = 0;
        for(i = 0 ; i<size; i++){
            total_price += parseInt(document.getElementById("total_price"+i).innerText);
        }
        var num = fun4(size);
        window.location="PayAction.action?num="+num;
    }
    function fun4(size){
        var num = "";
        for(i=0;i<size; i++){
            num += document.getElementById(i+1).innerText +",";
        }
        return num;
    }
</script>
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
                    <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href="register.jsp">注册</a></li>
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
                <h1><a href="index.jsp">小米商城</a></h1>
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
                        <li class="active"><a href="index.action" class="act">首页</a></li>
                        <!-- Mega Menu -->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">手机，穿戴系列<b class="caret"></b></a>
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
                                                <li><a href="SingleGoodsAction.action?goodsname=${mobilephone.goods_name}">${mobilephone.goods_name}</a></a></li>
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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">家居系列<b class="caret"></b></a>
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
                </nav>
            </div>
            <div class="logo-nav-right">
                <div class="search-box">
                    <div id="sb-search" class="sb-search">
                        <form>
                            <input class="sb-search-input" placeholder="输入想查找的商品..." type="search" id="search">
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
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">购物车</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- checkout -->
<%
    List<Goods> list = (List<Goods>) request.getSession().getAttribute("check_goods");
%>
<div class="checkout">
    <div class="container">
        <h3 class="animated wow slideInLeft" data-wow-delay=".5s"> <span>小米，为发烧而生</span></h3>
        <div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
            <table class="timetable_sub" id="table_check">
                <thead>
                <tr>
                    <th>序号</th>
                    <th>商品</th>
                    <th>数量</th>
                    <th>商品名称</th>
                    <th>单价</th>
                    <th>总价</th>
                    <th>删除</th>
                </tr>
                </thead>
  <%
      for(int i=0 ; i<list.size();i++){
  %>
                <tr class="rem<%=i+1%>">
                    <td class="invert"><%=i+1%></td>
                    <td class="invert-image"><a href="single.jsp"><img src="<%=list.get(i).getFileadress()%>" style="height: 100px; width: 100px" alt=" " class="img-responsive" /></a></td>
                    <td class="invert">
                        <div class="quantity">
                            <div class="quantity-select">
                                <div class="entry value-minus" onclick="fun2(<%=list.get(i).getPrice()%>,<%=i+1%>)">&nbsp;</div>
                                <div class="entry value" id="<%=i+1%>"><span>1</span></div>
                                <div class="entry value-plus active" onclick="fun1(<%=list.get(i).getPrice()%>,<%=i+1%>)">&nbsp;</div>
                            </div>
                        </div>
                    </td>
                    <td class="invert"><%=list.get(i).getGoods_name()%></td>
                    <td class="invert"><%=list.get(i).getPrice()%></td>
                    <td class="invert" id="total_price<%=i%>"><%=list.get(i).getPrice()%></td>
                    <td class="invert">
                        <div class="rem">
                            <a href="CheckoutAction2.action?checkname=<%=list.get(i).getGoods_name()%>"><div class="close<%=i+1%>"></div></a>
                        </div>
                        <script>
                            $(document).ready(function(c) {
                                $('.close<%=i+1%>').on('click', function(c){
                                    $('.rem<%=i+1%>').fadeOut('slow', function(c){
                                     $('.rem<%=i+1%>').remove();
                                    });
                                });
                             });
                        </script>
                    </td>
                </tr>
                <%
                    }
                %>
<%--                <tr class="rem1">
                    <td class="invert">参数递增</td>
                    <td class="invert-image"><a href="single.jsp"><img src="images/30.jpg" alt=" " class="img-responsive" /></a></td>
                    <td class="invert">
                        <div class="quantity">
                            <div class="quantity-select">
                                <div class="entry value-minus">&nbsp;</div>
                                <div class="entry value"><span>1</span></div>
                                <div class="entry value-plus active">&nbsp;</div>
                            </div>
                        </div>
                    </td>
                    <td class="invert">参数</td>
                    <td class="invert">参数</td>
                    <td class="invert">参数</td>
                    <td class="invert">
                        <div class="rem">
                            <div class="close2"> </div>
                        </div>
                        <script>$(document).ready(function(c) {
                            $('.close2').on('click', function(c){
                                $('.rem2').fadeOut('slow', function(c){
                                    $('.rem2').remove();
                                });
                            });
                        });
                        </script>
                    </td>
                </tr>
                <tr class="rem1">
                    <td class="invert">参数递增</td>
                    <td class="invert-image"><a href="single.jsp"><img src="images/..." alt=" " class="img-responsive" /></a></td>
                    <td class="invert">
                        <div class="quantity">
                            <div class="quantity-select">
                                <div class="entry value-minus">&nbsp;</div>
                                <div class="entry value"><span>1</span></div>
                                <div class="entry value-plus active">&nbsp;</div>
                            </div>
                        </div>
                    </td>
                    <td class="invert">参数</td>
                    <td class="invert">参数</td>
                    <td class="invert">参数</td>
                    <td class="invert">
                        <div class="rem">
                            <div class="close3"> </div>
                        </div>
                        <script>$(document).ready(function(c) {
                            $('.close3').on('click', function(c){
                                $('.rem3').fadeOut('slow', function(c){
                                    $('.rem3').remove();
                                });
                            });
                        });
                        </script>
                    </td>
                </tr>--%>
                <!--quantity-->
                <script>
                    $('.value-plus').on('click', function(){
                        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
                        divUpd.text(newVal);
                    });

                    $('.value-minus').on('click', function(){
                        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
                        if(newVal>=1) divUpd.text(newVal);
                    });
                </script>
                <!--quantity-->
            </table>
        </div>
        <%--        <div class="checkout-left">
                   <div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
                      <div><h4 onclick="fun3()">结算</h4></div>
                      <ul>
                           <li>参数产品1 <i>-</i> <span>价格参数</span></li>
                           <li>Product2 <i>-</i> <span>$290.00 </span></li>
                           <li>Product3 <i>-</i> <span>$299.00 </span></li>
                           &lt;%&ndash;<li>总价格<i>-</i> <span>$15.00</span></li>&ndash;%&gt;
                           <li>总价格<i>-</i> <span>$854.00</span></li>
                       </ul>
                   </div>--%>
            <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s" onclick="fun3(<%=list.size()%>)">
                <a href="#"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>提交</a>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //checkout -->
<!-- footer -->
<%--
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
--%>
<!-- //footer -->
</body>
</html>
