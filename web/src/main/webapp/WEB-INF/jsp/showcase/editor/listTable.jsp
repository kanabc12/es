<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<table id="table" class="sort-table table table-bordered table-hover table-striped">
    <thead>
    <tr>
        <th style="width: 80px;">
            <a class="check-all" href="javascript:;">全选</a>
            |
            <a class="reverse-all" href="javascript:;">反选</a>
        </th>
        <th sort="id">编号</th>
        <th sort="title">标题</th>
        <th>内容</th>
        <th style="width: 50px">操作</th>
    </tr>
    <tbody>
    <c:forEach items="${page.content}" var="m">
        <tr>
            <td class="check"><input type="checkbox" name="ids" value="${m.id}"></td>
            <td>
                <a href="${ctx}/showcase/editor/${m.id}">${m.id}</a>
            </td>
            <td>${m.title}</td>
            <td><a href="${ctx}/showcase/editor/${m.id}">查看</a></td>
            <td>
                <a class="btn btn-link btn-edit" title="修改" href="${ctx}/showcase/editor/update/${m.id}">
                    <span class=" icon-edit"></span>
                </a>
                <a class="btn btn-link btn-edit" title="删除" href="${ctx}/showcase/editor/delete/${m.id}">
                    <span class=" icon-trash"></span>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
    <tfoot>
        <tr>
            <td colspan="1000">
                <es:page page="${page}" />
            </td>
        </tr>
    </tfoot>
</table>

