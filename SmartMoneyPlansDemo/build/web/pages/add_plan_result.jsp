<%-- 
    Document   : add_plan_result
    Created on : 16 Oct, 2011, 3:58:57 PM
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
        <script type="text/javascript" src="/SmartMoneyPlansDemo/script/common.js"></script>
        <script type="text/javascript" language="javascript">
            function open_window(URL)
            {
                window.open(URL, "_blank", "toolbar=yes, location=no, directories=no, status=no, menubar=yes, scrollbars=no, resizable=no, copyhistory=yes, top=120px,left=500px,width=650, height=500");
            }
        </script>
    </head>
    <body>
        <div id="allcontent">
            <%@include file="/pages/header.jsp" %>
            <%@include file="/pages/ribbon.jsp" %>

            <div id="actual_content">
                <%@include file="/pages/cr_leftnav.jsp" %>
                <div id="content-body">
                    <h2>View added plan</h2>
                    <div class="success_notifications">
                        <h4><img src="/SmartMoneyPlansDemo/images/correct.png" />&nbsp;&nbsp;
                            <span class="green">Your estimate has been successfully added</span></h4>
                    </div>
                    <table class="tabledata">
                        <th>ID</th>
                        <th>Estimate type</th>
                        <th>description</th>
                        <th>Amount (Rs)</th>

                        <tr>
                            <td><a href="javascript:open_window('/SmartMoneyPlansDemo/pages/plan_details.jsp')">EST000000005656</a></td>
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
