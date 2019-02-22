<%-- 
    Document   : add_category_result
    Created on : 17 Feb, 2013, 1:29:27 AM
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
                    <h2>View added expense category</h2>
                    <div class="success_notifications">
                        <h4><img src="/SmartMoneyPlansDemo/images/correct.png" />&nbsp;&nbsp;
                            <span class="green">Your new expense category has been successfully converted</span></h4></div>
                    <table class="tabledata">
                        <col width="15%">
                        <col width="20%">
                        <col width="20%">
                        <col width="45%">
                        <th>ID</th>
                        <th>Category</th>
                        <th>Sub category</th>
                        <th>Description</th>
                        <tr>
                            <td><a href="javascript:display_details();">CAT0000004589</a></td>
                            <td>Office expenses</td>
                            <td>Food</td>
                            <td>This category is for the office expenses and especially for lunch</td>

                        </tr>
                    </table>
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>
    </body>
</html>

