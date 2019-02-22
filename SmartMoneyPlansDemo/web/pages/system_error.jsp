<%-- 
    Document   : system_error
    Created on : 8 Dec, 2011, 6:45:06 PM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Save your plan details</title>

        <link rel="stylesheet"  type="text/css" href="/SmartMoneyPlansDemo/style/smart_money_plans.css" >

    </head>

    <body>
        <div id="allcontent">
            <%@include file="/pages/header_noutil.jsp" %>
            <%@include file="/pages/ribbon_noutil.jsp" %>

            <div id="actual_content">
                <%@include file="/pages/sidebar_noutil.jsp" %>
                <div id="content-body">
                    <div id="demo-notes" style="background-color: #FFCCCC;">
                        <h4>
                        The site faced some technical issues while serving your request<br>
                        Please try after some time or call our help desk number @ 88052645985<br>
                        kindly navigate to the <a href="javascript:history.go(-1)">previous page</a></h4>
                    </div>
                   
                </div>
            </div>
            <%@include file="/pages/footer.jsp" %>
        </div>

    </body>


</html>


