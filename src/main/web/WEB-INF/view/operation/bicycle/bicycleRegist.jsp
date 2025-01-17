<%--
  Created by IntelliJ IDEA.
  User: DaeHwan
  Date: 2023-06-02
  Time: 오후 03:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="resources_path" value="${pageContext.request.contextPath}/resources"/>
<c:set var="view_path" value="${pageContext.request.contextPath}/../WEB-INF/view"/>
<%
    request.setCharacterEncoding("UTF-8");
    String title = "자전거 등록";
%>

<html>
<head>
    <title><%=title%></title>
    <link rel="stylesheet" href="${resources_path}/css/common.css">
    <link rel="stylesheet" href="${resources_path}/css/operation/bicycle/bicycleRegist.css">

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35cc06d0fff9be7acbcab450ef07af23"></script>
    <script defer type="text/javascript" src="${resources_path}/js/map.js"></script>
</head>
<body>
<jsp:include page="${view_path}/fragment/header.jsp" flush="true">
    <jsp:param name="title" value='<%=title%>' />
</jsp:include>
<main>
    <div class="container">
        <div class="cont_box">
            <form action="regist.do" method="post">
                <table>
                    <tr>
                        <td>대여소 이름</td>
                        <td>
                            <input id="station" type="text" name="station">
                        </td>
                    </tr>
                    <tr>
                        <td>처리 이력</td>
                        <td>
                            <input id="state" type="text" name="state">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="확인">
                        </td>
                        <td>
                            <input class="button" type="button" value="취소" onclick="window.location.href='../bicycleMgmt.do'">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</main>
<jsp:include page="${view_path}/fragment/footer.jsp" />
</body>
</html>
