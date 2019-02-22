<%-- 
    Document   : home_page
    Created on : 17 May, 2012, 11:28:03 PM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Welcome to smart money plans</title>

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
                    <h2>Welcome to Smart Money Plans</h2>
                    <h3> Plan smartly to manage your money better </h3>
                    <p>
                    <h4>Smart money plans is not something new.We all plan in one way or the other to manage our money better.
                        Smart Money Plans make your task of managing our money easier by enabling you to,
                        <br>
                    </h4>
                    <div class="content-images">
                        <ul>
                            <li>
                                <a href="/SmartMoneyPlansDemo/pages/search_plan.jsp?module=ESTIMATE" ><img alt="transactions"  src="/SmartMoneyPlansDemo/images/alert.png" /></a>
                                <h4>View alerts,notifications and reminders related to estimates in your inbox.<br>
                                    <span class="red">You have 2 unread notification(s) in your inbox. Click on the <a href="/SmartMoneyPlansDemo/pages/alert_inbox.jsp">My Inbox</a>
                                    link in the left navigation to view.</span></h4>
                            </li>
                            <li>
                                <a href="/SmartMoneyPlansDemo/pages/transaction/add_transaction.jsp" ><img alt="transactions"  src="/SmartMoneyPlansDemo/images/transactions.jpg" /></a>
                                <h4>Manage your day-to-day transactions was never easier. Just log your transactions using this option
                                    <a href="#">Click here</a> to know more</h4>
                            </li>
                            <li>
                                <a href="/SmartMoneyPlansDemo/pages/estimate_home.jsp?module=ESTIMATE" ><img alt="transactions"  src="/SmartMoneyPlansDemo/images/cost_planning.jpg" /></a>
                                <h4>Manage your estimates made easier. Just add your estimates and budgets and get alerts
                                    and different views.<a href="#">Click here</a> to know more</h4>
                            </li>
                            <li>
                                <a href="/SmartMoneyPlansDemo/pages/transaction/add_transaction.jsp?module=TRANSACTION" ><img alt="transactions"  src="/SmartMoneyPlansDemo/images/shopping.jpg" /></a>
                                <h4>Plan for your purchases well before and have control over your lifestyle needs.<a href="#">Click here</a> to know more</h4>
                            </li>
                            <li>
                                <a href="/SmartMoneyPlansDemo/pages/purchase/expensePlan_home.jsp?module=PURCHASE_PLAN" ><img alt="purchase"  src="/SmartMoneyPlansDemo/images/bill_pay.jpg" /></a>
                                <h4>Maintain your bills and receipt details tied with estimates and transactions in portable format.<a href="#">Click here</a> to know more</h4>
                            </li>
                            <li>
                                <a href="/SmartMoneyPlansDemo/pages/accounts/account_home.jsp?module=ACCOUNTS" ><img alt="accounts"  src="/SmartMoneyPlansDemo/images/account.jpg" /></a>
                                <h4>Manage your financial accounts to have a have clear sight on your financial standing.<a href="#">Click here</a> to know more</h4>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>

    </body>


</html>
