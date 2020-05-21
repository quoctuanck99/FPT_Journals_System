<%@ page isELIgnored="true" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<style>
    .count{
        font-size:30px;
        font-weight: 600;
    }
    .green-special{
        color:#1ABB9C;
    }
    .nau-xam{
        color:#73879C;
        font-weight: 400;
        font-size: 13px;
    }
    .red{
        color:#E74C3C;
    }
</style>
<section id="content">
    <section class="vbox">
        <section class="scrollable padder">
            <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
                <li><a href="/"><i class="fa fa-home"></i>&nbsp;Home</a></li>
                <li class="active">Dashboard</li>
            </ul>
            <div class="m-b-md"><h3 class="m-b-none">Workset</h3>
                <small>WELLCOM TO FPT JOURNALS</small>
            </div>


        </section>
    </section>
    <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
</section>

<!-- Bootstrap --> <!-- App -->
<script src="<%=request.getContextPath()%>/assets/adminAssets/js/charts/sparkline/jquery.sparkline.min.js" cache="false"></script>
<script src="<%=request.getContextPath()%>/assets/adminAssets/js/charts/easypiechart/jquery.easy-pie-chart.js" cache="false"></script>
<script src="<%=request.getContextPath()%>/assets/adminAssets/js/highcharts/highcharts.js" cache="false"></script>
<script src="<%=request.getContextPath()%>/assets/adminAssets/js/highcharts/highcharts-more.js" cache="false"></script>
<script src="<%=request.getContextPath()%>/assets/adminAssets/js/highcharts/exporting.js" cache="false"></script>
<script src="<%=request.getContextPath()%>/assets/adminAssets/js/charts/flot/jquery.flot.min.js" ></script>
<script src="<%=request.getContextPath()%>/assets/adminAssets/js/charts/flot/jquery.flot.tooltip.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/adminAssets/js/charts/flot/jquery.flot.resize.js"></script>
<script src="<%=request.getContextPath()%>/assets/adminAssets/js/charts/flot/jquery.flot.grow.js"></script>
<script src="<%=request.getContextPath()%>/assets/adminAssets/js/charts/flot/demo.js"></script>