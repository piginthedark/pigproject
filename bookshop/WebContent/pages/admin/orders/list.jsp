<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>订单列表-网上书店</title>
<meta charset="utf-8">
<!--全局CSS-->
<link rel="stylesheet" type="text/css" href="/bookshop/css/admin/share/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/bookshop/css/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/bookshop/css/admin/share/myStyle.css">
<!--私有CSS-->
<link rel="stylesheet" href="/bookshop/plugins/myModal/myModal.css">
<link href="/bookshop/plugins/datetimePicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

</head>

<body>
    <!-- 页面顶部导航条 -->
	<div class="row panel titlePanel">
		<div class="col-md-12">
			<div class="col-md-3">
				<h3>
					<i class="fa fa-dashboard"></i>订单管理
				</h3>
			</div>
			<div class="col-md-6">
				<div style="text-align: center;"></div>
			</div>
			<div class="col-md-3">
				<ul class="functionTip app-breadcrumb breadcrumb">
					<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
					<li class="breadcrumb-item"><a href="">订单管理 / 列表</a></li>
				</ul>
			</div>
		</div>
	</div>
    <!-- 页面内容体 -->
    
	<div class="row">
		<div class="col-md-12">
      		<div class="panel panel-default" style="margin-bottom: 0px;">
				<div class="panel-heading">
					<h3 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseQuery">
							<i class="fa fa-search" style="color:#b6124a;"></i>查询
						</a>
					</h3>
				</div>
				<div id="collapseQuery" class="panel-collapse collapse">
				   <form>
						<div class="panel-body">
							<div class="col-md-12 row">
								<div class="form-group col-md-6 form-inline">
								   <label class="control-label">订单<br>日期</label>
								   
								   <div id="fromTimeDivId" class="input-group date form_datetime" data-date="" data-date-format="yyyy-mm-dd" data-link-field="fromDate" data-link-format="yyyy-mm-dd"
								   	style="width: 15rem">
								   		<input class="form-control" type="text" value="" readonly >
								   		<span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
										<input type="hidden" id="fromDateId" value="" name="fromDate"/>
								   </div>
								   <label class="control-label">~</label>
								   
								   <div id="endTimeDivId" class="input-group date form_datetime" data-date="" data-date-format="yyyy-mm-dd" data-link-field="endDate" data-link-format="yyyy-mm-dd"
									style="width: 15rem">
										<input class="form-control" type="text" value="" readonly >
										<span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
										<input type="hidden" id="endDateId" value="" name="endDate"/>
								   </div>
								   
								</div>
						        <div class="col-md-12 text-center" style="margin-bottom: 0px;">
			              			<button class="btn btn-primary" type="submit"><i class="fa fa-search"></i>查询</button>
			   				    </div>
						  </div>
					  </div>
				  </form>
			  </div>
		  </div>
      	</div>
		
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="row col-md-12">
	                	<div class="form-group col-md-6 form-inline" style="padding-left: 10px;margin-bottom: 0px;">
	                        	<label>每页显示 </label>
	                        	<select name="dataTable_length" class="form-control form-control-sm" style="width:10rem;">
		                            <option value="10">10</option>
		                            <option value="25">25</option>
		                            <option value="50">50</option>
		                            <option value="100">100</option>
	                            </select>
	                            <label>项结果</label> 
	                      </div>
	                       <div class="col-md-6">
							  
						   </div>
	                </div>
				</div>
				<div class="panel-body">
				
	              <table class="table table-hover table-bordered table-striped" id="dataTable">
	                <thead>
	                  <tr>
						<th >时间</th>
						<th >总价</th>
						<th >运费</th>
						<th >付款</th>
						<th >详情</th>
	                  </tr>
	                </thead>
	                <tbody>
	                  <tr>
	                  	<td>2018-12-23</td>
	                  	<td ><span class="amount">&yen;165.00</span></td>
	                  	<td >&yen;0.00</td>
	                  	<td >&yen;165.00</td>
	                  	<td >
							<a href="#" rel="rs-dialog" data-target="orderDeatilModal"><i class="fa fa-external-link"></i></a>
						</td>
	                  </tr>
	                  
	                </tbody>
	              </table>
              
			    </div>
			    <div class="panel-footer">
			    	 <div class="row paginationBox">
						<div class="col-md-4">
							<div class="paginationInfo">显示第 1 至 10 项结果，共 57 项</div>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-4">
							<ul class="pagination">
							    <li><a href="#">&laquo;</a></li>
							    <li class="active"><a href="#">1</a></li>
							    <li><a href="#">2</a></li>
							    <li><a href="#">3</a></li>
							    <li><a href="#">4</a></li>
							    <li><a href="#">5</a></li>
							    <li><a href="#">&raquo;</a></li>
							  </ul>
						</div>
					</div>
			    </div>
			</div>
		</div>
		
	</div>

	<!-- 导入模态框 -->
	<div class="rs-dialog" id="orderDeatilModal">
		<form action="">
			<div class="rs-dialog-box">
				<a class="close dismiss" href="#">&times;</a>
				<div class="rs-dialog-header">
					<h3>订单详情</h3>
				</div>
				<div class="rs-dialog-body">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group col-md-12 form-inline" >
			                  <label class="control-label-norequired">时间</label>
							  <label class="control-label-norequired">2018-12-23</label>
		                     </div>
		                    
							<div class="form-group col-md-12 form-inline" >
			                  <label class="control-label-norequired">总价</label>
			                 <label class="control-label-norequired">&yen;165.00</label>
			                </div>
							
							<div class="form-group col-md-12 form-inline" >
							  <label class="control-label-norequired">运费</label>
							 <label class="control-label-norequired">&yen;0.00</label>
							</div>
			                
							<div class="form-group col-md-12 form-inline" >
							  <label class="control-label-norequired">收款</label>
							 <label class="control-label-norequired">&yen;165.00</label>
							</div>
							
						</div>
						<div class="col-md-12">
							<table class="table table-hover table-bordered table-striped">
								<caption><h4>订单细项</h4></caption>
								
								<tbody>
									<tr align="center">
										<td ><a href="#"><img src="/bookshop/img/client/cart/1.jpg" alt="man" width="50" height="50"/></a></td>
										<td ><a href="#">Vestibulum suscipit</a></td>
										<td ><span class="amount">&yen;165.00</span></td>
										<td >1</td>
										<td >&yen;165.00</td>
										
									</tr>
									<tr align="center">
										<td ><a href="#"><img src="/bookshop/img/client/cart/2.jpg" alt="man" width="50" height="50"/></a></td>
										<td ><a href="#">Vestibulum dictum magna</a></td>
										<td ><span class="amount">&yen;50.00</span></td>
										<td >1</td>
										<td >&yen;50.00</td>
									</tr>
									<tr align="center">
										<td >总计</td>
										<td colspan="4">&yen;165.00</td>
										
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
			</div>
		</form>	
	</div>
	

	<!--全局JS-->
	<script src="/bookshop/js/admin/share/jquery-3.2.1.min.js"></script>
	<script src="/bookshop/js/admin/share/bootstrap.min.js"></script>
	<script src="/bookshop/js/admin/share/share.js"></script>
	<!--私有JS-->
	<script src="/bookshop/plugins/myModal/myModal.js"></script>
	<script type="text/javascript" src="/bookshop/plugins/datetimePicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="/bookshop/plugins/datetimePicker/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	
	<script type="text/javascript">
	  $("#fromTimeDivId").datetimepicker({
	  		format: 'yyyy-mm-dd',
	          language:  'zh-CN',
	          weekStart: 1,
	          todayBtn:  true,
	  		autoclose: true,
	  		todayHighlight: 1,
	  		startView: "month",
	  		forceParse: 0,
	          showMeridian: 1,
	          minView: "month"//设置只显示到月份
	      });
		  
      $("#endTimeDivId").datetimepicker({
      		format: 'yyyy-mm-dd',
              language:  'zh-CN',
              weekStart: 1,
              todayBtn:  true,
      		autoclose: true,
      		todayHighlight: 1,
      		startView: "month",
      		forceParse: 0,
              showMeridian: 1,
              minView: "month"//设置只显示到月份
          });
          
        
    </script>
</body>