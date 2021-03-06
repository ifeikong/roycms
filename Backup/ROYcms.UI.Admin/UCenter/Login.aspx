﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="ROYcms.UI.Admin.UCenter.Login" %>
<html>
<head>
<meta http-equiv=content-type content="text/html; charset=utf-8" />
<title><CMS:WebConfig ID="WebConfig1" Name="web_name" runat=server />- 用户登录中心</title>
<script src="/Administrator/js/SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="/Administrator/css/SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
<link href="/Ucenter/css/system_Login.css" rel="stylesheet" type="text/css">
</head>
<body>
<form method="post" action="Login.aspx" id="systemform" >
  <center>
    <div id="main" align="left">
      <table width="760" border="0" cellspacing="0" cellpadding="0" class="lg">
        <tr>
          <td id="logotd"><span class="logo">
            <img  src='<CMS:WebConfig Name="logo" runat=server />' alt='<CMS:WebConfig Name="web_name" runat=server /> - ROYcms! NT' />
            </span></td>
          <td id="helptd" align="right" class="f14" style="padding-right:22px;padding-top:17px;"></td>
        </tr>
      </table>
      <div id="left">
        <table id="tptable" width="476" height="130" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="right" bgcolor="#008BCE" id="tptd1"><img src="/Administrator/images/login_banner.jpg" alt='<CMS:WebConfig ID="WebConfig2" Name="web_name" runat=server /> - ROYcms! NT'  /></td>
          </tr>
        </table>
      </div>
      <div id="center">
        <div class="b2">
          <strong class="f12">没有注册帐号？</strong>
          <div align="center"> <a href="reg.aspx" title="注册账户" target="_blank">注册账户[站点通行证]</a></div>
          <hr size="0" style="border-top:1px solid #AAAAAA">
          <strong>注册用户请直接登录</strong>
          <table width="240" border="0" cellspacing="0" cellpadding="4">
            <tr>
              <td id="errortd" colspan=2 align=left style="color: red ;"></td>
            </tr>
            <tr>
              <td width="50" class="f14">用户名:</td>
              <td width="156"><span id="username">
                <input type="text" name="username" id="username"  class="ip"  />
                <br>
                <span class="textfieldRequiredMsg">用户名不能为空</span>
                </span></td>
            </tr>
            <tr id="trPassNorm">
              <td width="50" class="f14" valign="top">密　码:</td>
              <td width="156"><span id="password">
                <input name="password" type="password" class="ip" id="password"  />
                <br>
                <span class="textfieldRequiredMsg">密码不能为空</span>
                </span></td>
            </tr>
            <tr id="vcodeTr">
              <td class="f14" valign="top">验证码:</td>
              <td><span id="valdates">
                <input name="valdates" type="text" class="ip" id="valdates" style="width:60px" maxlength="4"  />
                <br>
                <span class="textfieldRequiredMsg">验证码不能为空</span>
                </span>
                <br />
                <span class="fgy">输入下面字符</span><br />
                <img id="validateCode" src="/Administrator/Img.ashx"  width="69" height="28"  onClick="this.src=this.src+'?1'"  alt="验证码" />
                <a  onClick="validateCode.src=validateCode.src+'?1'" title="看不清我要换一张">看不清？</a></td>
            </tr>
            <tr id="trRem1">
              <td></td>
              <td><span class="f13">
                <input name="mem_pass" type="checkbox">
                <label for="mem_pass">记住我的登录状态</label>
                </span></td>
            </tr>
            <tr id="trRem2">
              <td></td>
              <td><span class="mespasstip">使用公用电脑请勿选择该项</span></td>
            </tr>
            <tr>
              <td >&nbsp;</td>
              <td><input name="登 录" type="submit" id="登 录" value="登 录">
                <a href="/ucenter/getpassword.aspx" target=_blank>忘记密码？</a></td>
            </tr>
          </table>
        </div>
        <div id="question" class="b2">&nbsp;
          <strong>常见问题</strong><br>
          <li>
            <a href="/ucenter/getpassword.aspx"  target=_blank>密码丢失如何找回密码？</a>
          </li>
          <li>
            <a href="#">企业会员和个人会员的区别？</a>
          </li>
        </div>
      </div>
      <div id="right">&nbsp;</div>
      <br clear="all">
      <div class="line">&nbsp;</div>
      <div id="ft">&copy;<CMS:WebConfig ID="WebConfig3" Name="web_name" runat=server /> 版权所有 ROYcms NT!技术支持</div>
    </div>
  </center>
  <script type="text/javascript">
<!--
var username = new Spry.Widget.ValidationTextField("username");
var password = new Spry.Widget.ValidationTextField("password");
var valdates = new Spry.Widget.ValidationTextField("valdates");
//-->
</script>
</form>
</body>
</html>
