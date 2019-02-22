<%-- 
    Document   : plan_details
    Created on : 19 May, 2012, 12:16:34 PM
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
                <h2>View plan details</h2>
                <h4 style="line-height: 25px;">Details of the plan you have selected to view</h4>

                <table class="tabledata" >
                    <col width="40%"  />
                    <col width="60%" />
                    <tr>
                        <th >Estimate type: </th>
                        <td>Fixed for this period</td>
                    </tr>
                    <tr>
                        <th >Description: </th>
                        <td >dfhghdsghdgshfgsdhgfhsgdfgsdlhgfhsdgfhsdgbhfgbsdlhbflhsdbfkbsdfkj</td>
                    </tr>
                    <tr>
                        <th >Estimate Amount: (Rs)</th>
                        <td>2574</td>
                    </tr>
                    <tr>
                        <th >Is this estimate quantifiable </th>
                        <td>NO</td>
                    </tr>
                    <tr>
                        <th >Begin date of the fixed expense </th>
                        <td>12/12/2012&nbsp;&nbsp;[dd/mm/yyyy]</td>
                    </tr>
                    <tr>
                        <th >End date of the fixed expense </th>
                        <td>12/12/2013&nbsp;&nbsp;[dd/mm/yyyy]</td>
                    </tr>
                    <tr>
                        <th >Estimate for </th>
                        <td>March&nbsp;2013</td>
                    </tr>
                </table>
                <table class="tableinfo">
                    <tr>
                        <td>&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td align="left">
                            <div id="button">
                                <ul>
                                    <li ><a  href="javascript:window.close();" >Close window</a></li>

                                </ul>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
         
        </div>
    </body>
</html>

