<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Foto do Usuário</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/foto/foto-usuario.css">
</head>
<body>
    <%@ include file="/WEB-INF/views/cabecalho/header.jsp" %>

    <form action="${pageContext.request.contextPath}/salvarFotoUsuario" method="post" enctype="multipart/form-data">
	    <div class="container-foto">
	    	<label for="fotoInput" class="foto-avatar">
	    		<span>&#128100;</span>
	        	<span class="editar-icone"></span> 
	    	</label>
	    	<input type="file" id="fotoInput" name="foto" accept="image/*" style="display: none;" required>
		    <div class="foto-label">Adicionar foto de perfil
		    	<span class="icone-lapis">&#128393;</span>
		    </div>
		    <input type="hidden" name="id" value="${idUsuario}">
		    <button type="submit" class="btn-cadastrar">Cadastre-se</button>
	    </div>
    </form>
</body>
</html>
