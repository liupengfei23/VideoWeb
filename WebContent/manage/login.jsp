<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<style type="text/css">
    html{font-size:18px;}
    body{background-color: aliceblue;}
    fieldset{width:300px; margin: 0 auto;background-color:white;}
    legend{font-weight:bold; font-size:25px;}
    label{float:left; width:100px; margin-left:10px;hegit:50px;}
    .left{margin-left:80px;}
	.right{margin-left:20px;}
    .input{width:150px;heght:50px;}
    span{color: #666666;}
</style>
<script language=JavaScript>
<!--

function InputCheck(LoginForm)
{
  if (LoginForm.username.value == "")
  {
    alert("请输入用户名!");
    LoginForm.username.focus();
    return (false);
  }
  if (LoginForm.password.value == "")
  {
    alert("请输入密码!");
    LoginForm.password.focus();
    return (false);
  }
}

//-->
</script>
</head>
<body>
<div>
<!--  
<p style="margin-left:65%" >没有账号，请 <a href="reg.html">注册</a><p/>
-->
</div>
<div style="height:100px"></div>
<div>
<div>

</div>
<fieldset>

<legend>用户登录</legend>
<form name="LoginForm" method="post" action="" onSubmit="return InputCheck(this)">
<p>
<label for="username" class="label">用户名:</label>
<input id="username" name="username" type="text" class="input" />
<p/>
<p>
<label for="password" class="label">密 码:</label>
<input id="password" name="password" type="password" class="input" />
<p/>
<p>
<input type="submit" name="submit" value="  登 录  " class="left" />
<input type="reset" name="reset" value="  清 空  " class="right" />
</p>

</form>
</fieldset>
</div>
</body>
</html>