﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>
<s:property value="#customer==null?'添加':'修改'" />客户
</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
	rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/layer/mobile/need/layer.css">			
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath }/js/my.js"></script> --%>
<script type="text/javascript" src="${pageContext.request.contextPath }/layer/layer.js"></script>
<script type="text/javascript">
	/* $(function() {
		loadSelect('006', "level", "cust_level.dict_id", "");
		loadSelect('009', "source", "cust_source.dict_id", "");
		loadSelect('001', "industry", "cust_industry.dict_id", "");
		
	}); */

	function checkData() {
		if($("#cust_name").val()=="" || $("#cust_name").val().trim() == "") {
			layer.tips('客户名称不能为空！', '#cust_name');
			return false;
		} 
		var level = $("select[name='cust_level.dict_id']").val();
		var source = $("select[name='cust_source.dict_id']").val();
		var industry = $("select[name='cust_industry.dict_id']").val();
		if(level=="") {
			layer.tips('请选择客户级别！', 'select[name="cust_level.dict_id"]');
			return false;
		}
		/* if($("#cust_linkman").val()=="" || $("#cust_linkman").val().trim() == "") {
			layer.tips('联系人名称不能为空！', '#cust_linkman');
			return false;
		} */
		/* if($("#cust_user_id").val()=="" || $("#cust_user_id").val().trim() == "") {
			layer.tips('负责人ID不能为空！', '#cust_user_id');
			return false;
		} */
		if(source=="") {
			layer.tips('请选择客户来源！', 'select[name="cust_source.dict_id"]');
			return false;
		}
		/* if(industry=="") {
			layer.tips('请选择客户行业！', 'select[name="cust_industry.dict_id"]');
			return false;
		} */
		if($("#cust_phone").val()=="" || $("#cust_phone").val().trim() == "") {
			layer.tips('固定电话不能为空！', '#cust_phone');
			return false;
		}
		if($("#cust_mobile").val()=="" || $("#cust_mobile").val().trim() == "") {
			layer.tips('移动电话不能为空！', '#cust_mobile');
			return false;
		}
	}	
	
</script>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<FORM id="form1" name="form1" action="${pageContext.request.contextPath }/customer_add.action"  onsubmit="return checkData()" method="post" enctype="multipart/form-data" >
		
		<input type="hidden" name="cust_id" value="<s:property value="#customer.cust_id" />" />

		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg"
						border=0></TD>
					<TD width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg"
						height=20></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg><IMG
						src="${pageContext.request.contextPath }/images/new_022.jpg" border=0></TD>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：客户管理 &gt; <s:property value="#customer==null?'添加':'修改'" />客户</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>
						<TABLE cellSpacing=0 cellPadding=5  border=0>
							<TR>
								<td>客户名称：</td>
								<td>
								<INPUT class=textbox id="cust_name" style="WIDTH: 180px" maxLength=50 name="custName" >
								</td>
								<td >客户级别 ：</td>
								<td>
									<select name="dictCustLevel.did" >
										<c:forEach items="${list }" var="dict">
											<option value="${dict.did }">${dict.dname }</option>
										</c:forEach>
									</select>
								</td>
							</TR>
							<TR>
								<td>信息来源 ：</td>
								<td>
								<INPUT class=textbox id="cust_name" style="WIDTH: 180px" maxLength=50 name="custSource">
								</td>
							</TR>
							
							<TR>
								<td>固定电话 ：</td>
								<td>
								<INPUT class=textbox id="cust_name" style="WIDTH: 180px" maxLength=50 name="custPhone">
								</td>
								<td>移动电话 ：</td>
								<td>
								<INPUT class=textbox id="cust_name" style="WIDTH: 180px" maxLength=50 name="custMobile">
								</td>
							</TR>
							<tr>
								<td rowspan=2>
								<INPUT class="button" id="sButton2" type="submit" value=" 保存 " name=sButton2>
								</td>
							</tr>
						</TABLE>
						
						
					</TD>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg">
					<IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg"
						border=0></TD>
					<TD align="middle" width="100%" background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</FORM>
</BODY>
</HTML>
