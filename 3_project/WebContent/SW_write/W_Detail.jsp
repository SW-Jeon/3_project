<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="main">
		<h1>회원문의</h1>
		<h3>글보기</h3>
	<hr>
	<table style="display: inline-block; ">
			<tr>
				<td width="150">번호  |</td><td width="600" >${vo.writnum }</td>
			</tr>
			<tr>
				<td width="150">글내용  |</td><td width="600">${vo.title}</td>
			</tr>
			<tr>
				<td width="150">글내용  |</td><td width="600">${vo.wrotecontent}</td>
			</tr>
			<tr>
				<td width="150">글쓴이  |</td><td width="600">${vo.mid}</td>
			</tr>
<c:if test="${sessionScope.adminid=='admin'}">	
			<tr>
				<td width="150">답변  |</td><td width="600">${vo.rewrite}</td>
			</tr>
</c:if>		
			<tr>
				<td width="150">답변확인상태  |</td><td width="600">${vo.rewst}</td>
			</tr>
			<tr>
				<td width="150">조회수  |</td><td width="600">${vo.qahit}</td>
			</tr>
			<tr>
				<td width="20">
				<a href="${cp }/SW_write/update?writenum=${vo.writenum }" 
				style="text-align: center; text-decoration: none; display: inline-block; font-size: 1.5em;">수정하기</a></td>
				<td width="20"><a href="${cp }/SW_write/delete?writenum=${vo.writenum }" 
				style="text-align: center; text-decoration: none; display: inline-block; font-size: 1.5em;">삭제하기</a></td>
			</tr>
	</table>
	<br><hr>
<c:if test="${sessionScope.adminid=='admin'}">		
	<form method="post"  action="${cp }/SW_pro/QnAreqst">
		<table style="display: inline-block;">
			<tr>
				<td width="30">운영자 답변</td><td width="500"><textarea rows="5" cols="60" name="qarecontent"></textarea></td>
			</tr>
			<tr>
				<td width="30">답변상태</td><td width="500"><input type="text" name="reqst "><br></td>
			</tr>
			<tr>
				<td width="30"><input type="submit"  value="답변확인" style="margin-left: 300px; margin-top: 50px;"></td>
			</tr>
		</table>
	</form>
</c:if>		
</div>