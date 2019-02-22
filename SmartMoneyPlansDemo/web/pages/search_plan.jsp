<%-- 
    Document   : search_estimate
    Created on : 9 Oct, 2011, 3:47:20 PM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Search estimate</title>
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
                <h2>Search your plan</h2>
                <h4>You can search your plan by filtering through the options available below</h4>
                <fieldset class="formdata">
                        <legend>Choose criteria for search</legend>
                        <table class="tableinfo" width="100%">
                            <tr>
                                <td><input type="checkbox" name="unitEntryCheck" value="checked"/></td>
                                <td>Estimate Type</td>
                                <td><select name="estimate_type" onChange="changeEstimateOption(this,'3')">
                                            <option value="-1">Select estimate type</option>
                                            <option value="1">Variable</option>
                                            <option value="2">Fixed for this month</option>
                                            <option value="3">Fixed for a period of time</option>
                                        </select></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="unitEntryCheck" value="checked"/></td>
                                <td>Transaction type</td>
                                <td><select name="transaction_type">
                                        <option value="-1">Select transaction type</option>
                                        <option value="debit">Debit</option>
                                        <option value="credit">Credit</option>
                                    </select></td>
                            </tr>
                            <tr>
                                 <td><input type="checkbox" name="unitEntryCheck" value="checked"/></td>
                                <td>Description</td>
                                <td align="left"><input type="text" name="description" size="40" /></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="unitEntryCheck" value="checked"/></td>
                                <td>Category</td>
                                <td align="left"><select name="Category">
                                        <option value="none">Select Category</option>
                                        <option value="debit">Debit</option>
                                        <option value="credit">Credit</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="unitEntryCheck" value="checked"/></td>
                                <td> Sub Category</td>
                                <td align="left"><select name="sub_Category">
                                        <option value="none">Select Sub Category</option>
                                        <option value="debit">Debit</option>
                                        <option value="credit">Credit</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="unitEntryCheck" value="checked"/></td>
                                <td>Estimate Amount</td>
                                <td align="left"><input type="text"  name="est_amount" size="12"  /></td>
                            </tr>
                            <tr id="year_month">
                                <td><input type="checkbox" name="unitEntryCheck" value="checked"/></td>
                                <td>Select month</td>
                                <td align="left">
                                    <table>
                                        <tr>
                                            <td align="left">
                                                <select name="selectMonth">
                                                    <option value="-1" selected>Select Month</option>
                                                    <option value="1">January</option>
                                                    <option value="2">February</option>
                                                    <option value="3">March</option>
                                                    <option value="4">April</option>
                                                    <option value="5">May</option>
                                                    <option value="6">June</option>
                                                    <option value="7">July</option>
                                                    <option value="8">August</option>
                                                    <option value="9">September</option>
                                                    <option value="10">October</option>
                                                    <option value="11">November</option>
                                                    <option value="12">December</option>
                                                </select>
                                            </td>
                                            <td><select name="selectYear" >
                                                    <option value="-1" selected>Select Year</option>
                                                    <option value="2011">2011</option>
                                                    <option value="2012">2012</option>
                                                    <option value="2013">2013</option>
                                                    <option value="2014">2014</option>
                                                </select></td></tr> </table></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="unitEntryCheck" value="checked"/></td>
                                <td>Status</td>
                                <td><select name="transaction_type">
                                        <option value="-1">Select status</option>
                                        <option value="debit">converted estimate</option>
                                        <option value="credit">non converted estimate</option>
                                        <option value="credit">canceled estimates</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;</td>
                                <td>&nbsp;&nbsp;</td>
                                <td align="left">
                                    <div id="button">
                                        <ul>
                                            <li ><a  href="/SmartMoneyPlansDemo/pages/search_plan_result.jsp" >Search</a></li>
                                            <li > <a  href="javascript:clear()" ><b>Reset</b></a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        </table>
                </fieldset>
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>

    </body>
</html>
