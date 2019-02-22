<%-- 
    Document   : estimate_home
    Created on : 8 Oct, 2011, 8:52:00 AM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Estimate your expenses</title>
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
                    <h2>Manage your estimates</h2>
                    <h3> Prepare for your expenses.Have control over your money.</h3>
                    <p>
                    <h4>The smart estimates tool is all you have always wanted. Managing estimates for monthly yearly or weekly
                        expenses makes life a lot easier. The Smart estimates tool helps you do so by enabling you to,
                        <div class="content-images">
                            <ul>
                                <li style="min-height: 43px;">
                                    <a href="/SmartMoneyPlansDemo/pages/enter_plan.jsp" ><img alt="transactions"  src="/SmartMoneyPlansDemo/images/add.png" /></a>
                                    <h4>Add an estimate. Prepare for your planned expenses.<br>
                                    <span class="red">NOTE:Estimates can be added only upto 9th day of each month.</span></h4>
                                </li>
                                <li style="min-height: 43px;">
                                    <a href="/SmartMoneyPlansDemo/pages/search_plan.jsp" ><img alt="transactions"  src="/SmartMoneyPlansDemo/images/edit.png" /></a>
                                    <h4>Search for an estimate. Convert or edit estimates<br>
                                        <span class="red">NOTE:Estimates can be edited only upto 6th day of each month.</span></h4>
                                </li>
                                </ul>
                        </div>
                    </h4>
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>
    </body>
</html>
