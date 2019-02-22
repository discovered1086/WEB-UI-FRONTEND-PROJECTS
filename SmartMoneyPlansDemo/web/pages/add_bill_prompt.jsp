<%--
    Document   : add_category_prompt
    Created on : 20 May, 2012, 2:08:58 AM
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
        <div id="allcontent_popup">
            <%@include file="/pages/ribbon_noutil.jsp" %>

            <div id="actual_content_popup">
                <form name="thisForm" method="post" action="add_plan_result.html">
                    <input type="hidden" name="module" value="ESTIMATE"  />
                    <input type="hidden" name="functionality" value="save_estimate" />
                    <input type="hidden" name="subfunctionality" value="n/a"  />


                    <h2>Add bill details</h2>
                    <h4 style="line-height:25px;">Add a bill of your expenses</h4>
                    <%--<table class="tableinfo" width="100%">--%>
                    <fieldset class="formdata" style="width:auto;">
                        <legend>Add bill details</legend>
                        <table class="tableinfo">
                        <tr>
                            <td colspan="2"><span class="red">All fields are mandatory</span></td>
                        </tr>
                        <tr>
                            <td>Invoice/Bill/Reference No</td>
                            <td><input type="text" name="Invoice" size="20" align="left" id="bill1"></td>
                        </tr>
                        <tr>
                            <td>Payee</td>
                            <td><input type="text" name="BillPayee" size="45" align="left" id="bill2"></td>
                        </tr>
                        <tr>
                            <td>Item Name</td>
                            <td><input type="text" name="Item name" size="30" align="left" id="bill3"></td>
                        </tr>
                        <tr>
                            <td>Quantity</td>
                            <td><input type="text" name="quantity" size="10" align="left" id="bill4"></td>
                        </tr>
                        <tr>
                            <td>Rate</td>
                            <td><input type="text" name="Rate" size="20" align="left" id="bill5"></td>
                        </tr>
                        <tr>
                            <td>Amount</td>
                            <td><input type="text" name="BillAmount" size="20" align="left" id="bill6"></td>
                        </tr>
                        <tr>
                            <td>Bill date</td>
                            <td><input type="text" name="BillDate" size="14" align="left" id="bill7">&nbsp;&nbsp;<b>dd/mm/yyyy</b></td>
                        </tr>
                        <tr>
                                <td>&nbsp;&nbsp;</td>
                                <td align="left">
                                    <div id="button">
                                        <ul>
                                            <li ><a  href="/SmartMoneyPlansDemo/pages/add_plan_result.jsp" >add Bill</a></li>
                                            <li > <a  href="javascript:clear()" ><b>Clear</b></a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </form>
            </div>

        </div>
    </body>
</html>


