<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" charset="width=device-width, initial-scale=1" user-scalable="no">
	<!--手机设备显示-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="../../js/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../../js/datetimepicker/jquery.datetimepicker.css">
	<link rel="stylesheet" type="text/css" href="../../js/Validform/css/style.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/layer/layer.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/Validform/js/Validform_v5.3.2.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/datetimepicker/jquery.datetimepicker.js"></script>
	<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath()%>/css/sb-admin.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/css/style-bar.css" rel="stylesheet" type="text/css">

	<script type="text/javascript">
	function date(end){
		var start=$('#startTime').val();
		var first = start.split('-');
		var firstdate = new Date(first[0],first[1],first[2]);
		var firstdates = firstdate.getTime();
		
		var last = end.split('-');
		var lastdate = new Date(last[0],last[1],last[2]);
		var lastdates = lastdate.getTime();
		
		if(firstdates>=lastdates){
			return false;
		}else {
			return true;
		}

	}
	
	function isdate(start){
		var first = start.split('-');
		var mon = parseInt(first[1])-1;
		var firstdate = new Date(first[0],mon,first[2]);
		var firstdates = firstdate.getTime();
		
		var today = new Date();
		var todaydate = today.getTime();
		if(firstdates<=todaydate){
			return false;
		}else {
			return true;
		}
		
	}
	$(document).ready(function(){
		
		
		//一行代码搞定，提交表单的时候会自动触发验证程序
		$('#addForm').Validform({
			tiptype:3,
			datatype:{'date':function(gets,obj,curform,regxp){
					if (!isdate(gets)) {
						return false;									
						}
					return true;
					},
					'end':function(gets,obj,curform,regxp){
						if (!date(gets)) {
							return false;									
							}
						return true;
					}}
		});
		
		//日历框
		$('#startTime').datetimepicker({		
			lang:'ch',
			timepicker:false,
			format:'Y-m-d'
		});
		
		$('#endTime').datetimepicker({		
			lang:'ch',
			timepicker:false,
			format:'Y-m-d'
		});
		
	});
	
	</script>
	<title>请假申请</title>
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
         <!-- 侧边栏完成 -->
         
         <!-- 右侧内容-->
		<div class="col-md-9">
			
            <h3 class="page-header">新增请假申请</h3>	 
              
            <form id="addForm" name="form1" method="post" action="<%=request.getContextPath()%>/leave/insert.action">
   				
   				<div class="row form-group"> 
       				<label class="col-md-offset-2 col-md-2 control-label float-left">请假原因<span style="color:red">*</span></label>
       				<div class="col-md-4">
                   		<textarea class="form-control" name="reason" id="reason" placeholder="请输入请假原因" datatype="*5-300" nullmsg="请输入请假原因！" errormsg="输入长度范围为5-300字！"></textarea>
       				</div>
   				</div>
   				
   				<div class="row form-group"> 
       				<label class="col-md-offset-2 col-md-2 control-label float-left">开始日期<span style="color:red">*</span></label>
       				<div class="col-md-4">
                   		<input class="form-control" name="startTime" id="startTime" placeholder="点击选择请假开始日期" datatype="date" nullmsg="请选择请假开始日期！" errormsg="请选择今天以后的日期！" type="text" readonly>
       				</div>
   				</div>
	   				
   				<div class="row form-group"> 
       				<label class="col-md-offset-2 col-md-2 control-label float-left">结束日期<span style="color:red">*</span></label>
       				<div class="col-md-4">
                   		<input class="form-control" name="endTime" id="endTime" placeholder="点击选择请假结束日期" datatype="end" nullmsg="请选择请假结束日期！" errormsg="结束日期必须大于开始日期！" type="text" readonly>
       				</div>
   				</div>
   				
                <div class="row">
	               	<div class="col-md-offset-4 col-md-4">
	               		<input type="submit" class="btn btn-primary btn-block" value="提交申请" >
	                    <input type="button" class="btn btn-success btn-block" value="返回" onclick="history.back();">
	                <!-- 响应式布局，移动端才会有返回主页的按钮 -->
						<input type="button" class="btn btn-success btn-block visible-xs" value="返回主页" onclick="javascript:document.location.href='<%=request.getContextPath() %>/pages/index.jsp'">	                <!-- / --> 			    		
	            	</div>
            	</div>
         	</form>  	
		</div>  
		<!--右侧内容完 -->
	</div>
		<!--网页底部-->
	<jsp:include page="/include/footer.jsp"></jsp:include>
	<!--网页底部结束-->
</body>

</html>