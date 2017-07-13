<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="http://localhost:8080/WaterMS2.0/view/front/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="http://localhost:8080/WaterMS2.0/view/front/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="http://localhost:8080/WaterMS2.0/view/front/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="http://localhost:8080/WaterMS2.0/view/front/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="http://localhost:8080/WaterMS2.0/view/front/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<script>setTimeout("location.href='hisData.jsp'",30000)</script> 
<title>历史数据</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 信息显示 <span class="c-gray en">&gt;</span> 历史数据 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<form action="findInfo.jsp" method = "post">
<div class="page-container">
	<div class="text-c">
		<table>
			<input type="text" class="input-text" style="width:250px" placeholder="输入站号查询" id="" name="info">
			<button type="submit" class="btn btn-success radius" id="" name="find"><span><i class="Hui-iconfont">&#xe665;</i> 搜索</span></button>
		</table>
	</div>
	<div class="mt-20">
	<table class="table table-border table-bordered table-hover table-bg table-sort">
		<%
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			 Class.forName("org.firebirdsql.jdbc.FBDriver");
                   // String url="jdbc:firebirdsql://192.168.8.102/D:/V5.0/Data/LENNY.FDB?useUnicode=true&characterEncoding=utf8";
                    String url="jdbc:firebirdsql://localhost:3050/C:/Users/Administrator/Desktop/LENNY.FDB?useUnicode=true&characterEncoding=utf8";
                    String user="SYSDBA";
                    String password="root";
                    conn = DriverManager.getConnection(url,user,password);
                  
		 %>
		<thead>
			<tr class="text-c">
				<th width="80">站号</th>
				<th width="200">监测时间</th>
				<th width="40">埋深</th>
				<th width="90">温度</th>
				<th width="100">水位标高</th>
				<th width="100">电压</th>
				<th width="100">传感器电压</th>
				<th width="70">气压</th>
			</tr>
		</thead>
		<%
                   
                    stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
                    String sql="select * from N_GROUNDHISDATA order by datetime desc";
                    rs=stmt.executeQuery(sql);
                   
                    while(rs.next()){
                %>
		<tbody>
			<tr class="text-c">
				<td><%=rs.getString("CODE")%></td>
				<td><%=rs.getString("DATETIME")%></td>
				<td><%=rs.getString("V1")%></td>
				<td><%=rs.getString("V2")%></td>
				<td><%=rs.getString("V3")%></td>
				<td><%=rs.getString("V4")%></td>
				<td><%=rs.getString("V5")%></td>
				<td class="td-status"><%=rs.getString("V6")%></span></td>
			</tr>
			<%      
                   } 
                   }catch(Exception e) {
                   		e.printStackTrace();
                   } finally {
                   		if( rs != null ) {
                    		rs.close();
                    	}
                    	if( stmt != null ) {
                    		stmt.close();
                    	}
                    	if( conn != null ) {
                    		conn.close();
                    	}
                   }
                 %>
		</tbody>
	</table>
	</div>
</div>
</form>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="http://localhost:8080/WaterMS2.0/view/front/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="http://localhost:8080/WaterMS2.0/view/front/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="http://localhost:8080/WaterMS2.0/view/front/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="http://localhost:8080/WaterMS2.0/view/front/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->



<script type="text/javascript">
$(function(){
	$('.table-sort').dataTable({
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,6,7]}// 制定列不参与排序
		]
	});
	
});
</script> 
</body>
</html>