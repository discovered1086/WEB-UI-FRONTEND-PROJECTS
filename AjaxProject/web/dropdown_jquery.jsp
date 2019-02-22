<%--
  Created by IntelliJ IDEA.
  User: co21321
  Date: 3/16/2017
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User action page</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="style/common_style.css"/>">
    <script type="text/javascript" src="scripts/jquery-3.2.0.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.tableinfo').on('change', '#country_dropdown', function (event) {
                //event.preventDefault();
                console.log(event.target);
                $.ajax('loadStateServlet?country=' + $('#country_dropdown').find('option:selected').val(), {
                    type: 'get',
                    contentType: 'application/x-www-form-urlencoded',
                    dataType: 'html'
                }).done(function (response) {
                    console.log(response.toString());
                    $('#state_dropdown').html(response);
                });
            });
        });
    </script>
</head>
<body>
<div id="allcontent">
    <div id="actual_content">
        <div id="sidebar">
            <%@include file="/cr_leftnav.jsp" %>
            <div id="side_content"></div>
        </div>
        <div id="content-body">
            <form name="user_form">
                <table class="tableinfo">
                    <tr>
                        <th colspan="2">Load State Details</th>
                    </tr>
                    <tr>
                        <td>Select Country</td>
                        <td><select name="country" onchange="myFunction()" id="country_dropdown">
                            <option value="default" selected>Select a State</option>
                            <option value="USA">USA</option>
                            <option value="India">India</option>
                        </select></td>
                    </tr>
                    <tr>
                        <td>Select State</td>
                        <td><select name="state" id="state_dropdown">
                            <option value="default" selected>Select a State</option>
                        </select></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>
