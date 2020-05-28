
<%@ page isELIgnored="false" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%!public boolean isActive(String navPath, HttpServletRequest request) {
		String namespace = (String) request.getAttribute("javax.servlet.forward.request_uri");
		return namespace.startsWith(navPath);
	};
	public boolean isActiveIndex(String navPath, HttpServletRequest request) {
		String namespace = (String) request.getAttribute("javax.servlet.forward.request_uri");
		return namespace.equals(navPath);
	}
	public boolean isNavXs(HttpServletRequest request) {
		if (request.getSession().getAttribute("nav-xs") != null) {
			Boolean thugon = (Boolean) request.getSession().getAttribute("nav-xs");
			return thugon.equals(true);
		}
		return false;
	}%>

<aside
	class="bg-dark lter b-r aside-md hidden-print hidden-xs<%=isNavXs(request) ? "nav-xs" : ""%>"
	id="nav">
	<section class="vbox">

		<section class="w-f scrollable">
			<div class="slim-scroll" data-height="auto"
				data-disable-fade-out="true" data-distance="0" data-size="5px"
				data-color="#333333">
				<nav class="nav-primary hidden-xs">
					<ul class="nav">
						<li
							class="<%=isActiveIndex(request.getContextPath() + "/", request) ? "active" : ""%>"><a
							href="<%=request.getContextPath()%>/admin"> <i
								class="fa fa-dashboard icon"> <b class="bg-info"></b>
							</i><span>BÁO CÁO</span></a></li>
						<!-- Quan ly danh muc -->
						<li><a
							href="<%=request.getContextPath()%>/system/category/list"> <i
								class="fa fa-cogs icon"> <b class="bg-info"></b>
							</i><span>Quản lý danh mục</span></a></li>

				<!-- 	Quan ly bai viet -->
						<li
							class="<%=isActive(request.getContextPath() + "/admin/content", request) ? "active" : ""%>"><a
							href="#" class=""> <i class="fa fa-file-text icon"> <b class="bg-primary"></b>
							</i> <span class="pull-right"> <i
									class="fa fa-angle-down text"></i> <i
									class="fa fa-angle-up text-active"></i>
							</span> <span>Quản lý bài viết</span>
						</a>
							<ul class="nav lt">
							
								<li
									class="<%=isActive(request.getContextPath() + "/system/article", request) ? "active" : ""%> "><a
									href="<%=request.getContextPath()%>/system/article/list"
									class=""> <i class="fa fa-angle-right"></i>
										<span>Bài viết</span>
								</a></li>
								
							</ul></li>
					
						<!-- Quan tri he thong -->
						<sec:authorize
							access="hasAnyRole('ROLE_SYSTEM_USER_VIEW','ROLE_SYSTEM_GROUP_VIEW','ROLE_SYSTEM_LOG_VIEW')">
							<li
								class="<%=isActive(request.getContextPath() + "/admin/system", request) ? "active" : ""%>"><a
								href="#" class=""> <i class="fa fa-cogs icon"> <b
										class="bg-warning"></b>
								</i> <span class="pull-right"> <i
										class="fa
            fa-angle-down text"></i> <i
										class="fa fa-angle-up text-active"></i>
								</span> <span>Quản trị hệ thống</span>
							</a>
								<ul class="nav lt">
									<sec:authorize access="hasRole('ROLE_SYSTEM_USER_VIEW')">
										<li
											class="<%=isActive(request.getContextPath() + "/admin/system/user", request) ? "active" : ""%>"><a
											href="<%=request.getContextPath()%>/admin/system/user/list"
											class=""> <i class="fa fa-angle-right"></i> <span>Người
													dùng</span>
										</a></li>
									</sec:authorize>
									<sec:authorize access="hasRole('ROLE_SYSTEM_GROUP_VIEW')">
										<li
											class="<%=isActive(request.getContextPath() + "/admin/system/group", request) ? "active" : ""%>"><a
											href="<%=request.getContextPath()%>/admin/system/group/list"
											class=""> <i class="fa fa-angle-right"></i> <span>Nhóm
													quyền</span>
										</a></li>
									</sec:authorize>

								</ul></li>
						</sec:authorize>

					</ul>
				</nav>
			</div>
		</section>

		<footer class="footer lt hidden-xs b-t b-dark">

			<a href="#nav" id="changeNavXS" data-toggle="class:nav-xs"
				class="pull-right btn btn-smbtn-dark btn-icon"> <i
				class="fa fa-angle-left text"></i> <i
				class="fa fa-angle-right text-active"></i>
			</a>
		</footer>

	</section>
</aside>

<script type="text/javascript">
        $(document).ready(function() {
        $('#changeNavXS').click(function (){
        $.ajax({
        type: "get",
        url: "<%=request.getContextPath()%>
	/change-nav",
				success : function(msg) {
				}
			});
		});

	});
</script>