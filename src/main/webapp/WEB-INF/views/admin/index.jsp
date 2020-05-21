<%@ page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
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
    #container {
        min-height: 350px;
        max-height: 600px;
        margin: 0 auto;
    }
</style>
<script>
    var contextPath='<%=request.getContextPath()%>';
</script>
<script src="<%=request.getContextPath()%>/assets/project/admin/index/index.js"></script>
<section id="content"  ng-app="sansimso"  ng-controller="sansimCtrl">
    <section class="vbox">
        <section class="scrollable padder">
            <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
                <li><a href="<%=request.getContextPath()%>/"><i class="fa fa-home"></i>&nbsp;Home</a></li>
            </ul>
            <div class="m-b-md"><h3 class="m-b-none">Workset</h3>
                <small><span class="text-success"><sec:authentication property="principal.fullName" /></span>, mừng bạn trở lại.</small>
            </div>

            <section class="panel panel-default pos-rlt clearfix">

             
            </section>

            <div class="row">
                <div class="col-md-8">
                    <section class="panel panel-default">
                        <header class="panel-heading font-bold">Biểu đồ doanh thu {{nameTitle}}</header>
                        <div class="panel-body">
                            <div id="container"></div>
                          
                        </div>

                    </section>
                </div>

            </div>

        </section>
    </section>
    <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
</section>

<!-- Bootstrap --> <!-- App -->
<script src="<%=request.getContextPath()%>/assets/js/jquery-3.1.1.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/note/js/charts/sparkline/jquery.sparkline.min.js" cache="false"></script>
<script src="<%=request.getContextPath()%>/assets/note/js/charts/easypiechart/jquery.easy-pie-chart.js" cache="false"></script>
<script src="<%=request.getContextPath()%>/assets/js/highcharts/highcharts.js" cache="false"></script>
<script src="<%=request.getContextPath()%>/assets/js/highcharts/highcharts-more.js" cache="false"></script>
<script src="<%=request.getContextPath()%>/assets/js/highcharts/exporting.js" cache="false"></script>
<script src="<%=request.getContextPath()%>/assets/note/js/charts/flot/jquery.flot.min.js" ></script>
<script src="<%=request.getContextPath()%>/assets/note/js/charts/flot/jquery.flot.tooltip.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/note/js/charts/flot/jquery.flot.resize.js"></script>
<script src="<%=request.getContextPath()%>/assets/note/js/charts/flot/jquery.flot.grow.js"></script>

<script src="<%=request.getContextPath()%>/assets/vendors/Chart.js/dist/Chart.min.js"></script>

<script>
    function toggler(divId) {
        $("#" + divId).toggle();
    }
    //giup cai mui ten doi chieu khi click
    $(document).on('click', '.chitieu', function(e){
        e && e.preventDefault();
        var $this = $(e.target), $target;
        if (!$this.is('a')) $this = $this.closest('a');
        $target = $this.closest('.panel');
        $this.toggleClass('active');
    });
</script>