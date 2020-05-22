<%@ page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>
    <meta charset="utf-8"/>
    <title><tiles:insertAttribute name="title"/></title>
    <meta property="og:image" content="<%=request.getContextPath()%>/assets/public/img/favicon.png">
    <meta name="description" content="san sim"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/animate.css" type="text/css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font.css" type="text/css" cache="false"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/adminAssets/js/datatables/datatables.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/adminAssets/js/select2/select2.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/adminAssets/js/select2/theme.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/adminAssets/js/fuelux/fuelux.css" type="text/css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/adminAssets/js/slider/slider.css" type="text/css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/adminAssets/js/datepicker/datepicker.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/adminAssets/css/style.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/adminAssets/css/app.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/adminAssets/angularjs/autocomplete/autocomplete.css" type="text/css"/>
    <%--<[if lt IE 9]>--%>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/ie/html5shiv.js" cache="false"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/ie/respond.min.js" cache="false"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/ie/excanvas.js" cache="false"></script>
    <%--<[endif]>--%>

    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/bootstrap.js"></script>
    <%--<script src="<%=request.getContextPath()%>/assets/note/js/jquery-ui-1.10.3.custom.min.js"></script>--%>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/datepicker/bootstrap-datepicker.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/app.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/app.plugin.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/datatables/jquery.dataTables.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/select2/select2.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/fuelux/fuelux.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/slider/bootstrap-slider.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/libs/moment.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/js/combodate/combodate.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/toastr.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/adminAssets/toastr.min.css" type="text/css"/>

    <script src="<%=request.getContextPath()%>/assets/adminAssets/angularjs/angular.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/angularjs/angular-sanitize.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/common.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/CommonFunction.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/croppie.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/angularjs/autocomplete/autocomplete.js"></script>
    <script src="<%= request.getContextPath()%>/assets/adminAssets/jquery.flipcountdown.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/bootstrap-dialog.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/adminAssets/moment-with-locales.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/adminAssets/css/bootstrap-datetimepicker.css" type="text/css" />
    <script src="<%=request.getContextPath()%>/assets/adminAssets/bootstrap-datetimepicker.js"></script>
    <script>
        var preUrl='<%=request.getContextPath()%>';
    </script>
</head>
<body>
<section class="vbox">
    <tiles:insertAttribute name="header" />
    <section>
        <section class="hbox stretch">
            <tiles:insertAttribute name="leftpanel" />
            <tiles:insertAttribute name="page" />
        </section>
    </section>
</section>
</body></html>
