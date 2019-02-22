<%-- 
    Document   : login
    Created on : 11 Oct, 2011, 11:34:53 PM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Save your plan details</title>

        <link rel="stylesheet"  type="text/css" href="/SmartMoneyPlansDemo/style/smart_money_plans.css" >
        <script type="text/javascript" src="/SmartMoneyPlansDemo/script/common.js"></script>


    </head>

    <body>
        <div id="allcontent">
            <%@include file="/pages/header_noutil.jsp" %>
            <%@include file="/pages/ribbon_noutil.jsp" %>


            <div id="actual_content">


                <div id="content-body-login">
                    <div id="ribbon_noutil" style="min-height:210px;">
                        <img src="/SmartMoneyPlansDemo/images/man_holding_money.jpg" alt="man holding money" width="210px" height="210px" style="margin-right: 50px;float: left;"/>
                        <table class="table_login">
                            <tr>
                                <td style="vertical-align:top;">user name</td>
                                <td align="left"><input   type="text" name="user_name" size="15"   />
                                    <br>
                                    <a href="#">Forgot User id?</a></td>
                            </tr>
                            <tr>
                                <td style="vertical-align:top;">Password</td>
                                <td align="left"><input   type="password" name="password" size="15"   /><br>
                                    <a href="#">Forgot password?</a></td>
                            </tr>

                            <tr>
                                <td colspan="2">
                                    <div id="button">
                                        <ul>
                                            <li ><a  href="/SmartMoneyPlansDemo/pages/home_page.jsp" >login</a></li>
                                            <li > <a  href="javascript:clear()" ><b>Clear</b></a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>&nbsp;&nbsp;</td>
                                <td >New user?<a href="#">Register</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div id="content-body">
                    <div class="medium_blocks" style="float:left;">
                        <h2>Welcome to Smart Money Plans</h2>
                        <h3> Plan smartly to manage your money better </h3>
                        <p>
                        <h4>Smart money plans is not something new.We all plan in one way or the other to manage our money better.
                            Smart Money Plans make your task of managing our money easier by enabling you to,
                        </h4>
                    </div>
                    <div class="medium_blocks" style="margin-left: 370px;">
                        <h2>Welcome to Smart Money Plans</h2>
                        <h3> Plan smartly to manage your money better </h3>

                        <h4>Smart money plans is not something new.We all plan in one way or the other to manage our money better.
                            Smart Money Plans make your task of managing our money easier by enabling you to,
                        </h4>
                    </div>
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>

    </body>


</html>

