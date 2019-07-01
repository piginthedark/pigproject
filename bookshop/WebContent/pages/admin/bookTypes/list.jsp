<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>书类管理-网上书店</title>
<meta charset="utf-8">
<!--全局CSS-->
<link rel="stylesheet" type="text/css" href="/bookshop/css/admin/share/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/bookshop/css/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/bookshop/css/admin/share/myStyle.css">
<!--私有CSS-->
<link rel="stylesheet" href="/bookshop/plugins/myModal/myModal.css">
</head>

<body>
    <!-- 页面顶部导航条 -->
	<div class="row panel titlePanel">
		<div class="col-md-12">
			<div class="col-md-3">
				<h3>
					<i class="fa fa-dashboard"></i> 书类管理
				</h3>
			</div>
			<div class="col-md-6">
				<div style="text-align: center;"></div>
			</div>
			<div class="col-md-3">
				<ul class="functionTip app-breadcrumb breadcrumb">
					<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
					<li class="breadcrumb-item"><a href="">书类 / 列表</a></li>
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
								<div class="form-group col-md-6 form-inline" >
				                  <label class="control-label">父类</label>
								  <select class="form-control">
				                       <option>-------请选择------</option>
				                       <option>计算机</option>
									   <option>---程序设计语言</option>
									   <option>---软件工程</option>
				                       <option>文学</option>
				                       <option>医疗健康</option>
				                       
			                      </select>			                
			                     </div>
			                     
			                     <div class="form-group col-md-6 form-inline">
				                  <label class="control-label">名称</label>
				                  <input class="form-control" type="text" placeholder="请输入书类的关键词">
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
							  <div class="form-group form-inline" style="text-align: right;">
							  	<a href="#" rel="rs-dialog" data-target="importModal"><button class="btn btn-default" type="button"><i class="fa fa-arrow-circle-o-up fa-fw fa-lg"></i>导入</button></a>
							  	<a href="#" rel="rs-dialog" data-target="updateModal"><button class="btn btn-default" type="button"><i class="fa fa-fw fa-lg fa-plus-circle"></i>添加</button></a>
							  </div>
	                       </div>
	                </div>
				</div>
				<div class="panel-body">
				
	              <table class="table table-hover table-bordered table-striped" id="dataTable">
	                <thead>
	                  <tr>
	                    <th width="30%">名称</th>
	                    <th width="55%">说明</th>
	                   	<th width="15%">操作</th>
	                  </tr>
	                </thead>
	                <tbody>
	                  <tr>
	                    <td style="text-align: left;">计算机</td>
	                    <td>计算机</td>
	                    
	                    <td>
	                    	<button class="btn btn-success" type="button" disabled="disabled">详情</button>
	                        <a href="/bookshop/pages/admin/bookTypes/modify.html"><button class="btn btn-warning" type="button">修改</button></a>
	                        <a href="/bookshop/pages/admin/shares/success.html"><button class="btn btn-danger" type="button">禁用</button></a>
	                    </td>
	                  </tr>
	                 <tr>
	                    <td style="text-align: left;">------程序设计</td>
	                    <td></td>
	                    <td>
	                    	<button class="btn btn-success" type="button" disabled="disabled">详情</button>
	                        <a href="/bookshop/pages/admin/bookTypes/modify.html"><button class="btn btn-warning" type="button">修改</button></a>
	                        <a href="/bookshop/pages/admin/shares/success.html"><button class="btn btn-danger" type="button">禁用</button></a>
	                    </td>
	                  </tr>
	                  <tr>
	                     <td style="text-align: left;">------软件工程</td>
	                     <td></td>
	                     <td>
	                     	<button class="btn btn-success" type="button" disabled="disabled">详情</button>
	                         <a href="/bookshop/pages/admin/bookTypes/modify.html"><button class="btn btn-warning" type="button">修改</button></a>
	                         <a href="/bookshop/pages/admin/shares/success.html"><button class="btn btn-danger" type="button">禁用</button></a>
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


	<!-- 添加/修改模态框 -->
	<div class="rs-dialog" id="updateModal">
		<form action="">
			<div class="rs-dialog-box">
				<a class="close dismiss" href="#">&times;</a>
				<div class="rs-dialog-header">
					<h3>新增病症类别</h3>
				</div>
				<div class="rs-dialog-body">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group col-md-12 form-inline" >
			                  <label class="control-label-required">父类</label>
			                  <select class="form-control">
			                       <option>-------请选择------</option>
			                       <option>计算机</option>
			                  		<option>---程序设计语言</option>
			                  		<option>---软件工程</option>
			                       <option>文学</option>
			                       <option>医疗健康</option>
			                       
			                  </select>		
			                </div>
			                <div class="form-group col-md-12 form-inline" >
			                  <label class="control-label-required">名称</label>
			                  <input class="form-control" type="text" placeholder="请输入书类的名称">
			                </div>
							
			                <div class="form-group col-md-12 form-inline" >
			                  <label class="control-label-norequired">说明</label>
			                  <textarea class="form-control" rows="2" cols="40" placeholder="请输入书类的说明"></textarea>
			                </div>
						</div>
					</div>
				</div>
				<div class="rs-dialog-footer form-footer">
					<input type="button" class="btn btn-danger dismiss" value="提交">
				</div>
			</div>
		</form>	
	</div>

	<!-- 导入模态框 -->
	<div class="rs-dialog" id="importModal">
		<form action="">
			<div class="rs-dialog-box">
				<a class="close dismiss" href="#">&times;</a>
				<div class="rs-dialog-header">
					<h3>批量导入病症类别</h3>
				</div>
				<div class="rs-dialog-body">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group col-md-12 form-inline" >
			                  <label class="control-label-norequired">模板</label>
							  <label class="control-label-norequired"><a href="">bookTypes.xls</a></label>
		                     </div>
		                    
							<div class="form-group col-md-12 form-inline" >
			                  <label class="control-label-required">文件</label>
			                  <input class="form-control" type="file">
			                </div>
			                
						</div>
					</div>
				</div>
				<div class="rs-dialog-footer form-footer">
					<input type="button" class="btn btn-danger dismiss" value="提交">
				</div>
			</div>
		</form>	
	</div>
	
	<!-- 大图模态框 -->
	<div class="rs-dialog" id="bigPicModal">
		<form action="">
			<div class="rs-dialog-box">
				<a class="close dismiss" href="#">&times;</a>
				
				<div class="rs-dialog-body">
					<div class="row">
						<div class="col-md-12" style="text-align:center;">
							<img src="/bookshop/images/university.jpg" alt="头像" width="400" height="400">
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

	<script type="text/javascript">
    
        
      
    </script>
</body>