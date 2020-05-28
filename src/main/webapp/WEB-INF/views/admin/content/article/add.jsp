<%--<%@ page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>--%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ckfinder" uri="http://cksource.com/ckfinder" %>
<%@ taglib prefix="ckeditor" uri="http://ckeditor.com" %>

<script type="text/javascript" src="<%=request.getContextPath()%>/assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/ckfinder/ckfinder.js"></script>

<section id="content">
    <section class="vbox">
        <section class="scrollable padder">
            <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
                <li><a href="<%=request.getContextPath()%>/admin"><i class="fa fa-home"></i>&nbsp;Trang chủ</a></li>
                <li><a href="#">Quản lý nội dung</a></li>
                <li><a href="#">Bài viết</a></li>
                <li><a href="javascript:void(0)">Thêm mới</a></li>
            </ul>
            <div class="m-b-md">
                <%--<h3 class="m-b-none">Thêm bài viết</h3><br/>--%>
                <span style="color:red">${messageError}</span>
            </div>

            <section class="panel panel-default">
                <header class="panel-heading"><i class="fa fa-caret-square-o-right"></i> Thêm mới bài viết</header>
                <div class="panel-body" style="min-height: 600px;">
                    <form id="form_add_article" method="post" action="add" theme="simple"  enctype="multipart/form-data" class="form-horizontal" cssStyle="" validate="true">
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="line-height: 30px">Tiêu đề <code>*</code></label>
                            <div class="col-sm-10">
                                    <input name="title" id="title" placeholder="" maxlength="100" value="${item.title}" style="width:100%;" class="form-control valid_form"/>
                                <form:errors cssStyle="color: red" path="article.title" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="line-height: 30px">Nội dung ngắn <code>*</code></label>
                            <div class="col-sm-10">
                                <input name="shortContent" id="title" placeholder="" maxlength="1000" value="${item.shortContent}" style="width:100%;" class="form-control valid_form"/>
                                <form:errors cssStyle="color: red" path="article.title" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="line-height: 30px">Nội dung <code>*</code></label>
                            <div class="col-sm-10">
                                     <textarea id="contentnews" name="content" class="form-control valid_form content_news" required >${item.content}</textarea>

                                <form:errors cssStyle="color: red" path="article.content" />
                            </div>
                        </div>







                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-5">
                                <a href="<%=request.getContextPath()%>/admin/content/article/list" class="btn btn-default">Hủy bỏ</a>
                                <input type="button" onclick="submitAdd()" <%--data-loading-text="Thêm mới"--%>
                                       class="btn btn-primary" value="Thêm mới"/>

                            </div>
                        </div>
                    </form>

                </div>
            </section>
        </section>
        <footer class="footer bg-white b-t b-light"><small>Sản phẩm này là của thiện béo!</small></footer>
    </section>
    <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
</section>

<script type="text/javascript">


    var editor=CKEDITOR.replace( 'contentnews',
        {
            filebrowserBrowseUrl : '<%=request.getContextPath()%>/assets/ckfinder/ckfinder.html',
            filebrowserImageBrowseUrl : '<%=request.getContextPath()%>/assets/ckfinder/ckfinder.html?type=Images',
            filebrowserFlashBrowseUrl : '<%=request.getContextPath()%>/assets/ckfinder/ckfinder.html?type=Flash',
            filebrowserUploadUrl : '<%=request.getContextPath()%>/assets/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
            filebrowserImageUploadUrl : '<%=request.getContextPath()%>/assets/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
            filebrowserFlashUploadUrl : '<%=request.getContextPath()%>/assets/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Flash'
        });

    //    CKEDITOR.replace('contentnews');
    //    var editor=CKEDITOR.replace('contentnews');
    CKFinder.setupCKEditor(editor,'<%=request.getContextPath()%>/assets/ckfinder/');

</script>
<script>



    // This is a sample function which is called when a file is selected in CKFinder.



</script>

<script>


    //validate
    function submitAdd() {
        $('#form_add_article').submit();
    }


    

</script>