<%-- 
    Document   : add_transaction_result
    Created on : 12 Feb, 2013, 12:28:26 AM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View the plan added</title>
        <link rel="stylesheet"  type="text/css" href="/SmartMoneyPlansDemo/style/smart_money_plans.css" >
        <link rel="stylesheet"  type="text/css" href="/SmartMoneyPlansDemo/style/special_styles.css" >
        <script type="text/javascript" src="/SmartMoneyPlansDemo/script/common.js"></script>
        <script type="text/javascript" language="javascript">
            function open_window(URL)
            {
                window.open(URL, "_blank", "toolbar=yes, location=no, directories=no, status=no, menubar=yes, scrollbars=no, resizable=no, copyhistory=yes, top=120px,left=500px,width=650, height=500");
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
                    <h2>View added transaction</h2>
                    <div class="success_notifications">
                        <h4><img src="/SmartMoneyPlansDemo/images/correct.png" />&nbsp;&nbsp;
                            <span class="green">Your estimate has been successfully added</span></h4>
                    </div>
                    <table class="tabledata">
                        <th>ID</th>
                        <th>Transaction type</th>
                        <th>description</th>
                        <th>Amount (Rs)</th>

                        <tr>
                            <td><a href="javascript:display_details();">TRN00000568945</a></td>
                            <td>External transaction</td>
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

