﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/head.jsp" flush="true" />
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>新建网站角色 - 管理员管理</title>
</head>
<body>
<article class="page-container">
    <form action="add" method="post" class="form form-horizontal" id="form-admin-role-add">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>角色名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="roleName" name="name"
                       datatype="*4-16" nullmsg="用户账户不能为空">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">备注：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="des">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">网站角色：</label>
            <div class="formControls col-xs-8 col-sm-9">

                <c:forEach items="${list}" var="per" varStatus="i">
                    <dl class="permission-list">
                        <dt>
                            <label>
                                <input type="checkbox" value="${per.id}" name="ids" id="user-Character-${i.index}">
                                    ${per.text}</label>
                        </dt>
                        <dd>
                            <c:forEach items="${per.children}" var="cper" varStatus="j">
                                <dl class="cl permission-list2">
                                    <dt>
                                        <label class="">
                                            <input type="checkbox" value="${cper.id}" name="ids"
                                                   id="user-Character-0-${j.index}">
                                                ${cper.text}</label>
                                    </dt>
                                    <dd>
                                        <c:forEach items="${cper.children}" var="sper" varStatus="k">
                                            <label class="">
                                                <input type="checkbox" value="${sper.id}" name="ids" id="user-Character-0-0-${k.index}">
                                                ${sper.text}</label>
                                        </c:forEach>
                                    </dd>
                                </dl>
                            </c:forEach>
                        </dd>
                    </dl>
                </c:forEach>
                <!--
                <dl class="permission-list">
                    <dt>
                        <label>
                            <input type="checkbox" value="" name="user-Character-0" id="user-Character-0">
                            资讯管理</label>
                    </dt>
                    <dd>

                        <dl class="cl permission-list2">
                            <dt>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-0-0" id="user-Character-0-0">
                                    栏目管理</label>
                            </dt>
                            <dd>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-0-0-0" id="user-Character-0-0-0">
                                    添加</label>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-0-0-0" id="user-Character-0-0-1">
                                    修改</label>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-0-0-0" id="user-Character-0-0-2">
                                    删除</label>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-0-0-0" id="user-Character-0-0-3">
                                    查看</label>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-0-0-0" id="user-Character-0-0-4">
                                    审核</label>
                                <label class="c-orange"><input type="checkbox" value="" name="user-Character-0-0-0" id="user-Character-0-0-5"> 只能操作自己发布的</label>
                            </dd>
                        </dl>
                        <dl class="cl permission-list2">
                            <dt>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-0-1" id="user-Character-0-1">
                                    文章管理</label>
                            </dt>
                            <dd>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-0-1-0" id="user-Character-0-1-0">
                                    添加</label>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-0-1-0" id="user-Character-0-1-1">
                                    修改</label>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-0-1-0" id="user-Character-0-1-2">
                                    删除</label>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-0-1-0" id="user-Character-0-1-3">
                                    查看</label>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-0-1-0" id="user-Character-0-1-4">
                                    审核</label>
                                <label class="c-orange"><input type="checkbox" value="" name="user-Character-0-2-0" id="user-Character-0-2-5"> 只能操作自己发布的</label>
                            </dd>
                        </dl>
                    </dd>
                </dl>
                -->
                <!--
                <dl class="permission-list">
                    <dt>
                        <label>
                            <input type="checkbox" value="" name="user-Character-0" id="user-Character-1">
                            用户中心</label>
                    </dt>
                    <dd>
                        <dl class="cl permission-list2">
                            <dt>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-1-0" id="user-Character-1-0">
                                    用户管理</label>
                            </dt>
                            <dd>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-1-0-0" id="user-Character-1-0-0">
                                    添加</label>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-1-0-0" id="user-Character-1-0-1">
                                    修改</label>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-1-0-0" id="user-Character-1-0-2">
                                    删除</label>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-1-0-0" id="user-Character-1-0-3">
                                    查看</label>
                                <label class="">
                                    <input type="checkbox" value="" name="user-Character-1-0-0" id="user-Character-1-0-4">
                                    审核</label>
                            </dd>
                        </dl>
                    </dd>
                </dl>
                -->
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <button type="submit" class="btn btn-success radius" id="admin-role-save" name="admin-role-save"><i
                        class="icon-ok"></i> 确定
                </button>
            </div>
        </div>
    </form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="/static/hui/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/static/hui/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="/static/hui/lib/icheck/jquery.icheck.min.js"></script>

<script type="text/javascript" src="/static/hui/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="/static/hui/static/h-ui/js/H-ui.admin.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript">
    $(function () {
        $(".permission-list dt input:checkbox").click(function () {
            $(this).closest("dl").find("dd input:checkbox").prop("checked", $(this).prop("checked"));
        });
        $(".permission-list2 dd input:checkbox").click(function () {
            var l = $(this).parent().parent().find("input:checked").length;
            var l2 = $(this).parents(".permission-list").find(".permission-list2 dd").find("input:checked").length;
            if ($(this).prop("checked")) {
                $(this).closest("dl").find("dt input:checkbox").prop("checked", true);
                $(this).parents(".permission-list").find("dt").first().find("input:checkbox").prop("checked", true);
            }
            else {
                if (l == 0) {
                    $(this).closest("dl").find("dt input:checkbox").prop("checked", false);
                }
                if (l2 == 0) {
                    $(this).parents(".permission-list").find("dt").first().find("input:checkbox").prop("checked", false);
                }
            }
        });

        $("#form-admin-role-add").validate({
            rules: {
                roleName: {
                    required: true,
                },
            },
            onkeyup: false,
            focusCleanup: true,
            success: "valid",
            submitHandler: function (form) {
                $(form).ajaxSubmit();
                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index);
            }
        });
    });
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>