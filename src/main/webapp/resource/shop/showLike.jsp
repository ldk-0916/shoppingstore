<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head id="hh">
    <base href="<%=basePath%>">
    <title></title>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="<%=basePath%>resource/js/modernizr.custom.js"></script>
    <script src="<%=basePath%>resource/js/jquery.page.js"></script>
    <link href="http://cdn.bootcss.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resource/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resource/css/component.css" />


    <style>

        body{
            background: #2A2B30;
        }

        .tcdPageCode{padding: 5px 0px 20px 10px;color: #ccc;text-align:right;margin-right: 5%;float: right;}
        .tcdPageCode a,.tcdPageCode .notcdNumber,.ellipsis{display: inline-block;color: #428bca;display: inline-block;height: 25px;	line-height: 25px;	padding: 0 10px;border-right: 1px solid #ddd;border-top: 1px solid #ddd;border-bottom: 1px solid #ddd;vertical-align: middle;}
        .prevPage{border-left: 1px solid #ddd;}
        .tcdPageCode a:hover{text-decoration: none;background-color: #F5F5F5;}
        .tcdPageCode span.current{display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;color: #fff;background-color: #428bca;	border: 1px solid #428bca;vertical-align: middle;}
        .tcdPageCode span.disabled{	display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;color: #bfbfbf;background: #f2f2f2;border: 1px solid #bfbfbf;vertical-align: middle;}

    </style>

</head>
<body >
<!-- Compare basket -->
<div class="compare-basket">
    <button class="action action--button action--compare"><i class="fa fa-check"></i><span class="action__text">Compare</span></button>
</div>
<!-- Main view -->
<div class="view">
    <!-- Product grid -->
    <section class="grid">
        <!-- Products -->
    </section>
</div><!-- /view -->
<!-- product compare wrapper -->
<section class="compare">
    <button class="action action--close"><i class="fa fa-remove"></i><span class="action__text action__text--invisible">Close comparison overlay</span></button>
</section>
<div class="tcdPageCode"></div>



<script src="<%=basePath%>resource/js/classie.js"></script>
<script src="<%=basePath%>resource/js/main.js"></script>

</body>
</html>
