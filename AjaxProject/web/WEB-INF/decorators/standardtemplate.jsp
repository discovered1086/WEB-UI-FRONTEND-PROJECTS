<%--
  Created by IntelliJ IDEA.
  User: co21321
  Date: 3/17/2017
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec" %>
<html>
<head>
    <title><dec:title/></title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/common_style.css"/>
    <dec:head/>
</head>
<body>
<div id="allcontent">
    <div id="actual_content">
        <div id="sidebar">
            <%@include file="/cr_leftnav.jsp" %>
            <div id="side_content"></div>
        </div>
        <div id="content-body">
            <dec:body/>
        </div>
    </div>
</div>
</body>
</html>
