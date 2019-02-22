<%--
  Created by IntelliJ IDEA.
  User: co21321
  Date: 3/13/2017
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User action page</title>
    <script type="text/javascript">
        function myFunction() {
            var firstName = document.user_form.user_first_name.value;
            var lastName = document.user_form.user_last_name.value;
            var xmlHttpRequest = new XMLHttpRequest();
            xmlHttpRequest.onreadystatechange = function () {
                if (xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200) {
                    console.log(this.responseText);
                    document.getElementById("result").style.display = "";
                    document.getElementById("result").innerHTML = this.responseText;
                }
            };

            xmlHttpRequest.open("POST", "addUserServlet", true);
            xmlHttpRequest.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
            xmlHttpRequest.send("user_first_name=" + firstName + "&user_last_name=" + lastName);
        }

        function loadAsynchronousContent() {
            var xmlHttpRequest = new XMLHttpRequest();
            xmlHttpRequest.onreadystatechange = function () {
                if (xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200) {
                    console.log(this.responseText);
                    document.getElementById("additional_content").firstElementChild.innerHTML = this.responseText;
                }
            };

            xmlHttpRequest.open("GET", "loadContentServlet", true);
            xmlHttpRequest.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
            xmlHttpRequest.send();
        }


    </script>
    <link rel="stylesheet" type="text/css" href="<c:url value="style/common_style.css"/>">
</head>
<body onload="loadAsynchronousContent()">
<div id="allcontent">
    <div id="actual_content">
        <div id="sidebar">
            <%@include file="/cr_leftnav.jsp" %>
            <div id="side_content">
                <div id="additional_content">
                    <p></p>
                </div>
            </div>
        </div>
        <div id="content-body">
            <form name="user_form">
                <table class="tableinfo">
                    <tr>
                        <th colspan="2">Add User</th>
                    </tr>
                    <tr>
                        <td>First Name:</td>
                        <td><input type="text" name="user_first_name"></td>
                    </tr>
                    <tr>
                        <td>First Name:</td>
                        <td><input type="text" name="user_last_name"></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="button" value="Submit User" id="myBtn" onclick="myFunction()"></td>
                    </tr>
                </table>
            </form>
            <div class="success_notifications" id="result" style="display: none;"></div>
        </div>
    </div>
</div>

</body>
</html>
