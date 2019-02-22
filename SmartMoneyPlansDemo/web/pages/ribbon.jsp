<%-- 
    Document   : ribbon
    Created on : 15 Jan, 2011, 3:59:29 PM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<div id="ribbon">
    <ul >
        <li ><a  href="/SmartMoneyPlansDemo/pages/purchase/expensePlan_home.jsp?module=PURCHASE_PLAN" >Purchase Plan</a></li>
        <li style="background-color: #00CC99;border-radius:10px;"> <a  style="color: #585858;" href="/SmartMoneyPlansDemo/pages/estimate_home.jsp?module=ESTIMATE"><b>Estimate</b></a></li>
        <li > <a  href="/SmartMoneyPlansDemo/pages/estimate_home.jsp?module=ESTIMATE" ><b>Bills &amp; Receipt</b></a></li>
        <li > <a  href="/SmartMoneyPlansDemo/pages/estimate_home.jsp?module=TRANSACTION" ><b>Transactions</b></a></li>
        <li > <a  href="/SmartMoneyPlansDemo/pages/accounts/account_home.jsp?module=ACCOUNTS" ><b>Accounts</b></a></li>
    </ul>
</div>

<div id="ribbon2">
    <ul >
        <c:if test="${submenu ne null}">
            <c:forEach var="menuList" items="${submenu}" >
                <c:if test="${menuList.linktype eq 'ribbon'}">
                    <li ><a  href="<c:out value="${menuList.urlname}"/>" ><c:out value="${menuList.linkname}" /></a></li>
                </c:if>
            </c:forEach>
        </c:if>
    </ul>
</div>

