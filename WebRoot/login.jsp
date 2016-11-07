<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
</head>
    <body>
		<form action="login" method="post">
			<table style="margin-left:45px">
				<tr><td colspan="2" height="25px"></td></tr>
				<tr>
					<td align="right">账号：</td>
					<td><input type="text" placeholder="请输入账号" name="login.name"></td>
				</tr>
				<tr><td colspan="2" height="15px"></td></tr>
				<tr>
					<td align="right">密码：</td>
					<td><input type="password" placeholder="请输入密码" name="login.password"></td>
				</tr>
				<tr><td colspan="2" height="15px"></td></tr>
				<tr>
					<td colspan="2" align="center">
						<input type="checkbox">记住密码&nbsp;
						<input type="checkbox">自动登录
					</td>
				</tr>
				<tr><td colspan="2" height="15px"></td></tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit"value="登录">&nbsp;&nbsp;&nbsp;
						<input type="reset" value="取消">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>