<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
    <title>Login do Usuario</title>
</head>
<body>
    <h1>Login</h1>
    
    <c:if test = "${not empty erro}">
    	<p style="color: red;">${erro}</p>
    </c:if>
    
    <form action="login" method="post">
    
    	<label for="email">Email:</label>
    	<input type="email" name="email" id="email" required><br>
    	
    	<label for="senha">Senha:</label>
    	<input type="password" name="senha" id="senha" required><br>
    	
    	<button type="submit">Entrar</button>    
    	
    </form>
    
    	<p>Não possui uma conta? <a href="cadastro-usuario.jsp">Cadastre-se</a></p>
</body>
</html>