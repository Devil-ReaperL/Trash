<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" charset="width=device-width, initial-scale=1" user-scalable="no";>
	<!--手机设备显示-->
	<link href="<%=request.getContextPath()%>/js/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/layer/layer.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/Validform/js/Validform_v5.3.2.js"></script>
	<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath()%>/css/sb-admin.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/css/style-bar.css" rel="stylesheet" type="text/css">

	<script type="text/javascript">
		function detail(carapplyId){
			layer.load();
			$('#CarDetail').load('<%=request.getContextPath()%>/carapply/queryById.action?carapplyId='+carapplyId,
					function(){
				layer.closeAll('loading');
				$('#carapplyInfo').modal({
					backdrop:'static', /*点击黑色区域不关闭*/
					keyboard:false     /*ESC键不关闭*/
				});
				
			});
		}
	</script>
<title>车辆申请</title>
</head>

<body>

	<!-- 网页头部-->

	<jsp:include page="/include/header.jsp"></jsp:include>
	
	<!-- 每个模块的部分 -->
	<div class="container">
	
	<!-- 左侧边栏 -->
	<div class="col-md-3" id="myScrollSpy" style="margin-top:30px;">
		<dropdown class="col-xs-12" style="margin-bottom:30px;"> 
				<input id="toggle1" type="checkbox" checked>
				<label for="toggle1"class="animate">个人中心<i class="fa fa-bars float-right"></i></label>
				<ul class="animate">
					<a href="<%=request.getContextPath()%>/empInfo/query.action">
						<li class="animate">员工信息维护<i class="fa fa-code float-right"></i></li>
					</a>
					<a href="<%=request.getContextPath()%>/empInfo/queryAll.action">
						<li class="animate">检索他人信息<i class="fa fa-code float-right"></i></li>
					</a>
	                <a href="<%=request.getContextPath()%>/pages/EmpInfo/apply.jsp">
	                	<li class="animate actived">个人申请中心<i class="fa fa-code float-right"></i></li>
	                </a>	              
				</ul>
			</dropdown>
	</div>
	<!-- 左侧边栏完成 -->
         
         <!-- 右侧内容-->
			<div class="col-md-9">
			
				<h3 class="page-header">
					我的车辆申请记录
				</h3>	   
				<c:if test="${list.size()>0 }">
                <table class="table table-striped table-bordered table-condensed table-hover">
                    <thead>
                    <tr>
                        <th>
                        	申请编号
                        </th>
                        <th>
                        	行政主管
                        </th>
                       	<th>
                         	 开始日期
                        </th>	
                        <th>
                         	 结束日期
                        </th>				
                        <th width="67">
                        	申请状态
                        </th>
                        <th>
                        	申请日期
                        </th>
                        <th width="45">
                        	详细
                        </th>
                    </tr>	
                    </thead>	
                    <tbody>		
                    <c:forEach items="${list}" var="carapply">									
		                <tr>
		                	<td>${carapply.carapplyId }</td>
		                	<td>${carapply.leaderName }</td>
		                  	<td><fmt:formatDate value="${carapply.startTime}" pattern="yyyy年MM月dd日"/></td>
		                  	<td><fmt:formatDate value="${carapply.endTime}" pattern="yyyy年MM月dd日"/></td>
		                  	<td class="text-center">
		                  		<c:if test="${carapply.endstatus==1}">
						    		<span class="label label-primary">审核中</span>
						    	</c:if>
						    	<c:if test="${carapply.endstatus==2}">
						    		<span class="label label-success">已批准</span>
						    	</c:if>
						    	<c:if test="${carapply.endstatus==3}">
						    		<span class="label label-danger">未通过</span>
						    	</c:if>
						    	<c:if test="${carapply.endstatus==4}">
						    		<span class="label label-info">已派车</span>
						    	</c:if>
						    	<c:if test="${carapply.endstatus==5}">
						    		<span class="label label-warning">待派车</span>
						    	</c:if>
						    </td>
		                  	<td><fmt:formatDate value="${carapply.applyTime}" pattern="yyyy年MM月dd日"/></td>
		                  	<td>
			                	<a href="javascript:detail(${carapply.carapplyId})" class="btn btn-default btn-xs">详请</a>     
		                  	</td>
		                </tr>		                
		                </c:forEach>
                     </tbody>
                </table>
                </c:if>
                
                <c:if test="${list.size()<=0 }">
                	<div class="alert alert-info" role="alert">
		        		当前没有用车申请记录
		        	</div>
                </c:if>
			    <div class="col-sm-offset-9">
			    	<a class="btn btn-primary btn-block" href="<%=request.getContextPath()%>/pages/CarApply/AddCarApply.jsp">发起新用车申请</a>
	       			<input type="button" class="btn btn-success btn-block" value="返回" onclick="history.back();">
	       			<!-- 响应式布局，移动端才会有返回主页的按钮 -->
	       			<input type="button" class="btn btn-success btn-block visible-xs" value="返回主页" onclick="javascript:document.location.href='<%=request.getContextPath() %>/pages/index.jsp'">
	       			<!-- / --> 			    		
	       		</div>
       		
		    	<!-- 包含分页 -->
		    	<jsp:include page="/include/pager.jsp"/>   	   		    		    	  
		     </div>  
		 <!--右侧内容完 -->
	</div>

	<!--网页底部-->
	<jsp:include page="/include/footer.jsp"></jsp:include>
	<!--网页底部结束-->
	<div class="modal fade" id="carapplyInfo" tabIndex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	<div class="modal-dialog">
        	<div class="modal-content">
            	<div class="modal-header">
                	<button id="closeBtn" type="button" class="close" data-dismiss="modal">&times;</button>
                	<h4 class="text-center">用车申请详请</h4>
                </div>
            	<div class="modal-body">
					<div id="CarDetail"></div>  
                </div>
            </div>
        </div> 
    </div>
</body>

</html>