<%-- 
    Document   : search_plan_result
    Created on : 19 May, 2012, 2:31:44 PM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your search results</title>
        <link rel="stylesheet"  type="text/css" href="/SmartMoneyPlansDemo/style/smart_money_plans.css" >
        <link rel="stylesheet"  type="text/css" href="/SmartMoneyPlansDemo/style/special_styles.css" >
        <script type="text/javascript" src="/SmartMoneyPlansDemo/script/common.js"></script>
    </head>
    <body>
        <%@include file="/pages/prompts/prompt_display.jsp" %>
        <div id="allcontent">
            <%@include file="/pages/header.jsp" %>
            <%@include file="/pages/ribbon.jsp" %>
            <div id="actual_content">
                <%@include file="/pages/cr_leftnav.jsp" %>
                <div id="content-body">
                    <h2>Results of your plan search</h2>
                    <h4 style="line-height: 25px;">Your search has returned <span class="green"><span class="numbers">6</span> records</span> of estimated you added previously.
                        Click on the <span class="green">view details</span> link to display details of the estimate</h4>
                    <table class="tabledata" style="width:70%;">
                        <th colspan="3">Your search consists of below filters</th>
                        <tr style="background-color:#BDFCC9;">
                            <td align="left">Estimate Type</td>
                            <td align="left">Fixed for duration</td>
                            <td><a href="#">Remove filter</a></td>
                        </tr>
                        <tr >
                            <td align="left">Category</td>
                            <td align="left">Loan premium</td>
                            <td><a href="#">Remove filter</a></td>
                        </tr>
                        <tr style="background-color:#BDFCC9;">
                            <td align="left">Estimate Amount</td>
                            <td align="left">Rs. 2574</td>
                            <td><a href="#">Remove filter</a></td>
                        </tr>
                        <tr >
                            <td align="left">Description</td>
                            <td align="left">Loan premium payment</td>
                            <td><a href="#">Remove filter</a></td>
                        </tr>
                    </table>
                    <table class="tabledata">
                        <th>&nbsp;&nbsp;</th>
                        <th>ID</th>
                        <th>Estimate type</th>
                        <th>description</th>
                        <th>Estimate (Rs)</th>
                        <th>Actual (Rs)</th>
                        <tr style="background-color:#BDFCC9;">
                            <td><input type="checkbox" name="perform_action" value="hjbfvh" /></td>
                            <td><a href="javascript:display_details();">EST000023</a></td>
                            <td align="left">Fixed for duration</td>
                            <td align="left">Loan premium payment</td>
                            <td>2574</td>
                            <td>2574</td>

                        </tr>
                        <tr>
                            <td><input type="checkbox" name="perform_action" value="hjbfvh" /></td>
                            <td><a href="javascript:open_window('/SmartMoneyPlansDemo/pages/plan_details.jsp')">EST000024</a></td>
                            <td align="left">Fixed for duration</td>
                            <td align="left">Loan premium payment</td>
                            <td>2574</td>
                            <td>2574</td>

                        </tr>
                        <tr style="background-color:#BDFCC9;">
                            <td><input type="checkbox" name="perform_action" value="hjbfvh" /></td>
                            <td><a href="javascript:open_window('/SmartMoneyPlansDemo/pages/plan_details.jsp')">EST000031</a></td>
                            <td align="left">Fixed for duration</td>
                            <td align="left">Loan premium payment</td>
                            <td>2574</td>
                            <td>2574</td>

                        </tr>
                        <tr>
                            <td><input type="checkbox" name="perform_action" value="hjbfvh" /></td>
                            <td><a href="javascript:open_window('/SmartMoneyPlansDemo/pages/plan_details.jsp')">EST000061</a></td>
                            <td align="left">Fixed for duration</td>
                            <td align="left">Loan premium payment</td>
                            <td>2574</td>
                            <td>2574</td>

                        </tr>
                        <tr style="background-color:#BDFCC9;">
                            <td><input type="checkbox" name="perform_action" value="hjbfvh" /></td>
                            <td><a href="javascript:open_window('/SmartMoneyPlansDemo/pages/plan_details.jsp')">EST000075</a></td>
                            <td align="left">Fixed for duration</td>
                            <td align="left">Loan premium payment</td>
                            <td>2574</td>
                            <td>1200</td>

                        </tr>
                        <tr>
                            <td><input type="checkbox" name="perform_action" value="hjbfvh" /></td>
                            <td><a href="javascript:open_window('/SmartMoneyPlansDemo/pages/plan_details.jsp')">EST000081</a></td>
                            <td align="left">Fixed for duration</td>
                            <td align="left">Loan premium payment</td>
                            <td>2574</td>
                            <td>0</td>
                        </tr>
                    </table>


                    <table class="tabledata" >
                        <th colspan="4">Search Summary</th>
                        <th>Total estimate (Rs.)</th>
                        <th>Total actual (Rs.)</th>

                        <tr style="background-color:#BDFCC9;">
                            <td colspan="4" align="left">Total estimate amount of your search (A)</td>
                            <td align="center"><span class="big">28456</span></td>
                            <td>&nbsp;&nbsp;</td>
                        </tr>
                        <tr >
                            <td colspan="4" align="left">Total actual amount of your search (B)</td>
                            <td>&nbsp;&nbsp;</td>
                            <td align="center"><span class="big">25154</span></td>
                        </tr>
                        <tr style="background-color:#BDFCC9;">
                            <td colspan="4" align="left">Difference between estimate and actual (A-B)</td>
                            <td>&nbsp;&nbsp;</td>
                            <td align="center"><span class="big">2574</span></td>
                        </tr>
                    </table>


                    <div id="button">
                        <ul>
                            <li ><a  href="/SmartMoneyPlansDemo/pages/conversion_confirm.jsp" >Convert estimate</a></li>
                            <li > <a  href="/SmartMoneyPlansDemo/pages/estimates/edit_estimate.jsp" >Edit estimate</a></li>
                            <li > <a  href="/SmartMoneyPlansDemo/pages/search_plan.jsp" >Back</a></li>
                        </ul>
                    </div>

                    <div id="demo-notes">
                        <h4>NOTE: in the actual site convert estimate option will be available to users who don't opt for the transaction module.
                            They have to convert their estimate through this option only.</h4>
                    </div>
                </div>

            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>
    </body>
</html>
