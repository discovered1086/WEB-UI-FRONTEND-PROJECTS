<%--
  Created by IntelliJ IDEA.
  User: co21321
  Date: 4/10/2017
  Time: 1:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Dummy EV registration</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="style/common_style.css"/>">
    <script type="text/javascript" src="scripts/jquery-3.2.0.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#registration1").on('click', "#accessCodeBtn", function (event) {
                event.preventDefault();
                console.log(event.target);
                var access_code = $('input[name=access_code]').val();

                $.ajax('registrationServlet', {
                    type: 'post',
                    data: {access_code: access_code},
                    contentType: 'application/x-www-form-urlencoded',
                    dataType: 'text/html'
                }).done(function (response) {
                    console.log(response.toString());
                    $("#registration1").children(".tableinfo").hide(800);
                    $("#registration2").html(response);
                    $("#registration2").children(".tableinfo").show(800);
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
            <div id="side_content">
                <div id="additional_content">
                </div>
            </div>
        </div>
        <div id="content-body">
            <form name="user_form">
                <input type="hidden" name="subfunction" value="">

                <div id="registration1" class="registration_box">
                    <table class="tableinfo">
                        <col width="40%"/>
                        <col width="40%"/>
                        <col width="20%"/>
                        <tr>
                            <th colspan="3"><span style="float: left"></span>Provide Access Code</th>
                        </tr>
                        <tr>
                            <td>Access Code</td>
                            <td><input type="text" name="access_code"></td>
                            <td><input type="button" value="Next" id="accessCodeBtn"></td>
                        </tr>
                    </table>
                </div>

                <div id="registration2" class="registration_box">

                </div>

                <div id="registration3" class="registration_box">

                </div>

                <div id="registration4" class="registration_box">

                </div>

                <div id="registration5" class="registration_box">

                </div>

            </form>
            <div class="success_notifications" id="result" style="display: none;"></div>
        </div>
    </div>
</div>
</body>
</html>
