<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	<link href="<%=path %>/css/houtai.css" rel="stylesheet" />
	<script type="text/javascript" src="<%=path %>/js/iepng.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
	DD_belatedPNG.fix('div, ul, img, li, input,p,ul,ol,h1,h2,h3,a,span,i'); 
		var aa=false,bb=false,cc=false,dd=false,ee=false,ff=false,gg=false,ee=false;
		function checkdulname(a){
			if(a.length>0){
				aa=true;
				$("#checkusername_error").html("");
				$.post("user/checkusername.do",{
					"username":a
				},function(data){
                    if(data=="Y"||data=="\"Y\""){
						bb=true;
					}else{
						$("#checkusername_error").html("<font color=red>用户名已存在！</font>");
						bb=false;
					}
				});
			}else{
				$("#checkusername_error").html("<font color=red>请填写用户名！</font>");
				aa=false;
			}
		}
		function checknotnull2(e){
			if(e.length>0){
				$("#password_error").html("");
				cc=true;
			}else{
				$("#password_error").html("<font color=red>请填写密码！</font>");	
				cc=false;		
			}
		}
		function checknotnullb(e){
			if(e.length>0){
				$("#passwordb_error").html("");
				ee=true;
			}else{
				$("#passwordb_error").html("<font color=red>请填写工号！</font>");	
				ee=false;		
			}
		}
		function checknotnull3(e){
			if(e.length>0){
				$("#usersname_error").html("");
				dd=true;
			}else{
				$("#usersname_error").html("<font color=red>请填写姓名！</font>");
				dd=false;
			}
		}
		function checknotnull4(e){
			if(e.length>0){
				$("#usersex_error").html("");
				ee=true;
			}else{
				$("#usersex_error").html("<font color=red>请填写性别！</font>");
				ee=false;
			}
		}
		
		function checknotnull5(e){
			if(e.length>0){
				$("#useraddr_error").html("");
				ff=true;
			}else{
				$("#useraddr_error").html("<font color=red>请填写地址！</font>");
				ff=false;
			}
		}
		function checknotnull6(e){
			if(e.length>0){
				$("#description_error").html("");
				gg=true;
			}else{
				$("#description_error").html("<font color=red>请填写描述！</font>");
				gg=false;
			}
		}
		function ccc(){
			if(aa&&bb&&cc&&dd&&ee&&gg&&ff){
				return true;
			}else{
				alert("数据填写不合法！");
				return false;
			}
		}
	</script>
    <div id="tanchuk">
  <div class="tan_top"></div>
  <div class="tan_main">
  <form action="user/adduser.do" method="post">
	<table class="tck" width="213" border="0" cellspacing="0" cellpadding="0">
		<tr bgcolor=white><td align=right>工&nbsp;&nbsp;号：</td><td>
		<input name="bianhao" class="text_yhm" onblur="checknotnullb(this.value)"/><span id="passwordb_error"></span>
		</td></tr>
		<tr bgcolor=white><td align=right class="tc_w108">用户名：</td><td>
		<input class="text_yhm" name="username" onblur="checkdulname(this.value)" /><span id="checkusername_error"></span>
		</td></tr>
		<tr bgcolor=white><td align=right>密&nbsp;&nbsp;码：</td><td>
		<input name="password" type="password" class="text_yhm" onblur="checknotnull2(this.value)"/><span id="password_error"></span>
		</td></tr>
		<tr bgcolor=white><td align=right>姓&nbsp;&nbsp;名：</td><td>
		<input name="name" class="text_yhm" onblur="checknotnull3(this.value)"/><span id="usersname_error"></span>
		</td></tr>
		<tr bgcolor=white><td align=right>性&nbsp;&nbsp;别：</td><td>
		<input name="sex" class="text_yhm" onblur="checknotnull4(this.value)"/><span id="usersex_error"></span>
		</td></tr>
		<tr bgcolor=white><td align=right>地&nbsp;&nbsp;址：</td><td>
		<input name="addr" class="text_yhm" onblur="checknotnull5(this.value)"/><span id="useraddr_error"></span>
		</td></tr>
		<tr bgcolor=white><td align=right>描&nbsp;&nbsp;述：</td><td>
		<input name="description" class="text_yhm" onblur="checknotnull6(this.value)"/><span id="description_error"></span>
		</td></tr>
		<tr bgcolor=white><td align=right>角&nbsp;&nbsp;色：</td><td>
		<select name="roleid">
			<c:forEach items="${rolenames}" var="r">
				<option value="${r.roleid }">${r.rolename}</option>
			</c:forEach>
		</select>
		</td></tr>
		<tr bgcolor=white><td colspan="2" align=center>
			<input type="submit" value="确定" class="queren"/><input type="button" value="取消" class="quxiao" onclick="hiden()"/>
		</td></tr>
	</table>
</form>
</div>
<div class="tan_bottom"></div>
</div>