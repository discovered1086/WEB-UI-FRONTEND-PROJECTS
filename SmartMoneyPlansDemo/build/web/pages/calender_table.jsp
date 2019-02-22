<%-- 
    Document   : calender_table
    Created on : 20 Oct, 2011, 4:16:50 PM
    Author     : Kingshuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<link href="/SmartMoneyPlan/style/calender.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/SmartMoneyPlan/script/calender.js"></script>


<table id="calenderTable">
       <tbody id="calenderTableHead">
         <tr>
           <td colspan="4" align="center">
	     <select onChange="showCalenderBody(
                   createCalender(document.getElementById('selectYear').value,
	           this.selectedIndex, false));"
                   id="selectMonth">
	              <option value="0">Jan</option>
	              <option value="1">Feb</option>
	              <option value="2">Mar</option>
	              <option value="3">Apr</option>
	              <option value="4">May</option>
	              <option value="5">Jun</option>
	              <option value="6">Jul</option>
	              <option value="7">Aug</option>
	              <option value="8">Sep</option>
	              <option value="9">Oct</option>
	              <option value="10">Nov</option>
	              <option value="11">Dec</option>
	          </select>
            </td>
            <td colspan="2" align="center">
	    <select onChange="showCalenderBody(createCalender(this.value,
	      document.getElementById('selectMonth').selectedIndex, false));"
              id="selectYear">
	    </select>
			</td>
           <td align="center">
	    <a href="#" onClick="closeCalender();">
              <font color="#003333" size="+1">X</font>
            </a>
	   </td>
	</tr>
       </tbody>
       <tbody id="calenderTableDays">
         <tr style="">
           <td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td>
           <td>Thu</td><td>Fri</td><td>Sat</td>
         </tr>
       </tbody>
       <tbody id="calender"></tbody>
    </table>