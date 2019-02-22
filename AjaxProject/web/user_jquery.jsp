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
    <link rel="stylesheet" type="text/css" href="<c:url value="style/common_style.css"/>">
    <script type="text/javascript" src="scripts/jquery-3.2.0.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".tableinfo").on('click', '#myBtn', function (event) {
                event.preventDefault();
                console.log(event.target);
                var first_name = $('input[name=user_first_name]').val();
                var last_name = $('input[name=user_last_name]').val();
                $.ajax('addUserServlet', {
                    type: 'post',
                    data: {user_first_name: first_name, user_last_name: last_name},
                    contentType: 'application/x-www-form-urlencoded',
                    dataType: 'html'
                }).done(function (response) {
                    console.log(response.toString());
                    //$('#result').css('display', '');
                    $('#result').show(800);
                    $('#result').html(response);
                });
            });

            $.ajax('loadContentServlet', {
                cache: false,
                beforeSend: function () {
                    $('#additional_content').html('<img src="images/progress.gif" alt="progress bar logo" style="margin: auto"/>');
                    //$('#additional_content').html("<p>Loading....</p>");
                }
            }).done(function (response) {
                console.log(response.toString());
                $('#additional_content').html(response);
            }).fail(function (request, errorType, errorMessage) {
                console.log(errorType);
                console.log(errorMessage);
                $('#additional_content').html('<p><span style="color:red;">Something went wrong....!!!</span></p>');
            }).always(function () {
                $('#additional_content').css("background-color", "white");
            });
        });

    </script>

</head>
<body>
<div id="allcontent">
    <div id="actual_content">
        <div id="sidebar">
            <%@include file="/cr_leftnav.jsp" %>
            <div id="side_content">
                <div id="additional_content">
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
                        <td colspan="2"><input type="button" value="Submit User" id="myBtn"></td>
                    </tr>
                </table>
            </form>
            <div class="success_notifications" id="result" style="display: none;"></div>
        </div>
    </div>
</div>

</body>
</html>

