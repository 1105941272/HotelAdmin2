<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/10/28
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>酒店管理系统</title>
    <link rel="stylesheet" href="css/style.css"/>
    <script type="text/javascript" src="js/main.js"></script>


  </head>
  <body onload="start()">

  <div>
    <!--头部导航栏-->
    <div class="head" >

      <li>
        <img src="images/home.jpg" height="55px">
      </li>
      <li style="font-size: 25px">酒店管理系统
      </li>
      <div class="hr1"></div>
      <div class="hr2"></div>
      <div style="cursor:pointer;" class="hr" id="login" onclick="login_fr_show()">
        快捷<br>登录
      </div>
      <div  class="hrr" id="cancellation">

      </div>
    </div>
    <!--底部主界面-->
    <div class="bottom">
      <div class="tfr">
        <div class="clock"></div>
        <div id="timeDiv" class="clr" style="font-size: 20px"></div>
      </div>
      <div class="ord">
        <table>
          <tr ><p class="ord-tr1">今日房间</p></tr>
          <tr style="height: 20px"><td>入住：<span style="color: red" id="settle_home">0</span></td>
            <td>空闲：<span style="color: red" id="space_home">0</span></td>
          </tr>
        </table>
        <p style="color: white">-----------------------------------</p>
        <br><p style="height: 10px"></p>
        <table width="260px">
          <tr ><td><div style="cursor:pointer;"  class="tr31" >预定入住</div></td>
            <td><div style="cursor:pointer;"  id="btn_settle"  class="tr32">
             <a href="bagsettle.jsp"> 携包入住</a>
             </div></td></tr>
          <tr ><td><div style="cursor:pointer;"  class="tr41" id="btn_show" >入住情况</div></td>
            <td><div style="cursor:pointer;"  class="tr42" id="btn_out" >
              <a href="outsettle.jsp"> 房间退订</a>
            </div></td></tr>
        </table>

      </div>
      <!--隐藏的登录界面-->
      <div class="login_fr" id="login_fr">
        <form action="#" name="login_form" id="login_form">
          <div class="login_fr_user">用户名：<input id="user" style="height: 35px ;width: 340px" type="text"><br></div>
          <div class="login_fr_pwd">密&nbsp;&nbsp;&nbsp;&nbsp;码：<input id="pwd" style="height: 35px ;width: 340px" type="text"><br></div>
          <input class="input_login" style="cursor:pointer;" value="登录" onclick="checkPwd()">
          <input class="input_exit" style="cursor:pointer;" value="返回" onclick="login_fr_none()">

        </form>

      </div>
    </div>
    <!--底部主界面-->


  </div>

  </body>
</html>
