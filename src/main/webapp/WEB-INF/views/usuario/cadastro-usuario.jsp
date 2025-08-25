<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <title>Cadastro de Usuário</title>
</head>
<body>
    <%@ include file="/WEB-INF/views/cabecalho/header.jsp" %>
 
    <form action="cadastro" method="post">
        <label>Nome:</label>
        <input type="text" name="nome"><br>

        <label>Sobrenome:</label>
        <input type="text" name="sobrenome"><br>
        
        <label>Apelido:</label>
        <input type="text" name="apelido"><br>

        <label>Email:</label>
        <input type="email" name="email"><br>

        <label>Senha:</label>
        <input type="password" id="senha" name="senha"><br>

        <label>Confirmar Senha:</label>
        <input type="password" id="confirmarSenha" name="confirmarSenha"><br>
	
		<p>Já possui uma conta?<a href="${pageContext.request.contextPath}/login">Inicie uma sessão</a></p>
		
        <button type="submit">Enviar</button><br>
         <button type="reset">Limpar</button>
    </form>

</body>
</html>
