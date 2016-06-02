﻿<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="/static/hui/lib/html5.js"></script>
<script type="text/javascript" src="/static/hui/lib/respond.min.js"></script>
<script type="text/javascript" src="/static/hui/lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="/static/hui/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="/static/hui/static/h-ui/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="/static/hui/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="/static/hui/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="/static/hui/static/h-ui/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="/static/hui/static/h-ui/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>用户管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 用户管理 <span class="c-gray en">&gt;</span> 用户列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="cl pd-5 bg-1 bk-gray">
		<span class="l">

	   </span> <span class="r">共有数据：<strong id="nums"></strong> 条</span>
	</div>
	<table class="table table-border table-bordered table-hover table-bg">
		<thead>
			<tr>
				<th scope="col" colspan="6">用户列表</th>
			</tr>
			<tr class="text-c">
				<th width="25"><input type="checkbox" value="" name=""></th>
				<th width="250">openID</th>
				<th width="200">昵称</th>
				<th width="200">性别</th>
				<th>地址</th>
				<th width="150">操作</th>
			</tr>
		</thead>
		<tbody id="ubody">
			
		</tbody>
	</table>
</div>
<script type="text/javascript" src="/static/hui/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/static/hui/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="/static/hui/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="/static/hui/static/h-ui/js/H-ui.admin.js"></script>
<script type="text/javascript">
	$(function(){
		var data = ${data};
		var datas = data.datas;
		var html = '';
		$.each(datas, function(index, comment){
			html += '<tr class="text-c"><td><input type="checkbox" value="" name=""></td><td>'
					+ comment.openid +'</td><td>'+ comment.nickname+'</td><td><a href="#">'
					+ comment.sex+ '</a></td><td>'+ comment.country +'-'
					+ comment.province+'-'+comment.city+'</td>'
					+ '<td class="f-14"><a title="修改备注" href="javascript:;" onclick="admin_role_edit(\'修改备注\',\'admin-role-add.html\',\'1\')" '
					+ 'style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a></td> ';
		});
		$('#nums').html(data.total);
		$('#ubody').append(html);

	})

	/*管理员-角色-编辑*/
	function admin_role_edit(title, url, id, w, h) {
		layer_show(title, url, w, h);
	}

</script>
</body>
</html>