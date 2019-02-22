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
        <li id="exp"><a  href="/SmartMoneyPlansDemo/pages/purchase/expensePlan_home.html?module=PURCHASE_PLAN" >Purchase Plan</a></li>
        <li style="color:white">|</li>
        <li id="est"> <a  href="/SmartMoneyPlansDemo/pages/estimate_home.html?module=ESTIMATE"><b>Estimate</b></a></li>
        <li style="color:white">|</li>
        <li id="obp"> <a  href="/SmartMoneyPlansDemo/pages/estimate_home.html?module=ONLINEBILLPAY" ><b>Online Bill Pay</b></a></li>
        <li style="color:white">|</li>
        <li id="tran"> <a  href="/SmartMoneyPlansDemo/pages/estimate_home.html?module=TRANSACTION" ><b>Transactions</b></a></li>
        <li style="color:white">|</li>
        <li id="rep"> <a  href="/SmartMoneyPlansDemo/pages/accounts/account_home.html?module=REPORTS" ><b>Reports &amp; Analysis</b></a></li>
        <li style="color:white">|</li>
        <li id="acc"> <a  href="/SmartMoneyPlansDemo/pages/accounts/account_home.html?module=ACCOUNTS" ><b>Accounts</b></a></li>
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
<!--<div id="ribbon3">
    <a href="/SmartMoneyPlansDemo/pages/home_page.jsp">Home</a>><a href="#">Transactions</a>
</div>-->

