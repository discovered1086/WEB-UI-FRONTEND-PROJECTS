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


                    <h2>Add a new category</h2>
                    <h4 style="line-height:25px;">Add a new category of your expenses</h4>
                    <%--<table class="tableinfo" width="100%">--%>
                    <fieldset class="formdata">
                        <legend>Add new category</legend>
                        <table class="tableinfo">
                            <tr>
                                <td>Category</td>
                                 <td align="left"><input type="text" name="description" size="15" /></td>
                            </tr>
                            <tr>
                                <td>Sub category</td>
                                 <td align="left"><input type="text" name="description" size="15" /></td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td align="left"><input type="text" name="description" size="30" /></td>
                            </tr>
                            
                            <tr>
                                <td>&nbsp;&nbsp;</td>
                                <td align="left">
                                    <div id="button">
                                        <ul>
                                            <li ><a  href="/SmartMoneyPlansDemo/pages/add_plan_result.jsp" >add category</a></li>
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


