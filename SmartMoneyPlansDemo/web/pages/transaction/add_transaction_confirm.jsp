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
        <script type="text/javascript" src="/SmartMoneyPlansDemo/script/common.js"></script>

    </head>
    <body>
        <div id="allcontent">
            <%@include file="/pages/header.jsp" %>
            <%@include file="/pages/ribbon.jsp" %>
            <div id="actual_content">
                <%@include file="/pages/cr_leftnav.jsp" %>
                <div id="content-body">
                    <h2>Verify transaction</h2>
                    <h4>Please verify your transaction before submitting</h4>
                    <table class="tabledata vertical_table" >
                        <col width="40%"  />
                        <col width="60%" />
                        <tr>
                            <th >Transaction type </th>
                            <td>External transaction</td>
                        </tr>
                        <tr>
                            <th >Debit account category</th>
                            <td >Bank accounts</td>
                        </tr>
                        <tr>
                            <th >Debit account</th>
                            <td>SBI</td>
                        </tr>
                        <tr>
                            <th >Debit account no/card no </th>
                            <td>5520881000239262</td>
                        </tr>
                        <tr>
                            <th >Transaction type</th>
                            <td>debit</td>
                        </tr>
                        <tr>
                            <th >Reference no</th>
                            <td>SBI545454646</td>
                        </tr>
                        <tr>
                            <th >Description</th>
                            <td align="left">hdgfhkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
                            hjjjjjjjjjjjjjjjjjjjjjjjjjaaaaaaaaaaaaaaaaaaaaaaaaaavbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
                            jkhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</td>
                        </tr>
                        <tr>
                            <th >Payee/Payer</th>
                            <td>Mom</td>
                        </tr>
                        <tr>
                            <th >Category</th>
                            <td>Home expenses</td>
                        </tr>
                        <tr>
                            <th >Sub category</th>
                            <td>Monthly expenses</td>
                        </tr>
                        <tr>
                            <th >Amount(Rs.)</th>
                            <td>5000</td>
                        </tr>
                        <tr>
                            <th >Transaction date</th>
                            <td>11-Mar-2012</td>
                        </tr>
                        <tr>
                            <th >Have a bill</th>
                            <td>No</td>
                        </tr>
                    </table>
                    <div id="button">
                        <ul>
                            <li ><a  href="/SmartMoneyPlansDemo/pages/transaction/add_transaction_result.jsp" >Submit</a></li>
                            <li > <a  href="/SmartMoneyPlansDemo/pages/transaction/add_transaction.jsp" >edit</a></li>
                            <li > <a  href="javascript:clear()" ><b>Cancel</b></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>
    </body>
</html>
