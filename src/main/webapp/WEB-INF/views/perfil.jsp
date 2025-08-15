<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" %>
<%@ page import="br.com.cadastro.model.Usuario"%>

<%
	Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
	if (usuario == null) {
		response.sendRedirect(request.getContextPath() + "/login");
		return;
	}
%>

<!DOCTYPE html>
<html lang="pt-BR">
<header>
	<meta charset="UTF-8">
	<title>Perfil do Usuario</title>
</header>
<body>
	<h1>Perfil do ${usuarioLogado.nome} ${usuarioLogado.sobrenome}</h1>
	
	<%@ include file="/WEB-INF/views/header-logado.jsp" %>
	
	<form action="atualizar-perfil" method="post">
		<label>Nome:</label>
		<input type="text" name="nome" value="${usuario.nome}" required><br>
		
		<label>Sobrenome:</label>
		<input type="text" name="sobrenome" value="${usuario.sobrenome}" required><br>
		
		<button type="submit">Atualizar</button>
	</form>
	
	<form action="logout" method="post">
		<button type="submit">Sair</button>
	</form>
</body>
</html>
