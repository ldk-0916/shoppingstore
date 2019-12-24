<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>个人订单</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>resource/css/resetcar.css">
    <link rel="stylesheet" href="<%=basePath%>resource/css/carts.css">
    <link rel="stylesheet" href="<%=basePath%>resource/css/search.css">

    <style type="text/css">
        .order_lists .list_chk{
            position: relative;
            width: 50px;
        }
        .order_lists .list_chk p{
            margin: 30px 0 0 30px;
        }

        .order_lists .list_con{
            width: 342px;
        }
        .order_lists .list_con .list_text{
            margin: 20px 0 0 20px;
            line-height: 30px;
            width: 200px;
            float: right;
        }
    </style>
</head>
<body>
<section class="cartMain">

    <div class="cartMain_hd">
        <ul class="order_lists cartTop">
            <li class="list_chk">用户ID</li>
            <li class="list_con">商品编号</li>
            <li class="list_info">商品名字</li>
            <li class="list_price">商品数量</li>
            <li class="list_amount">下单时间</li>
            <li class="list_sum">下单编号</li>
            <li class="list_op">订单状态</li>
        </ul>
    </div>
    <div class="cartBox">
        <div class="shop_info">
        </div>
        <div class="order_content">
        </div>
    </div>
</section>
</body>
</html>
