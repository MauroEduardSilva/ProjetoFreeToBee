<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/usuario/pagina-login.css">
    <title>Login do Usuario</title>
</head>
<body>
    
    <%@ include file="/WEB-INF/views/cabecalho/header.jsp" %>
    
    <div class="container-login">
	    <form action="login" method="post">
	    	<label for="email">Email:</label>
	    	<input type="email" name="email" id="email" required><br>
	    	
	    	<label for="senha">Senha:</label>
	    	<input type="password" name="senha" id="senha" required><br>
	    	
	    	<c:if test = "${not empty erro}">
    			<p class="menssagem-erro">${erro}</p>
    		</c:if>
	    	
	    	<button type="submit">Entrar</button>    
	    </form>
	    <p>Não possui uma conta? <a href="${pageContext.request.contextPath}/cadastro">Cadastre-se</a></p>
    </div>
</body>
</html>