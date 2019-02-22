<%-- 
    Document   : add_transaction
    Created on : 9 Feb, 2013, 3:29:06 PM
    Author     : Kingshuk
--%>

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
        <title>Add transaction</title>
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
                    <h2>Add a transaction</h2>
                    <h4>Please enter the following details to add your transaction</h4>
                    <fieldset class="formdata" style="width:85%;">
                        <legend>Select transaction type</legend>
                        <table class="tableinfo" width="100%">
                            <tr>
                                <td>External Transaction</td>
                                <td>
                                    <input type="radio" name="transaction_radio"  value="transaction" checked="checked">
                                </td>
                                <td>Inter account transaction</td>
                                <td>
                                    <input type="radio" name="transaction_radio" value="transfer" >
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                    <fieldset class="formdata" style="width:85%;">
                        <legend>Add a transaction</legend>
                        <table class="tableinfo" width="100%">
                            <tr >
                                <td colspan="2"><span class="red">Fields marked as * are mandatory</span></td>
                            </tr>
                            <tr>
                                <td>Debit account category</td>
                                <td>
                                    <select name="accountType" id="accountType">
                                        <option selected>Select an account category</option>
                                        <option   value="1">Bank Accounts</option>
                                        <option   value="2">Small Savings</option>
                                        <option   value="3">Cash accounts</option>
                                        <option   value="4">Insurance policy </option>
                                        <option   value="5">Mutual Fund</option>
                                        <option   value="6">Credit card</option>
                                        <option   value="7">Demat account</option>
                                        <option   value="8">Fixed deposit</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Debit account<span class="red">*</span></td>
                                <td>
                                    <select name="accountName" id="accountName">
                                        <option selected>Select an account </option>
                                        <option class="1" value="1">HDFC Bank</option>
                                        <option class="1" value="2">SBI</option>
                                        <option class="2" value="3">SBI PPF</option>
                                        <option class="3" value="4">Cash in my wallet</option>
                                        <option class="4" value="5">LIC</option>
                                        <option class="4" value="6">HDFC ERGO mediclaim</option>
                                        <option class="6" value="29">HDFC TITANIUM credit card</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Debit account no/Card no<span class="red">*</span></td>
                                <td>
                                    <input type="text" name="Account no" size="20" align="left" id="transaction0" readonly="readonly">
                                </td>
                            </tr>
                            <tr>
                                <td>Transaction type<span class="red">*</span></td>
                                <td>
                                    <select name="transactionType1" id="transactionType">
                                        <option selected>Select Transaction type</option>
                                        <option value="debit">Debit</option>
                                        <option value="credit">Credit</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Reference no<span class="red">*</span></td>
                                <td> <input type="text" name="reference1" size="20" align="left" id="transaction17"></td>
                            </tr>
                            <tr>
                                <td>Description<span class="red">*</span></td>
                                <td> <input type="text" name="desription" size="55" align="left" id="transaction17"></td>
                            </tr>
                            <tr>
                                <td>Payee/Payer</td>
                                <td> <input type="text" name="payee_payer" size="20" align="left" id="transaction17"></td>
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
                            <tr>
                                <td>Amount<span class="red">*</span></td>
                                <td> <input type="text" name="amount" size="20" align="left" id="transaction17"></td>
                            </tr>
                            <tr>
                                <td>Transaction date<span class="red">*</span></td>
                                <td> <input type="text" name="Date1" size="14" align="left" id="transaction4">
                                    &nbsp;&nbsp;<font color="#585858"><b>dd/mm/yyyy</b></font></td>
                            </tr>
                            <tr>
                                <td>Have a bill for this transaction?</td>
                                <td>
                                    <select name="hasbill1" id="hasbill" onChange="javascript:hasBill(this,'bill')">
                                        <option selected>Select your answer</option>
                                        <option value="bill">Yes</option>
                                        <option >No</option>
                                    </select>
                                </td>
                            </tr>

                        </table>
                        <div id="button">
                            <ul>
                                <li ><a  href="/SmartMoneyPlansDemo/pages/transaction/add_transaction_confirm.jsp" >add transaction</a></li>
                                <li > <a  href="javascript:clear()" ><b>Clear</b></a></li>
                            </ul>
                        </div>
                    </fieldset>
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>

    </body>
</html>
