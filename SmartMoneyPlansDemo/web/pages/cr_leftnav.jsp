<%-- 
    Document   : rightNav
    Created on : 5 Jan, 2011, 2:25:32 AM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<div id="sidebar">
    <ul >
        <li><a  href="/SmartMoneyPlansDemo/pages/category/category_home.jsp?module=CATEGORY" >Manage Category</a>
        </li>
        <c:if test="${appmodule eq 'CATEGORY'}">
        <div id="sidebar_helper">
            <c:if test="${submenu ne null}">
                <ul>
                    <c:forEach var="menuList" items="${submenu}">
                        <c:if test="${menuList.linktype eq 'leftnav'}">
                        <li ><a  href="<c:out value="${menuList.urlname}" />" ><c:out value="${menuList.linkname}" /></a></li>
                        </c:if>
                    </c:forEach>
                </ul>
            </c:if>
        </div>
        </c:if>
        <li ><a  href="/SmartMoneyPlansDemo/pages/account/account_home.jsp?module=MYPROFILE" >My Account</a></li>
        <c:if test="${appmodule eq 'MYPROFILE'}">
        <div id="sidebar_helper">
            <c:if test="${submenu ne null}">
                <ul>
                    <c:forEach var="menuList" items="${submenu}">
                        <c:if test="${menuList.linktype eq 'leftnav'}">
                        <li ><a  href="<c:out value="${menuList.urlname}" />" ><c:out value="${menuList.linkname}" /></a></li>
                        </c:if>
                    </c:forEach>
                </ul>
            </c:if>
        </div>
        </c:if>
        <li ><a  href="/SmartMoneyPlansDemo/pages/alert_inbox.jsp?module=MYINBOX" >My Inbox&nbsp;<span class="red">(2)</span></a></li>
    </ul>
</div>