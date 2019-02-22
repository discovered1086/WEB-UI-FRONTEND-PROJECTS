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
    <script type="text/javascript">
        function myFunction() {
            var country = document.user_form.country.value;
            var xmlHttpRequest = new XMLHttpRequest();
            xmlHttpRequest.onreadystatechange = function () {
                if (xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200) {
                    console.log(this.responseText);
                    document.getElementById("state_dropdown").innerHTML = this.responseText;
                }
            };

            xmlHttpRequest.open("POST", "loadStateServlet", true);
            xmlHttpRequest.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
            xmlHttpRequest.send("country=" + country);
        }


    </script>
    <link rel="stylesheet" type="text/css" href="<c:url value="style/common_style.css"/>">
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
                        <td><select name="country" onchange="myFunction()">
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
