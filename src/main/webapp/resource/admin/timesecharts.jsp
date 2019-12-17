<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/world.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/bmap.min.js"></script>
</head>
<body style="height: 100%; margin: 0">
<div id="container" style="height: 100%"></div>
<script type="text/javascript">

    $(function () {
        /*记录每个月浏览该商城系统的次数*/
        var datax=[];
        var datay=[];
        $.ajax({
            url:"getWebData",
            type:"post",
            success:function (data) {
                for(var i=0;i<data.length;i++){
                    datax.push(data[i].visittime);
                    datay.push(data[i].visittimes);
                }
                var dom = document.getElementById("container");
                var myChart = echarts.init(dom);
                var app = {};
                option = null;
                option = {
                    xAxis: {
                        type: 'category',
                        boundaryGap: false,
                        data: datax
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: datay,
                        type: 'line',
                        areaStyle: {}
                    }]
                };
                ;
                if (option && typeof option === "object") {
                    myChart.setOption(option, true);
                }
            }
        })

    });
</script>
</body>
</html>
