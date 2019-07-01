<%@ page import="java.util.List" %>
<%@ page import="bean.Goods" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/20
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Products</title>
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
                            <li class="dropdown active">
                                <a href="#" class="dropdown-toggle act" data-toggle="dropdown">手机，穿戴系列 <b class="caret"></b></a>
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
                            <input class="sb-search-input" placeholder="输入想查找的产品..." type="search" id="search">
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
            <li class="active">商品界面</li>
        </ol>
    </div>
</div>
<div class="products">
    <div class="container">
        <div class="col-md-4 products-left">
            <div class="filter-price animated wow slideInUp" data-wow-delay=".5s">
                <h3>热门商品</h3>
                <ul class="dropdown-menu1">
                    <li><a href="">
                        <div id="slider-range"></div>
                        <input type="text" id="amount" style="border: 0" />
                    </a></li>
                </ul>
                <script type='text/javascript'>//<![CDATA[
                $(window).load(function(){
                    $( "#slider-range" ).slider({
                        range: true,
                        min: 0,
                        max: 100000,
                        values: [ 20000, 80000 ],
                        slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
                        }
                    });
                    $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );


                });//]]>
                </script>
                <script type="text/javascript" src="js/jquery-ui.min.js"></script>
                <!---->
            </div>
            <div class="categories animated wow slideInUp" data-wow-delay=".5s">
                <h3>商品类别</h3>
                <ul class="cate">
                    <li><a href="products.jsp">热门</a> <span>(15)</span></li>
                    <li><a href="products.jsp">小米手机</a> <span>(16)</span></li>
                    <ul>
                        <c:forEach items="${小米手机}" var="mobilephone">
                            <li><a href="SingleGoodsAction.action?goodsname=${mobilephone.goods_name}">${mobilephone.goods_name}</a></li>
                        </c:forEach>
                    </ul>
                    <li><a href="products.jsp">红米手机</a> <span>(15)</span></li>
                    <ul>
                        <c:forEach items="${红米手机}" var="mobilephone">
                            <li><a href="SingleGoodsAction.action?goodsname=${mobilephone.goods_name}">${mobilephone.goods_name}</a></li>
                        </c:forEach>
                    </ul>
                </ul>
            </div>
            <div class="new-products animated wow slideInUp" data-wow-delay=".5s">
                <h3>新产品</h3>
                <div class="new-products-grids">
                    <div class="new-products-grid">
                        <div class="new-products-grid-left">
                            <a href="SingleGoodsAction.action?goodsname=小米8"><img src="images/mi8.jpg" alt=" " class="img-responsive" /></a>
                        </div>
                        <div class="new-products-grid-right">
                            <h4><a href="SingleGoodsAction.action?goodsname=小米8">小米8</a></h4>
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="simpleCart_shelfItem new-products-grid-right-add-cart">
                                <p> <span class="item_price">¥2699</span><a class="item_add" href="#">加入购物车</a></p>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="new-products-grid">
                        <div class="new-products-grid-left">
                            <a href="SingleGoodsAction.action?goodsname=小米8 SE"><img src="images/03.jpg" alt=" " class="img-responsive" /></a>
                        </div>
                        <div class="new-products-grid-right">
                            <h4><a href="SingleGoodsAction.action?goodsname=小米8 SE">小米8 SE</a></h4>
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="simpleCart_shelfItem new-products-grid-right-add-cart">
                                <p> <span class="item_price">¥1799</span><a class="item_add" href="#">加入购物车</a></p>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="new-products-grid">
                        <div class="new-products-grid-left">
                            <a href="SingleGoodsAction.action?goodsname=小米游戏本"><img src="images/11.jpg" alt=" " class="img-responsive" /></a>
                        </div>
                        <div class="new-products-grid-right">
                            <h4><a href="SingleGoodsAction.action?goodsname=小米游戏本">小米游戏本</a></h4>
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="simpleCart_shelfItem new-products-grid-right-add-cart">
                                <p> <span class="item_price">¥5999</span><a class="item_add" href="#">加入购物车</a></p>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <div class="men-position animated wow slideInUp" data-wow-delay=".5s">
                <a href="SingleGoodsAction.action?goodsname=小米MAX 3"><img src="images/027.jpg" alt=" " class="img-responsive" /></a>
                <div class="men-position-pos">
                    <h4>最新产品</h4>
                    <h5><span>小米MAX 3</span> 巨无霸级全面屏</h5>
                </div>
            </div>
        </div>
        <div class="col-md-8 products-right">
            <!--选择下拉框-->
            <div class="products-right-grid">
                <div class="products-right-grids animated wow slideInRight" data-wow-delay=".5s">
                    <div class="sorting">
                        <select id="country" onchange="change_country(this.value)" class="frm-field required sect">
                            <option value="null">Default sorting</option>
                            <option value="null">Sort by popularity</option>
                            <option value="null">Sort by average rating</option>
                            <option value="null">Sort by price</option>
                        </select>
                    </div>
                    <div class="sorting-left">
                        <select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
                            <option value="null">Item on page 9</option>
                            <option value="null">Item on page 18</option>
                            <option value="null">Item on page 32</option>
                            <option value="null">All</option>
                        </select>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="products-right-grids-position animated wow slideInRight" data-wow-delay=".5s">
                    <img src="images/018.jpg" alt=" " class="img-responsive" />
           <%--         <div class="products-right-grids-position1">
                        <h4>2016 New Collection</h4>
                        <p>Temporibus autem quibusdam et aut officiis debitis aut rerum
                            necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae
                            non recusandae.</p>
                    </div>--%>
                </div>
            </div>
            <!--商品九宫格-->
            <%
                List<Goods> list = (List) request.getSession().getAttribute("allGoods");
                int num = Integer.parseInt(request.getAttribute("number").toString());
            %>
            <div class="products-right-grids-bottom">
                <div class="col-md-4 products-right-grids-bottom-grid">
                    <% if (num< list.size()){%>
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a  class="product-image"><img src="<%=list.get(num).getFileadress()%>" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="SingleGoodsAction.action?goodsname=<%=list.get(num).getGoods_name()%>">购买</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="SingleGoodsAction.action?goodsname=<%=list.get(num).getGoods_name()%>"><%=list.get(num).getGoods_name()%></a></h4>
                        <p><%=list.get(num).getInfo()%></p>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><span class="item_price">¥<%=list.get(num).getPrice()%></span><a class="item_add" href="CheckoutAction.action?name=<%=list.get(num).getGoods_name()%>">加入购物车 </a></p>
                        </div>
                    </div>
                    <%
                        }
                        if((num+1)<list.size()){
                    %>

                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a  class="product-image"><img src="<%=list.get(num+1).getFileadress()%>" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="SingleGoodsAction.action?goodsname=<%=list.get(num+1).getGoods_name()%>">购买</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="SingleGoodsAction.action?goodsname=<%=list.get(num+1).getGoods_name()%>"><%=list.get(num+1).getGoods_name()%></a></h4>
                        <p><%=list.get(num+1).getInfo()%></p>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><span class="item_price">¥<%=list.get(num+1).getPrice()%></span><a class="item_add" href="CheckoutAction.action?name=<%=list.get(num+1).getGoods_name()%>">加入购物车</a></p>
                        </div>
                    </div>
                    <%
                        }
                        if((num+2)<list.size()){
                    %>

                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a class="product-image"><img src="<%=list.get(num+2).getFileadress()%>" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="SingleGoodsAction.action?goodsname=<%=list.get(num+2).getGoods_name()%>">购买</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="SingleGoodsAction.action?goodsname=<%=list.get(num+2).getGoods_name()%>"><%=list.get(num+2).getGoods_name()%></a></h4>
                        <p><%=list.get(num+2).getInfo()%></p>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><span class="item_price">¥<%=list.get(num+2).getPrice()%></span><a class="item_add" href="CheckoutAction.action?name=<%=list.get(num+2).getGoods_name()%>">加入购物车</a></p>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
                <div class="col-md-4 products-right-grids-bottom-grid">

                    <%
                        if((num+3)<list.size()){
                    %>
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a class="product-image"><img src="<%=list.get(num+3).getFileadress()%>" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="SingleGoodsAction.action?goodsname=<%=list.get(num+3).getGoods_name()%>">购买</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="SingleGoodsAction.action?goodsname=<%=list.get(num+3).getGoods_name()%>"><%=list.get(num+3).getGoods_name()%></a></h4>
                        <p><%=list.get(num+3).getInfo()%></p>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><span class="item_price">¥<%=list.get(num+3).getPrice()%></span><a class="item_add" href="CheckoutAction.action?name=<%=list.get(num+3).getGoods_name()%>">加入购物车 </a></p>
                        </div>
                    </div>
                    <%
                        }
                        if((num+4)<list.size()){
                    %>

                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a class="product-image"><img src="<%=list.get(num+4).getFileadress()%>" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="SingleGoodsAction.action?goodsname=<%=list.get(num+4).getGoods_name()%>">购买</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="SingleGoodsAction.action?goodsname=<%=list.get(num+4).getGoods_name()%>"><%=list.get(num+4).getGoods_name()%></a></h4>
                        <p><%=list.get(num+4).getInfo()%></p>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><span class="item_price">¥<%=list.get(num+4).getPrice()%></span><a class="item_add" href="CheckoutAction.action?name=<%=list.get(num+4).getGoods_name()%>">加入购物车</a></p>
                        </div>
                    </div>
                    <%
                        }
                        if((num+5)<list.size()){
                    %>

                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a class="product-image"><img src="<%=list.get(num+5).getFileadress()%>" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="SingleGoodsAction.action?goodsname=<%=list.get(num+5).getGoods_name()%>">购买</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="SingleGoodsAction.action?goodsname=<%=list.get(num+5).getGoods_name()%>"><%=list.get(num+5).getGoods_name()%></a></h4>
                        <p><%=list.get(num+5).getInfo()%></p>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><span class="item_price">¥<%=list.get(num+5).getPrice()%></span><a class="item_add" href="CheckoutAction.action?name=<%=list.get(num+5).getGoods_name()%>">加入购物车</a></p>
                        </div>
                    </div>
                </div>
                <%
                    }
                    if((num+6)<list.size()){
                %>

                <div class="col-md-4 products-right-grids-bottom-grid">
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a class="product-image"><img src="<%=list.get(num+6).getFileadress()%>" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="SingleGoodsAction.action?goodsname=<%=list.get(num+6).getGoods_name()%>">购买</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="SingleGoodsAction.action?goodsname=<%=list.get(num+6).getGoods_name()%>"><%=list.get(num+6).getGoods_name()%></a></h4>
                        <p><%=list.get(num+6).getInfo()%></p>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><span class="item_price">¥<%=list.get(num+6).getPrice()%></span><a class="item_add" href="CheckoutAction.action?name=<%=list.get(num+6).getGoods_name()%>">加入购物车</a></p>
                        </div>
                    </div>
                    <%
                        }
                        if((num+7)<list.size()){
                    %>

                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a class="product-image"><img src="<%=list.get(num+7).getFileadress()%>" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="SingleGoodsAction.action?goodsname=<%=list.get(num+7).getGoods_name()%>">购买</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="SingleGoodsAction.action?goodsname=<%=list.get(num+7).getGoods_name()%>"><%=list.get(num+7).getGoods_name()%></a></h4>
                        <p><%=list.get(num+7).getInfo()%></p>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p> <span class="item_price">¥<%=list.get(num+7).getPrice()%></span><a class="item_add" href="CheckoutAction.action?name=<%=list.get(num+7).getGoods_name()%>">加入购物车 </a></p>
                        </div>
                    </div>
                    <%
                        }
                        if((num+8)<list.size()){
                    %>

                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a class="product-image"><img src="<%=list.get(num+8).getFileadress()%>" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="SingleGoodsAction.action?goodsname=<%=list.get(num+8).getGoods_name()%>">购买</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="SingleGoodsAction.action?goodsname=<%=list.get(num+8).getGoods_name()%>"><%=list.get(num+8).getGoods_name()%></a></h4>
                        <p><%=list.get(num+8).getInfo()%></p>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><span class="item_price">¥<%=list.get(num+8).getPrice()%></span><a class="item_add" href="CheckoutAction.action?name=<%=list.get(num+8).getGoods_name()%>">加入购物车 </a></p>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
                <div class="clearfix"> </div>
            </div>



            <!--商品九宫格-->
            <nav class="numbering animated wow slideInRight" data-wow-delay=".5s">
                <ul class="pagination paging">
                    <li>
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="active"><a href="ProductAction.action?number=1">1<span class="sr-only">(current)</span></a></li>
                    <%
                        int size = Integer.parseInt(request.getSession().getAttribute("LISTSIZE").toString());
                        for(int i = 2; i<=size; i++){
                    %>
                        <li><a href="ProductAction.action?number=<%=i%>"><%=i%></a></li>
                    <%
                        }
                    %>
<%--                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>--%>
                    <li>
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //breadcrumbs -->
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
<!-- //footer -->
-->
</body>
</html>
