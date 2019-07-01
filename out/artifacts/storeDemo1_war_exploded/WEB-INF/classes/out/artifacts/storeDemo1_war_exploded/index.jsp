<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/19
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Home</title>
  <!-- for-mobile-apps -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
  function hideURLbar(){ window.scrollTo(0,1); } </script>
  <!-- //for-mobile-apps -->
  <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
  <link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
  <!-- js -->
  <script src="js/jquery.min.js"></script>
  <!-- //js -->
  <!-- cart -->
  <script src="js/simpleCart.min.js"></script>
  <!-- cart -->
  <!-- for bootstrap working -->
  <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
  <!-- //for bootstrap working -->
  <link hzref='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
  <!-- timer -->
  <link rel="stylesheet" href="css/jquery.countdown.css" />
  <!-- //timer -->
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
          <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><c:out value="${phone}"></c:out> </li>
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
                      <%--  <li><a href="single.jsp">小米8</a></li>
                        <li><a href="single.jsp">小米8 SE</a></li>
                        <li><a href="single.jsp">小米Max 3</a></li>
                        <li><a href="single.jsp">小米MIX 2S</a></li>
                        <li><a href="single.jsp">小米6X</a></li>--%>
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
<!-- banner -->
<div class="banner">
  <div class="container">
    <div class="banner-info animated wow zoomIn" data-wow-delay=".5s">
      <h3>新品开售！</h3>
      <h4><span>6月5日</span></h4>
      <div class="wmuSlider example1">
        <div class="wmuSliderWrapper">
          <article style="position: absolute; width: 100%; opacity: 0;">
            <div class="banner-wrap">
              <div class="banner-info1">
                <p>小米8+小米8探索版</p>
              </div>
            </div>
          </article>
          <article style="position: absolute; width: 100%; opacity: 0;">
            <div class="banner-wrap">
              <div class="banner-info1">
                <p>小米8SE</p>
              </div>
            </div>
          </article>
          <article style="position: absolute; width: 100%; opacity: 0;">
            <div class="banner-wrap">
              <div class="banner-info1">
                <p>小米手环3+小米手环3 NFC功能</p>
              </div>
            </div>
          </article>
        </div>
      </div>
      <script src="js/jquery.wmuSlider.js"></script>
      <script>
          $('.example1').wmuSlider();
      </script>
    </div>
  </div>
</div>
<!-- //banner -->
<!-- banner-bottom -->
<div class="banner-bottom">
  <div class="container">
    <div class="banner-bottom-grids">
      <div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s">
        <div class="grid">
          <figure class="effect-julia">
            <img src="images\mi8.jpg" alt=" " class="img-responsive" />
            <figcaption>
              <h3> <span>小米8</span><i> 骁龙845处理器</i></h3>
              <div>
                <p>全球首款双频GPS</p>
                <p>红外人脸解锁</p>
                <p>AI变焦双摄</p>
                  <p>多功能NFC</p>
                  <p>AI语音助手</p>
                  <p>三星AMOLED屏</p>
              </div>
            </figcaption>
          </figure>
        </div>
      </div>
      <div class="banner-bottom-grid-left1 animated wow slideInUp" data-wow-delay=".5s">
        <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
          <div class="banner-bottom-grid-left-grid1">
            <img src="images/01.jpg" alt=" " class="img-responsive" />
          </div>
          <div class="banner-bottom-grid-left1-pos">
            <p>小米手环3 NFC功能</p>
          </div>
        </div>
        <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
          <div class="banner-bottom-grid-left-grid1">
            <%--<img src="images/2.jpg" alt=" " class="img-responsive" />--%>
          </div>
          <div class="banner-bottom-grid-left1-position">
            <div class="banner-bottom-grid-left1-pos1">
              <p>Latest New Collections</p>
            </div>
          </div>
        </div>
      </div>
      <div class="banner-bottom-grid-right animated wow slideInRight" data-wow-delay=".5s">
        <div class="banner-bottom-grid-left-grid grid-left-grid1">
          <div class="banner-bottom-grid-left-grid1">
            <img src="images/03.jpg" alt=" " class="img-responsive" />
          </div>
          <div class="grid-left-grid1-pos">
              <figcaption>
            <p>小米8SE <span>骁龙710全球首发</span></p>
           </div>
        </div>
      </div>
      <div class="clearfix"> </div>
    </div>
  </div>
</div>
<!-- //banner-bottom -->
<!-- collections -->
<div class="new-collections">
  <div class="container">
    <h3 class="animated wow zoomIn" data-wow-delay=".5s">热评产品</h3>
    <p class="est animated wow zoomIn" data-wow-delay=".5s">
        小米，为发烧而生
    </p>
    <div class="new-collections-grids">
      <div class="col-md-3 new-collections-grid">
        <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
          <div class="new-collections-grid1-image">
            <a href="single.jsp" class="product-image"><img src="images/03.jpg" alt=" " class="img-responsive" /></a>
            <div class="new-collections-grid1-image-pos">
              <a href="SingleGoodsAction.action?goodsname=<%="小米8SE"%>">购买</a>
            </div>
            <div class="new-collections-grid1-right">
              <div class="rating">
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/1.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/1.png" alt=" " class="img-responsive" />
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <h4><a>小米8SE</a></h4>
          <p>骁龙710全球首发</p>
          <div class="new-collections-grid1-left simpleCart_shelfItem">
            <p><span class="item_price">¥1799</span><a class="item_add" href="CheckoutAction.action?name=<%="小米8SE"%>">加入购物车 </a></p>
          </div>
        </div>
        <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
          <div class="new-collections-grid1-image">
            <a href="single.jsp" class="product-image"><img src="images/8.jpg" alt=" " class="img-responsive" /></a>
            <div class="new-collections-grid1-image-pos">
              <a href="SingleGoodsAction.action?goodsname=<%="小米MIX　2S"%>">购买</a>
            </div>
            <div class="new-collections-grid1-right">
              <div class="rating">
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/1.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/1.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/1.png" alt=" " class="img-responsive" />
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <h4><a>小米Mix 2S</a></h4>
          <p>艺术陶瓷工艺</p>
          <div class="new-collections-grid1-left simpleCart_shelfItem">
            <p><span class="item_price">¥3499</span><a class="item_add" href="CheckoutAction.action?name=<%="小米Mix 2S"%>">加入购物车 </a></p>
          </div>
        </div>
      </div>
      <div class="col-md-6 new-collections-grid">
        <div class="new-collections-grid1 new-collections-grid1-image-width animated wow slideInUp" data-wow-delay=".5s">
          <div class="new-collections-grid1-image">
            <a href="single.jsp" class="product-image"><img src="images/mi8.jpg" alt=" " class="img-responsive" /></a>
            <div class="new-collections-grid1-image-pos new-collections-grid1-image-pos1">
              <a href="SingleGoodsAction.action?goodsname=<%="小米8"%>">购买</a>
            </div>
            <div class="new-collections-grid1-right new-collections-grid1-right-rate">
              <div class="rating">
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/1.png" alt=" " class="img-responsive" />
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
            <div class="new-one">
              <p>New</p>
            </div>
          </div>
          <h4><a>小米8</a></h4>
          <p>首款双频GPS</p>
          <div class="new-collections-grid1-left simpleCart_shelfItem">
            <p><span class="item_price">¥2699</span><a class="item_add" href="CheckoutAction.action?name=<%="小米8"%>">加入购物车</a></p>
          </div>
        </div>
        <div class="new-collections-grid-sub-grids">
          <div class="new-collections-grid1-sub">
            <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
              <div class="new-collections-grid1-image">
                <a href="single.jsp" class="product-image"><img src="images/01.jpg" alt=" " class="img-responsive" /></a>
                <div class="new-collections-grid1-image-pos">
                  <a href="SingleGoodsAction.action?goodsname=<%="小米手环3"%>">购买</a>
                </div>
                <div class="new-collections-grid1-right">
                  <div class="rating">
                    <div class="rating-left">
                      <img src="images/2.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="rating-left">
                      <img src="images/2.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="rating-left">
                      <img src="images/2.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="rating-left">
                      <img src="images/2.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="rating-left">
                      <img src="images/2.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="clearfix"> </div>
                  </div>
                </div>
              </div>
              <h4><a>小米手环3</a></h4>
              <p>具有NFC功能</p>
              <div class="new-collections-grid1-left simpleCart_shelfItem">
                <p><span class="item_price">¥169</span><a class="item_add" href="CheckoutAction.action?name=<%="小米手环3"%>">加入购物车</a></p>
              </div>
            </div>
          </div>
          <div class="new-collections-grid1-sub">
            <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
              <div class="new-collections-grid1-image">
                <a href="single.jsp" class="product-image"><img src="images/9.jpg" alt=" " class="img-responsive" /></a>
                <div class="new-collections-grid1-image-pos">
                  <a href="SingleGoodsAction.action?goodsname=<%="红米Pro"%>">购买</a>
                </div>
                <div class="new-collections-grid1-right">
                  <div class="rating">
                    <div class="rating-left">
                      <img src="images/2.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="rating-left">
                      <img src="images/1.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="rating-left">
                      <img src="images/1.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="rating-left">
                      <img src="images/1.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="rating-left">
                      <img src="images/1.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="clearfix"> </div>
                  </div>
                </div>
              </div>
              <h4><a>红米Pro</a></h4>
              <p>千元新旗舰</p>
              <div class="new-collections-grid1-left simpleCart_shelfItem">
                <p><span class="item_price">¥999</span><a class="item_add" href="CheckoutAction.action?name=<%="红米Pro"%>">加入购物车</a></p>
              </div>
            </div>
          </div>
          <div class="clearfix"> </div>
        </div>
      </div>
      <div class="col-md-3 new-collections-grid">
        <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
          <div class="new-collections-grid1-image">
            <a href="single.jsp" class="product-image"><img src="images/10.jpg" alt=" " class="img-responsive" /></a>
            <div class="new-collections-grid1-image-pos">
              <a href="SingleGoodsAction.action?goodsname=<%="小米平板4"%>">购买</a>
            </div>
            <div class="new-collections-grid1-right">
              <div class="rating">
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/1.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/1.png" alt=" " class="img-responsive" />
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <h4><a>小米平板4</a></h4>
          <p>AI人脸识别</p>
          <div class="new-collections-grid1-left simpleCart_shelfItem">
            <p><span class="item_price">¥1099</span><a class="item_add" href="CheckoutAction.action?name=<%="小米平板4"%>">加入购物车 </a></p>
          </div>
        </div>
        <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
          <div class="new-collections-grid1-image">
            <a href="single.jsp" class="product-image"><img src="images/11.jpg" alt=" " class="img-responsive" /></a>
            <div class="new-collections-grid1-image-pos">
              <a href="SingleGoodsAction.action?goodsname=<%="小米游戏本"%>">购买</a>
            </div>
            <div class="new-collections-grid1-right">
              <div class="rating">
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/2.png" alt=" " class="img-responsive" />
                </div>
                <div class="rating-left">
                  <img src="images/1.png" alt=" " class="img-responsive" />
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <h4><a>小米游戏本</a></h4>
          <p>超级游戏本</p>
          <div class="new-collections-grid1-left simpleCart_shelfItem">
            <p><span class="item_price">¥5999</span><a class="item_add" href="CheckoutAction.action?name=<%="小米游戏本"%>">加入购物车</a></p>
          </div>
        </div>
      </div>
      <div class="clearfix"> </div>
    </div>
  </div>
</div>
<!-- //collections -->
<!-- new-timer -->
<%--<div class="timer">--%>
  <%--<div class="container">--%>
    <%--<div class="timer-grids">--%>
      <%--<div class="col-md-8 timer-grid-left animated wow slideInLeft" data-wow-delay=".5s">--%>
        <%--<h3><a href="products.html">sunt in culpa qui officia deserunt mollit</a></h3>--%>
        <%--<div class="rating">--%>
          <%--<div class="rating-left">--%>
            <%--<img src="images/2.png" alt=" " class="img-responsive" />--%>
          <%--</div>--%>
          <%--<div class="rating-left">--%>
            <%--<img src="images/2.png" alt=" " class="img-responsive" />--%>
          <%--</div>--%>
          <%--<div class="rating-left">--%>
            <%--<img src="images/2.png" alt=" " class="img-responsive" />--%>
          <%--</div>--%>
          <%--<div class="rating-left">--%>
            <%--<img src="images/2.png" alt=" " class="img-responsive" />--%>
          <%--</div>--%>
          <%--<div class="rating-left">--%>
            <%--<img src="images/1.png" alt=" " class="img-responsive" />--%>
          <%--</div>--%>
          <%--<div class="clearfix"> </div>--%>
        <%--</div>--%>
        <%--<div class="new-collections-grid1-left simpleCart_shelfItem timer-grid-left-price">--%>
          <%--<p><i>$580</i> <span class="item_price">$550</span></p>--%>
          <%--<h4>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam,--%>
            <%--nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit--%>
            <%--qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui--%>
            <%--dolorem eum fugiat quo voluptas nulla pariatur.</h4>--%>
          <%--<p><a class="item_add timer_add" href="#">add to cart </a></p>--%>
        <%--</div>--%>
        <%--<div id="counter"> </div>--%>
        <%--<script src="js/jquery.countdown.js"></script>--%>
        <%--<script src="js/script.js"></script>--%>
      <%--</div>--%>
      <%--<div class="col-md-4 timer-grid-right animated wow slideInRight" data-wow-delay=".5s">--%>
        <%--<div class="timer-grid-right1">--%>
          <%--<img src="images/17.jpg" alt=" " class="img-responsive" />--%>
          <%--<div class="timer-grid-right-pos">--%>
            <%--<h4>Special Offer</h4>--%>
          <%--</div>--%>
        <%--</div>--%>
      <%--</div>--%>
      <%--<div class="clearfix"> </div>--%>
    <%--</div>--%>
  <%--</div>--%>
<%--</div>--%>
<%--<!-- //new-timer -->--%>
<%--<!-- collections-bottom -->--%>
<%--<div class="collections-bottom">--%>
  <%--<div class="container">--%>
    <%--<div class="collections-bottom-grids">--%>
      <%--<div class="collections-bottom-grid animated wow slideInLeft" data-wow-delay=".5s">--%>
        <%--<h3>45% Offer For <span>Women & Children's</span></h3>--%>
      <%--</div>--%>
    <%--</div>--%>
    <%--<div class="newsletter animated wow slideInUp" data-wow-delay=".5s">--%>
      <%--<h3>Newsletter</h3>--%>
      <%--<p>Join us now to get all news and special offers.</p>--%>
      <%--<form>--%>
        <%--<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>--%>
        <%--<input type="email" value="Enter your email address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your email address';}" required="">--%>
        <%--<input type="submit" value="Join Us" >--%>
      <%--</form>--%>
    <%--</div>--%>
  <%--</div>--%>
<%--</div>--%>
<%--<!-- //collections-bottom -->--%>
<%--<!-- footer -->--%>
<%--<div class="footer">--%>
  <%--<div class="container">--%>
    <%--<div class="footer-grids">--%>
      <%--<div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".5s">--%>
        <%--<h3>About Us</h3>--%>
        <%--<p>Duis aute irure dolor in reprehenderit in voluptate velit esse.<span>Excepteur sint occaecat cupidatat--%>
						<%--non proident, sunt in culpa qui officia deserunt mollit.</span></p>--%>
      <%--</div>--%>
      <%--<div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".6s">--%>
        <%--<h3>Contact Info</h3>--%>
        <%--<ul>--%>
          <%--<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>1234k Avenue, 4th block, <span>New York City.</span></li>--%>
          <%--<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>--%>
          <%--<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 567</li>--%>
        <%--</ul>--%>
      <%--</div>--%>
      <%--<div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".7s">--%>
        <%--<h3>Flickr Posts</h3>--%>
        <%--<div class="footer-grid-left">--%>
          <%--<a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive" /></a>--%>
        <%--</div>--%>
        <%--<div class="footer-grid-left">--%>
          <%--<a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive" /></a>--%>
        <%--</div>--%>
        <%--<div class="footer-grid-left">--%>
          <%--<a href="single.html"><img src="images/15.jpg" alt=" " class="img-responsive" /></a>--%>
        <%--</div>--%>
        <%--<div class="footer-grid-left">--%>
          <%--<a href="single.html"><img src="images/16.jpg" alt=" " class="img-responsive" /></a>--%>
        <%--</div>--%>
        <%--<div class="footer-grid-left">--%>
          <%--<a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive" /></a>--%>
        <%--</div>--%>
        <%--<div class="footer-grid-left">--%>
          <%--<a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive" /></a>--%>
        <%--</div>--%>
        <%--<div class="footer-grid-left">--%>
          <%--<a href="single.html"><img src="images/15.jpg" alt=" " class="img-responsive" /></a>--%>
        <%--</div>--%>
        <%--<div class="footer-grid-left">--%>
          <%--<a href="single.html"><img src="images/16.jpg" alt=" " class="img-responsive" /></a>--%>
        <%--</div>--%>
        <%--<div class="footer-grid-left">--%>
          <%--<a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive" /></a>--%>
        <%--</div>--%>
        <%--<div class="footer-grid-left">--%>
          <%--<a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive" /></a>--%>
        <%--</div>--%>
        <%--<div class="footer-grid-left">--%>
          <%--<a href="single.html"><img src="images/15.jpg" alt=" " class="img-responsive" /></a>--%>
        <%--</div>--%>
        <%--<div class="footer-grid-left">--%>
          <%--<a href="single.html"><img src="images/16.jpg" alt=" " class="img-responsive" /></a>--%>
        <%--</div>--%>
        <%--<div class="clearfix"> </div>--%>
      <%--</div>--%>
      <%--<div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".8s">--%>
        <%--<h3>Blog Posts</h3>--%>
        <%--<div class="footer-grid-sub-grids">--%>
          <%--<div class="footer-grid-sub-grid-left">--%>
            <%--<a href="single.html"><img src="images/9.jpg" alt=" " class="img-responsive" /></a>--%>
          <%--</div>--%>
          <%--<div class="footer-grid-sub-grid-right">--%>
            <%--<h4><a href="single.html">culpa qui officia deserunt</a></h4>--%>
            <%--<p>Posted On 25/3/2016</p>--%>
          <%--</div>--%>
          <%--<div class="clearfix"> </div>--%>
        <%--</div>--%>
        <%--<div class="footer-grid-sub-grids">--%>
          <%--<div class="footer-grid-sub-grid-left">--%>
            <%--<a href="single.html"><img src="images/10.jpg" alt=" " class="img-responsive" /></a>--%>
          <%--</div>--%>
          <%--<div class="footer-grid-sub-grid-right">--%>
            <%--<h4><a href="single.html">Quis autem vel eum iure</a></h4>--%>
            <%--<p>Posted On 25/3/2016</p>--%>
          <%--</div>--%>
          <%--<div class="clearfix"> </div>--%>
        <%--</div>--%>
      <%--</div>--%>
      <%--<div class="clearfix"> </div>--%>
    <%--</div>--%>
    <%--<div class="footer-logo animated wow slideInUp" data-wow-delay=".5s">--%>
      <%--<h2><a href="index.html">Best Store <span>shop anywhere</span></a></h2>--%>
    <%--</div>--%>
    <%--<div class="copy-right animated wow slideInUp" data-wow-delay=".5s">--%>
      <%--<p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>--%>
    <%--</div>--%>
  <%--</div>--%>
<%--</div>--%>
<!-- //footer -->
</body>
</html>
