<%-- 
    Document   : prompt_display
    Created on : 12 Feb, 2013, 11:07:37 PM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<div class="prompt_background" id="content_background" style="display:none;">
</div>


<div class="prompt_content" id="content_prompt" style="display:none;">
    <div id="allcontent_popup" id="all_content">
        <%-- <%@include file="/pages/ribbon_noutil.jsp" %>--%>

        <div id="actual_content_popup">
            <h2>View plan details</h2>
            <h4 style="line-height: 25px;">Details of the plan you have selected to view</h4>

            <table class="tabledata vertical_table" >
                 <col width="40%"  />
                    <col width="60%" />
                    <tr>
                        <th >Estimate type: </th>
                        <td>Fixed for this period</td>
                    </tr>
                    <tr>
                        <th >Description: </th>
                        <td align="left">The hungry rabbit jumped over the wall and it directly came to my desk
                        and asked me if he can join the army as well but I told him it's not a place for actual animals, It's a
                        place for people who become dangerous animals</td>
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
            <div id="button">
                <ul>
                    <li ><a  href="javascript:hide_details();" >Close window</a></li>

                </ul>
            </div>
        </div>

    </div>
</div>