<%--
  Created by IntelliJ IDEA.
  User: CO21321
  Date: 4/11/2017
  Time: 12:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>EV dummy registration using accordian</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="style/common_style.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="style/jquery-ui.css"/>">
    <script type="text/javascript" src="scripts/jquery-3.2.0.js"></script>
    <script type="text/javascript" src="scripts/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#master_registration").accordion({
                heightStyle: "content"
            });
        });

        $(function () {
            $(".button").button().click(function (event) {
                event.preventDefault();
            });
        });

        $(document).ready(function () {
            $("#registration1").on('click', "#accessCodeBtn", function (event) {
                event.preventDefault();
                console.log(event.target);
                var access_code = $('input[name=access_code]').val();
                var count = 0;
                var totalCount = 4;

                $.ajax('registrationServlet', {
                    type: 'post',
                    data: {access_code: access_code},
                    contentType: 'application/x-www-form-urlencoded',
                    dataType: 'html'
                }).done(function (response) {
                    console.log("I'm inside done");
                    console.log(response.toString());
                    $("#registration2").html(response);

                    if (count < totalCount) {
                        console.log(count);
                        count = count + 1;
                    } else {
                        console.log(count);
                    }

                }).fail(function (request, errorType, errorMessage) {
                    $('#result').html('<p><span style="color:red;">Something went wrong....!!!</span></p>');
                    $('#result').show(500);
                    console.log(errorType);
                    console.log(errorMessage);

                }).always(function () {
                    $(function () {
                        $("#master_registration").accordion({
                            heightStyle: "content",
                            active: count,
                            collapsible: true
                        });
                    });
                });
            });

            $(function () {
                $(".button").button().click(function (event) {
                    event.preventDefault();
                });
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
            $('#additional_content').html('<p><span style="color:red;">Something went wrong....!!!</span></p>');
        }).always(function () {
            $('#additional_content').css("background-color", "white");
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

                <div id="master_registration">

                    <h3>Access Code</h3>

                    <div id="registration1" class="registration_box">
                        <%@include file="registration_step1.jsp" %>
                    </div>

                    <h3>Add the User</h3>

                    <div id="registration2" class="registration_box">
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
