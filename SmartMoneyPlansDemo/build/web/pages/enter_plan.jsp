<%-- 
    Document   : enterCredentials
    Created on : 25 Aug, 2011, 12:16:43 AM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">



<html>

    <head>
        <title>Save your plan details</title>
        <link rel="stylesheet"  type="text/css" href="/SmartMoneyPlansDemo/style/smart_money_plans.css" >
        <link rel="stylesheet"  type="text/css" href="/SmartMoneyPlansDemo/style/special_styles.css" >
        <script type="text/javascript" src="/SmartMoneyPlansDemo/script/common.js"></script>

    </head>

    <body>
         <%@include file="/pages/prompts/add_category_prompt.jsp" %>
        <div id="allcontent">
            <%@include file="/pages/header.jsp" %>
            <%@include file="/pages/ribbon.jsp" %>
            <div id="actual_content">
                <%@include file="/pages/cr_leftnav.jsp" %>
                <div id="content-body">
                    <form name="thisForm" method="post" action="add_plan_result.html">
                        <input type="hidden" name="module" value="ESTIMATE"  />
                        <input type="hidden" name="functionality" value="save_estimate" />
                        <input type="hidden" name="subfunctionality" value="n/a"  />


                        <h2>Enter your Estimate details</h2>
                        <h4 style="line-height:20px;">Add your estimate from the options available. Remember that estimate can be added for a month
                            only upto the <span class="green"><span class="numbers">5</span>th day</span> of that month.The estimate freezes after that.</h4>
                            <%--<table class="tableinfo" width="100%">--%>

                        <fieldset class="formdata">
                            <legend>Enter estimate details</legend>
                            <table class="tableinfo">
                                <tr >
                                    <td colspan="2"><span class="red">Fields marked as * are mandatory</span></td>
                                </tr>
                                <tr>
                                    <td>Type<span class="red">*</span></td>
                                    <td><select name="estimate_type" onChange="changeEstimateOption(this,'3')">
                                            <option value="-1">Select estimate type</option>
                                            <option value="1">Variable</option>
                                            <option value="2">Fixed for this month</option>
                                            <option value="3">Fixed for a period of time</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td>Transaction type<span class="red">*</span></td>
                                    <td><select name="transaction_type">
                                            <option value="-1">Select transaction type</option>
                                            <option value="debit">Debit</option>
                                            <option value="credit">Credit</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td>Description<span class="red">*</span></td>
                                    <td align="left"><input type="text" name="description" size="40" /></td>
                                </tr>
                                <tr>
                                    <td>Category<span class="red">*</span></td>
                                    <td align="left"><select name="Category">
                                            <option value="none">Select Category</option>
                                            <option value="debit">Debit</option>
                                            <option value="credit">Credit</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td> Sub Category<span class="red">*</span></td>
                                    <td align="left"><select name="sub_Category">
                                            <option value="none">Select Sub Category</option>
                                            <option value="debit">Debit</option>
                                            <option value="credit">Credit</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;</td>
                                    <td align="left"><a href="javascript:display_details();">
                                            Click here</a> to add a new category or sub category</td>
                                </tr>
                                <tr id="units" style="display:none;">
                                    <td>Units estimated</td>
                                    <td align="left"><input type="text" name="units" size="3"  /></td>
                                </tr>
                                <tr id="est_unit" style="display:none;">
                                    <td>Estimate Amount/unit</td>
                                    <td align="left"><input type="text"  name="est_unit" size="12"  onBlur="calculateEst()"/></td>
                                </tr>
                                <tr>
                                    <td>Estimate Amount<span class="red">*</span></td>
                                    <td align="left"><input type="text"  name="est_amount" size="12"  /></td>
                                </tr>
                                <tr id="year_month">
                                    <td>Select month<span class="red">*</span></td>
                                    <td align="left">
                                        <table  >
                                            <tr>
                                                <td>
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
                                <tr id="begindate" style="display:none;">
                                    <td>Begin Date</td>
                                    <td align="left"><input  type="text" name="begin_date" size="10"  />
                                        &nbsp;&nbsp;&nbsp;[dd/mm/yyyy]</td>
                                </tr>
                                <tr id="enddate" style="display:none;">
                                    <td>End date</td>
                                    <td align="left"><input  type="text" name="end_date" size="10"  />
                                        &nbsp;&nbsp;&nbsp;[dd/mm/yyyy]</td>
                                </tr>
                                <tr >
                                    <td>&nbsp;&nbsp;</td>
                                    <td align="left"><input type="checkbox" id="unitEntryCheck" name="unitEntryCheck" value="checked" onClick="openUnitTable()"/>
                                        This plan can be quantified</td>
                                </tr>

                            </table>
                            <div id="button">
                                <ul>
                                    <li ><a  href="/SmartMoneyPlansDemo/pages/add_plan_result.jsp" >add estimate</a></li>
                                    <li > <a  href="javascript:clear()" ><b>Clear</b></a></li>
                                </ul>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>
    </body>
</html>
