<%@page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>人员-examOnline</title>
<meta charset="utf-8">
<!--全局CSS-->
<link rel="stylesheet" type="text/css/admin" href="/bookshop/css/admin/share/bootstrap.min.css">
<link rel="stylesheet" type="text/css/admin" href="/bookshop/css/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css/admin" href="/bookshop/css/admin/share/myStyle.css">
<!--私有CSS-->
<%-- <link rel="stylesheet" href="/bookshop/plugins/myModal/myModal.css"> --%>

</head>
<body>
    <!-- 页面顶部导航条 -->
	<div class="row panel titlePanel">
		<div class="col-md-12">
			<div class="col-md-3">
				<h3>
					<i class="fa fa-dashboard"></i> 人员
				</h3>
			</div>
			<div class="col-md-6">
				<div style="text-align: center;"></div>
			</div>
			<div class="col-md-3">
				<ul class="functionTip app-breadcrumb breadcrumb">
					<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
					<li class="breadcrumb-item"><a href="">人员 / 详情</a></li>
				</ul>
			</div>
		</div>
	</div>
    <!-- 页面内容体 -->
    
	<div class="row">
		<div class="col-md-12">
			<div class="panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title" style="text-align:left;">
							<i class="fa fa-hand-o-right" aria-hidden="true"></i>基本信息
						</h4>
					</div>
					<div class="panel-body">
					    <div class="row">
					    	<div class="col-md-3">
					    	<img alt="学生照片" src="/bookshop/upload/pics/portrait.jpg" width="100" height="100">
					    	</div>
					    	<div class="col-md-9">
					    	   <div class="row">
					    	   		<div class="form-group col-md-6 form-inline">
					                  <label>学号：15310320101</label>
					                </div>
					    	    	<div class="form-group col-md-6 form-inline">
					                  <label>姓名：余星辰</label>
					                </div>
					                
									<div class="form-group col-md-6 form-inline">
					                  <label>性别：男</label>
					                </div>
					                 
					                <div class="form-group col-md-6 form-inline">
					                  <label>班级：软件工程15201</label>
					                </div>
					                
					                <div class="form-group col-md-6 form-inline">
					                  <label>手机：13668270608</label>
					                </div>
					                
					                <div class="form-group col-md-6 form-inline">
					                  <label>EMail：ZhangXiaohua@nsu.edu.cn</label>
					                </div>
					                
					                 <div class="form-group col-md-6 form-inline">
					                  <label>职务：副班长</label>
					                </div>
					                <div class="form-group col-md-6 form-inline">
					                  <label>寝室：D2301</label>
					                </div>
					    	   </div> 
					    	</div>
					    </div>
					    
						
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title" style="text-align:left;">
							<a data-toggle="collapse" data-parent="#accordion" 
							   href="#collapseCourses">
								<i class="fa fa-hand-o-right" aria-hidden="true"></i>目前上课情况
							</a>
						</h4>
					</div>
					<div id="collapseCourses" class="panel-collapse collapse in">
						<div class="panel-body">
							<table class="table table-hover table-bordered table-striped" id="dataTable">
				                <thead>
				                  <tr>
				                    <th>学年学期</th>
				                    <th>课程名</th>
				                    <th>开课单位</th>
				                    <th>学分</th>
				                    <th>课时</th>
				                    <th>类别</th>
				                    <th>教学班</th>
				                    <th>授课教师</th>
				                  </tr>
				                </thead>
				                <tbody>
				                  <tr>
				                    <td>2017-2018学年第2学期</td>
				                    <td>[0320101640]<br>Java框架应用开发</td>
				                    <td>信息与软件工程系<br>软件工程团队</td>
				                    <td>64</td>
				                    <td>4</td>
				                    <td>必修</td>
				                    <td>软件工程15201</td>
				                    <td><a href="/bookshop/pages/infoSys/teachers/detail.jsp">张小华(13508161234)<i class="fa fa-hand-o-left" aria-hidden="true"></i></a></td>
				                  </tr>
							      <tr>
				                    <td>2017-2018学年第2学期</td>
				                    <td>[0320101640]<br>Java框架应用开发</td>
				                    <td>信息与软件工程系<br>软件工程团队</td>
				                    <td>64</td>
				                    <td>4</td>
				                    <td>必修</td>
				                    <td>软件工程15201</td>
				                    <td><a href="/bookshop/pages/infoSys/teachers/detail.jsp">张小华(13508161234)<i class="fa fa-hand-o-left" aria-hidden="true"></i></a></td>
				                  </tr>
				                  <tr>
				                    <td>2017-2018学年第2学期</td>
				                    <td>[0320101640]<br>Java框架应用开发</td>
				                    <td>信息与软件工程系<br>软件工程团队</td>
				                    <td>64</td>
				                    <td>4</td>
				                    <td>选修</td>
				                    <td>软件工程15201</td>
				                    <td><a href="/bookshop/pages/infoSys/teachers/detail.jsp">张小华(13508161234)<i class="fa fa-hand-o-left" aria-hidden="true"></i></a></td>
				                  </tr>
				                  <tr>
				                    <td>2017-2018学年第2学期</td>
				                    <td>[0320101640]<br>Java框架应用开发</td>
				                    <td>信息与软件工程系<br>软件工程团队</td>
				                    <td>64</td>
				                    <td>4</td>
				                    <td>选修</td>
				                    <td>软件工程15201</td>
				                    <td><a href="/bookshop/pages/infoSys/teachers/detail.jsp">张小华(13508161234)<i class="fa fa-hand-o-left" aria-hidden="true"></i></a></td>
				                  </tr>
				                  <tr>
				                    <td colspan="8"><h5>总计：4门课</h5></td>
				                  </tr>
							  </tbody>
							</table>
						</div>
					</div>
				</div>
				
				
				
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title" style="text-align:left;">
							<a data-toggle="collapse" data-parent="#accordion" 
							   href="#collapseResearch">
								<i class="fa fa-hand-o-right" aria-hidden="true"></i>目前科研情况
							</a>
						</h4>
					</div>
					<div id="collapseResearch" class="panel-collapse collapse in">
						<div class="panel-body">
							<table class="table table-hover table-bordered table-striped" id="dataTable">
				                <thead>
				                  <tr>
				                    <th>类别</th>
				                    <th>名称</th>
				                    <th>级别</th>
				                    <th>状态</th>
				                    <th>指导老师</th>
				                  </tr>
				                </thead>
				                <tbody>
				                  <tr>
				                    <td>论文</td>
				                    <td>移动应用面部情感识别方法</td>
				                    <td>北大核心期刊</td>
				                    <td>待发表</td>
				                    <td><a href="/bookshop/pages/infoSys/teachers/detail.jsp">张小华(13508161234)<i class="fa fa-hand-o-left" aria-hidden="true"></i></a></td>
				                  </tr>
							      <tr>
				                    <td>项目</td>
				                    <td>智能电动车车载系统的研发</td>
				                    <td>省级</td>
				                    <td>待结题</td>
				                    <td><a href="/bookshop/pages/infoSys/teachers/detail.jsp">张小华(13508161234)<i class="fa fa-hand-o-left" aria-hidden="true"></i></a></td>
				                  </tr>
				                  <tr>
				                    <td colspan="8"><h5>总计：论文1篇；项目1项</h5></td>
				                  </tr>
							  </tbody>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-footer">
					  <div class="btn-group">
						<button type="button" class="btn btn-primary" onclick="navTo('/bookshop/pages/infoSys/diseaseTypes/list.jsp')"><i class="fa fa-fw fa-lg fa-times-circle"></i>返回</button>
					  </div>
				    </div>
				</div>
			</div>
			
		</div>
	</div>

	<!--全局JS -->
	<script src="/bookshop/js/admin/share/jquery-3.2.1.min.js"></script>
	<script src="/bookshop/js/admin/share/bootstrap.min.js"></script> 
	<script src="/bookshop/js/admin/share/share.js"></script>
	
	<!--私有JS-->

	<script type="text/javascript">
    
        
      
    </script>
</body>