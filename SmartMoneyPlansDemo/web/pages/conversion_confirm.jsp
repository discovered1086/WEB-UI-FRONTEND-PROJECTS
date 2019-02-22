<%-- 
    Document   : conversion_confirm
    Created on : 19 May, 2012, 3:16:14 PM
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
    </head>
    <body>
        <div id="allcontent">
            <%@include file="/pages/header.jsp" %>
            <%@include file="/pages/ribbon.jsp" %>
            <div id="actual_content">
                <%@include file="/pages/cr_leftnav.jsp" %>
                <div id="content-body">
                    <h2>Confirm conversion of the estimate</h2>
                    <h4 style="line-height: 25px;">This estimate is of the type <span class="green">Fixed for this period</span>.For this estimate your
                        actual amount of the expense must be <span class="green">Rs.<span class="numbers">2574</span></span>.
                        In case you want to add a different actual amount please go back and edit your estimate first.</h4>
                    <form name="thisForm" method="post" action="add_plan_result.html">
                        <input type="hidden" name="module" value="ESTIMATE"  />
                        <input type="hidden" name="functionality" value="save_estimate" />
                        <input type="hidden" name="subfunctionality" value="n/a"  />

                        <table class="tabledata">
                            <th>ID</th>
                            <th>Estimate type</th>
                            <th>description</th>
                            <th>Estimate (Rs)</th>
                            <th>Actual (Rs)</th>
                            <th>Status</th>
                            <tr style="background-color:#BDFCC9;">
                                <td><a href="javascript:open_window('/SmartMoneyPlansDemo/pages/plan_details.jsp')">EST000023</a></td>
                                <td align="left">Fixed for duration</td>
                                <td align="left">Loan premium payment</td>
                                <td>2574</td>
                                <td><input type="text" name="actuals" size="5"/></td>
                                <td><select name="est_status">
                                        <option value="-1">Select status</option>
                                        <option value="partially confirmed">Partially converted</option>
                                        <option value="credit">Converted</option>
                                        <option value="credit">Canceled</option>
                                    </select></td>

                            </tr>
                            <tr>
                                <td><a href="javascript:open_window('/SmartMoneyPlansDemo/pages/plan_details.jsp')">EST000024</a></td>
                                <td align="left">Fixed for duration</td>
                                <td align="left">Loan premium payment</td>
                                <td>2574</td>
                                <td><input type="text" name="actuals" size="5"/></td>
                                <td><select name="est_status">
                                        <option value="-1">Select status</option>
                                        <option value="partially confirmed">Partially converted</option>
                                        <option value="credit">Converted</option>
                                        <option value="credit">Canceled</option>
                                    </select></td>
                            </tr>
                        </table>
                        <div id="button">
                            <ul>
                                <li ><a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >Save status</a></li>
                                <li > <a  href="javascript:history.go(-1);" >go back</a></li>
                                <li > <a  href="javascript:clear()" ><b>Clear</b></a></li>
                            </ul>
                        </div>
                    </form>
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>
    </body>
</html>

