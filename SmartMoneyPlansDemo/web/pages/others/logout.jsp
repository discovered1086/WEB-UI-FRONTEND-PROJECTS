<%--
    Document   : conversion_result
    Created on : 19 May, 2012, 3:37:05 PM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View the plan converted</title>
        <link rel="stylesheet"  type="text/css" href="/SmartMoneyPlansDemo/style/smart_money_plans.css" >
        <script type="text/javascript" src="/SmartMoneyPlansDemo/script/common.js"></script>
    </head>
    <body>
        <div id="allcontent">
            <%@include file="/pages/header.jsp" %>
            <%@include file="/pages/ribbon.jsp" %>
            <div id="actual_content">
                <%@include file="/pages/cr_leftnav.jsp" %>
                <div id="content-body">
                    <h2>Hope to see you again soon!!</h2>
                    <h4>You have opted to log out of Smart Money Plans.We request you to <a href="#">share your feedback</a>
                        to help us improve the services we provide</h4>
                    <div id="button">
                        <ul>
                            <li ><a  href="/SmartMoneyPlansDemo/pages/login.jsp" >Log out of Smart Money plans</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>
    </body>
</html>
