<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<table  id="table" class="sort-table move-table table table-bordered table-hover table-striped"
         data-move-url-prefix="${ctx}/showcase/move">
    <thead>
    <tr>
        <th style="width: 80px">
            <a class="check-all" href="javascript:;">全选</a>
            |
            <a class="reverse-all" href="javascript:;">反选</a>
        </th>
        <th sort="id">编号</th>
        <th sort="name">姓名</th>
        <th sort="weight">权重</th>
        <th>是否显示</th>
        <th style="width: 50px">操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.content}" var="m" varStatus="status">
        <tr id="${m.id}">
            <td class="check"><input type="checkbox" name="ids" value="${m.id}"></td>
            <td>${m.id}</td>
            <td>${m.name}</td>
            <td>
                    ${m.weight}
                <es:movable page="${page}" first="${status.first}" last="${status.last}"/>
            </td>
            <td>${m.show}</td>
            <td>
                <a class="btn btn-link btn-edit" title="修改" href="${ctx}/showcase/move/update/${m.id}">
                    <span class=" icon-edit"></span>
                </a>
                <a class="btn btn-link btn-edit" title="删除" href="${ctx}/showcase/move/delete/${m.id}">
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
