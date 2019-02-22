<%-- 
    Document   : alert_inbox
    Created on : 16 Feb, 2013, 1:18:15 AM
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
    </head>
    <body>
        <div id="allcontent">
            <%@include file="/pages/header.jsp" %>
            <%@include file="/pages/ribbon.jsp" %>
            <div id="actual_content">
                <%@include file="/pages/cr_leftnav.jsp" %>
                <div id="content-body">
                    <h2>View your inbox for alerts</h2>
                    <h4 style="line-height: 25px;">This estimate is of the type <span class="green">Fixed for this period</span>.For this estimate your
                        actual amount of the expense must be <span class="green">Rs.<span class="numbers">2574</span></span>.
                        In case you want to add a different actual amount please go back and edit your estimate first.</h4>
                    <form name="thisForm" method="post" action="add_plan_result.html">
                        <input type="hidden" name="module" value="ESTIMATE"  />
                        <input type="hidden" name="functionality" value="save_estimate" />
                        <input type="hidden" name="subfunctionality" value="n/a"  />
                        <div id="ribbon">
                            <ul>
                                <li ><a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >Delete</a></li>
                                <li > <a  href="javascript:history.go(-1);" >go back</a></li>
                                <li > <a  href="javascript:clear()" ><b>Mark as completed</b></a></li>
                            </ul>
                        </div>
                       <%-- <table class="tabledata inbox_table" style="margin:0;">
                            <col width="5%" />
                            <col width="57%" />
                            <col width="10%" />
                            <col width="10%" />
                            <col width="18%" />
                            <th>&nbsp;</th>
                            <th>alert link</th>
                            <th>generated</th>
                            <th>status</th>
                            <th>action</th>
                        </table>--%>
                        <div class="scrollable_function">
                            <table class="tabledata inbox_table">
                                <col width="5%" />
                                <col width="47%" />
                                <col width="15%" />
                                <col width="15%" />
                                <col width="18%" />
                                <tr style="background-color:#BDFCC9;">
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="red">PENDING</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr style="background-color:#BDFCC9;">
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>                  
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr style="background-color:#BDFCC9;">
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr style="background-color:#BDFCC9;">
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr style="background-color:#BDFCC9;">
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr style="background-color:#BDFCC9;">
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr >
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr style="background-color:#BDFCC9;">
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr >
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                                <tr style="background-color:#BDFCC9;">
                                    <td><input type="checkbox" name="alert_box" value="alert_id" /></td>
                                    <td><a href="#">Your estimation is pending for March 2013</a></td>
                                    <td>15-Feb-2013</td>
                                    <td><span class="green">COMPLETED</span></td>
                                    <td>
                                        <a  href="/SmartMoneyPlansDemo/pages/conversion_result.jsp" >View alert</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </form>
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>
    </body>
</html>


