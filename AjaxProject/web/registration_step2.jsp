<%--
  Created by IntelliJ IDEA.
  User: co21321
  Date: 4/10/2017
  Time: 5:32 PM
  To change this template use File | Settings | File Templates.
--%>
<table class="tableinfo">
    <col width="40%"/>
    <col width="60%"/>
    <tr>
        <td>User ID</td>
        <td><input type="text" name="user_id"></td>
    </tr>
    <tr>
        <td>Password</td>
        <td><input type="password" name="user_password"></td>
    </tr>
    <tr>
        <td>Confirm Password</td>
        <td><input type="password" name="confirm_user_password"></td>
    </tr>
</table>

<table class="tableinfo">
    <col width="40%"/>
    <col width="40%"/>
    <col width="20%"/>
    <tr>
        <th colspan="3">Security Questions</th>
    </tr>
    <tr>
        <td>Security question 1</td>
        <td align="left"><select id="security_question1">
            <option>Favourite Movie</option>
            <option>Favourite Book</option>
            <option>Favourite Song</option>
        </select>
        </td>
        <td></td>
    </tr>
    <tr>
        <td>Security answer 1</td>
        <td><input type="text" name="ans_sec_qtn1"></td>
        <td></td>
    </tr>
    <tr>
        <td>Security question 2</td>
        <td><select id="security_question2">
            <option>Favourite Movie</option>
            <option>Favourite Book</option>
            <option>Favourite Song</option>
        </select>
        </td>
        <td></td>
    </tr>
    <tr>
        <td>Security answer 2</td>
        <td><input type="text" name="ans_sec_qtn2"></td>
        <td></td>
    </tr>
    <tr>
        <td>Security question 3</td>
        <td><select id="security_question3">
            <option>Favourite Movie</option>
            <option>Favourite Book</option>
            <option>Favourite Song</option>
        </select>
        </td>
        <td></td>
    </tr>
    <tr>
        <td>Security answer 3</td>
        <td><input type="text" name="ans_sec_qtn3"></td>
        <td><input type="button" value="Next" id="userBtn1" class="button"></td>
    </tr>
</table>
<div  id="result" style="display: none;"></div>
