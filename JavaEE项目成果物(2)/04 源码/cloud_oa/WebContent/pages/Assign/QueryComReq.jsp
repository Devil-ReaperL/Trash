<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询公司需求</title>
	<meta charset="utf-8">
	<meta name="viewport" charset="width=device-width, initial-scale=1" user-scalable="no";>
	<!--手机设备显示-->
	<link href="<%=request.getContextPath()%>/js/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">	
	<link href="<%=request.getContextPath()%>/css/common.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/Validform/js/Validform_v5.3.2.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/datetimepicker/jquery.datetimepicker.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/layer/layer.js"></script>
	<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css">

	<link href="<%=request.getContextPath()%>/css/style-bar.css" rel="stylesheet" rel="stylesheet" type="text/css">

	<script type="text/javascript">

	/*公司需求模态层修改*/
	function update(comReqId) {
		layer.open({
			type: 2,
			title: '修改公司需求',
			maxmin: false,
			shadeClose: true, //点击遮罩关闭层
			closeBtn:2,
			area : ['600px' , '450px'],
			skin: 'layui-layer-lan',
			content: ['<%=request.getContextPath()%>/comreq/updateComReq.action?comReqId='+ comReqId,'no']
		});	
	}
	
	/*删除确认*/
	function del(comReqId,btnObj) {
		//询问框
		layer.confirm('确定要删除该数据吗', {
			btn: ['确定','取消'], //按钮
			closeBtn:2,
			shade: false //显示遮罩
		}, function(){
			/*异步删除*/
			var url = '<%=request.getContextPath()%>/comreq/delete.action?comReqId=' + comReqId + '&pageNum=' + ${pager.pageNum};
			$.get(url,function(data){
				$(btnObj).parent().parent().parent().parent().parent().remove();
				layer.msg('删除成功', {icon: 1});
			}) ;
		}, function(){
			layer.msg('取消删除', {shift: 6});
		});			
	}
</script>
</head>

<body>

<!-- 网页头部-->

<jsp:include page="/include/header.jsp"></jsp:include>

<!-- 每个模块的部分 -->

<div class="container">

	<!-- 侧边栏 -->
	<div class="col-md-3" id="myScrollSpy" style="margin-top:30px;">
        <dropdown class="col-xs-12" style="margin-bottom:30px;"> 
		<input id="toggle1" type="checkbox" checked>
		<label for="toggle1"class="animate">外派人才库<i class="fa fa-bars float-right"></i></label>
		<ul class="animate">
			<a href="<%=request.getContextPath() %>/assemp/query.action">
				<li class="animate">外派人员列表<i class="fa fa-code float-right"></i></li>
			</a>
			<a href="<%=request.getContextPath() %>/asscom/query.action">
				<li class="animate">合作公司列表<i class="fa fa-code float-right"></i></li>
			</a>
            <a href="<%=request.getContextPath() %>/comreq/query.action">
            	<li class="animate actived">公司需求列表<i class="fa fa-code float-right"></i></li>
            </a>
            <a href="<%=request.getContextPath() %>/empcom/query.action">
            	<li class="animate">外派记录显示<i class="fa fa-code float-right"></i></li>
            </a>
		</ul>
	</dropdown>
	</div>
	<!-- 侧边栏完成 -->

	<!-- 右侧内容-->
	<div class="col-md-9">
		<h3 class="page-header">公司需求情况</h3>

		<table  class="table table-striped table-bordered table-condensed table-hover">
			<thead>
				<tr>
					<th>公司编号</th>
					<th>公司名称</th>
					<th>职位需求</th>
					<th>工作类型</th>
					<th>工资/月</th>
					<th style="text-align:center">操作</th>
				</tr>
			</thead>
			<tbody>
				<!-- 遍历输出数据 -->
				<c:forEach items="${list}" var="comreq">
					<tr>
						<td id=${comreq.comReqId }>${comreq.assComId }</td>
						<td>${comreq.comName }</td>
						<td>${comreq.posReq }</td>
						<td>${comreq.typeOfWork }</td>
						<td>${comreq.salaryPermonth }</td>
						<td style="width:10%;text-align:center">
							<div class="btn-group btn-xs">
								<button type="button" class="btn btn-default btn-xs dropdown-toggle" id="dropdownMenu" data-toggle="dropdown">
									操作
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li>
										<a href="javascript:void(0)" onclick="update(${comreq.comReqId });">修改公司需求</a>
									</li>
									<li>
										<a href="javascript:void(0)" onclick="del(${comreq.comReqId },this);">删除</a>
									</li>
								</ul>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="col-sm-offset-8">
			<a href="<%=request.getContextPath() %>
				/pages/Assign/AddComReq.jsp?pageNum=${pager.pageCount}" class="btn btn-primary btn-block">指定新的需求
			</a>
			<!-- 响应式布局，移动端才会有返回主页的按钮 -->
			<input type="button" class="btn btn-success btn-block visible-xs" value="返回主页" onclick="javascript:document.location.href='<%=request.getContextPath() %>/pages/index.jsp'">
			<!-- / -->
		</div>
		<!-- 包含分页 -->
		<jsp:include page="/include/AdvancedPager.jsp"/>

	</div>
</div>
<!--右侧内容完 -->

<!--网页底部-->
<jsp:include page="/include/footer.jsp"></jsp:include>
<!--网页底部结束-->
</body>

</html>