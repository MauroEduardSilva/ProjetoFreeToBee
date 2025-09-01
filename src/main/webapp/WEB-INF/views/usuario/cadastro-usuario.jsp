<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/usuario/cadastrar-usuario.css">
    <title>Cadastro de Usuário</title>
</head>
<body>
    <%@ include file="/WEB-INF/views/cabecalho/header.jsp" %>
	
	<div class="container-formulario">
	    <form action="cadastro" method="post">
	    
	    	<div class="passo-um">
	    		<div class="ativar guia">
	    			<div class="circulo">1</div>
	    			<span>INFORMAÇÕES PESSOAIS</span>
	    		</div>
	    		<div class="linha"></div>
	    		<div class="ativar">
	    			<div class="circulo">2</div>
	    			<span>FOTO</span>
	    		</div>
	    		<div class="linha"></div>
	    		<div class="ativar">
	    			<div class="circulo">3</div>
	    			<span>CONCLUÍDO</span>
	    		</div>
	    	</div><br><br><br><br>
	    	
	    	<div class="formulario">
	    		<div class="formulario-grupo">
	    			<label>Nome*</label>
	        		<input type="text" id="nome" name="nome" placeholder="" required>
	    		</div>
	    		<div class="formulario-grupo">
	    			<label>Email*</label>
	        		<input type="email" id="email "name="email" placeholder="" required>
	    		</div>
	    	</div>
	    	<div class="formulario">
	    		<div class="formulario-grupo">
	    			<label>Sobrenome*</label>
	        		<input type="text" id="sobrenome" name="sobrenome" placeholder="">
	    		</div>
	    		<div class="formulario-grupo">
	    			<label>Senha*</label>
	        		<input type="password" id="senha" name="senha" placeholder="">
	    		</div>
	    	</div>
	    	<div class="formulario">
	    		<div class="formulario-grupo">
	    			<label>Apelido:</label>
	        		<input type="text" id="apelido" name="apelido" placeholder="">
	    		</div>
	    		<div class="formulario-grupo">
	    			<label>Confirmar Senha:</label>
	        		<input type="password" id="confirmarSenha" name="confirmarSenha" placeholder="" required>
	    		</div>
	    	</div>
			
			<div class="buttons">
				<p>Já possui uma conta?<a href="${pageContext.request.contextPath}/login">Inicie uma sessão</a></p>
				
				<button type="submit">Próximo</button>
	         	<button type="reset">Limpar</button>
			</div>
	    </form>
    </div>
</body>
</html>
