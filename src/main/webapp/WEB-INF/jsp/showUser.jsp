<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp"%>
<html>
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/ace/css/font-awesome.min.css" />
<script type="text/javascript" src="${ctx}/reports/tiles/js/jquery-2.2.3.min.js"></script>
<body>
<div class="container">
<div class="col-md-12">
<div class="content">
		<div class="panel-body">
			<div class="adv-table">
			 <form id="pageForm" action="${ctx }/user/showUser" method="post">
				<table  class="display table table-bordered table-striped" id="dynamic-table">
					<thead>
						<tr>
							<th  width="10%">编号</th>
							<th  width="25%">姓名</th>
							<th  width="25%">年龄</th>
							<th  width="25%">密码</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${pageInfo.list}" var="user">
						<tr>
						   <td>${user.id }</td>
						   <td>${user.userName }</td>
						   <td>${user.age }</td>
						   <td>${user.password }</td>
						   
						</tr>
					</c:forEach>	
					</tbody>
				</table>
				<jsp:include page="/common/pager.jsp"/>
				</form>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>
