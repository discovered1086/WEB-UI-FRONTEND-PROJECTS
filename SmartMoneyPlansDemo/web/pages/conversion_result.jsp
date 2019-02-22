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
        <link rel="stylesheet"  type="text/css" href="/SmartMoneyPlansDemo/style/special_styles.css" >
        <script type="text/javascript" src="/SmartMoneyPlansDemo/script/common.js"></script>
        <script type="text/javascript" language="javascript">
            function open_window(URL)
            {
                window.open(URL, "_blank", "toolbar=no, location=no, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, top=120px,left=500px,width=650, height=500");
            }
        </script>
    </head>
    <body>
        <%@include file="/pages/prompts/prompt_display.jsp" %>
        <div id="allcontent">
            <%@include file="/pages/header.jsp" %>
            <%@include file="/pages/ribbon.jsp" %>
            <div id="actual_content">
                <%@include file="/pages/cr_leftnav.jsp" %>
                <div id="content-body">
                    <h2>View converted plan</h2>
                    <div class="success_notifications">
                        <h4><img src="/SmartMoneyPlansDemo/images/correct.png" />&nbsp;&nbsp;
                            <span class="green">Your estimate has been successfully converted</span></h4></div>
                    <table class="tabledata">
                        <th>ID</th>
                        <th>Estimate type</th>
                        <th>description</th>
                        <th>Amount (Rs)</th>
                        <tr>
                            <td><a href="javascript:display_details();">EST0000056</a></td>
                            <td>Fixed for this period</td>
                            <td>Loan premium payment</td>
                            <td>2574</td>

                        </tr>
                        <tr>
                            <td><a href="javascript:display_details();">EST0000056</a></td>
                            <td>Fixed for this period</td>
                            <td>Loan premium payment</td>
                            <td>2574</td>

                        </tr>
                    </table>
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>
    </body>
</html>
