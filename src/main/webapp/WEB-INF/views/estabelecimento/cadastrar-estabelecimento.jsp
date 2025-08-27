<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<title>Cadastrar novo estabelecimento</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/cabecalho/header-logado.jsp" %>
	
	
	<div class="container">
		<form action="cadastrarEstabelecimento" method="post">
			<div class="formulario-estabelecimento">
				<div class="formulario-grupo">
					<label>Nome do estabelecimento*</label>
					<input type="text" name="nome" id="nome" placeholder="" required>
				</div>
				<div class="formulario-grupo">
					<labels>Tipo:</label>
					<select name="tipo" id="tipo">
						<option value="MERCADO">Mercado</option>
						<option value="LOJA">Loja</option>
						<option value="FARMACIA">Farmacia</option>
						<option value="RESTAURANTE">Restaurante</option>
						<option value="BAR">BAR</option>
						<option value="CASA_NOTURNA">Casa Noturna</option>
						<option value="TEATRO">Teatro</option>
						<option value="SHOPPING">Shopping</option>
						<option value="MUSEU">Museu</option>
						<option value="HOTEL">Hotel</option>
						<option value="LIVRARIA">Livraria</option>
						<option value="Academia">Academia</option>
						<option value="Clinica">Clinica</option>
					</select>
				</div>
			</div>
			<div class="formulario-estabelecimento">
				<div class="formulario-grupo">
					<label>CNPJ:</label>
					<input type="text" name="cnpj" id="cnpj">
				</div>
				<div class="formulario-grupo">
					<label>Horario de funcionamento*</label>
					<input type="text" name="horario" id="horario" placeholder="">
				</div>
			</div>
			<div class="formulario-estabelecimento">
				<div class="formulario-grupo">
					<label>Horario de funcionamento*</label>
					<input type="text" name="horario" id="horario" placeholder="">
				</div>
			</div>
			<div class="buttons">
				<button type="submit">Selecionar imagem</button>
			</div>
				
				
				
				
				
				
				
				
				
				
				
				
		
			
			<div class="form-endereco">
				<p>Endereço</p>
				<label for="nome">Estado:</label><br>
				<input type="text" name="estado" id="estado"><br>
				<label for="nome">Cidade:</label><br>
				<input type="text" name="cidade" id="cidade"><br>
				<label for="nome">Bairro:</label><br>
				<input type="text" name="bairro" id="bairro"><br>
				<label for="nome">CEP:</label><br>
				<input type="text" name="cep" id="cep"><br>
				<label for="nome">Logradouro:</label><br>
				<input type="text" name="logradouro" id="logradouro"><br><br>
				<p>Contato do estabelecimento </p>
				<label for="nome">Telefone:</label><br>
				<input type="text" name="telefone" id="telefone"><br>
				<label for="nome">Email:</label><br>
				<input type="text" name="email" id="email"><br><br>
				<button type="submit">Cadastrar Estabelecimento</button>
			</div>
		</form>
	</div>
</body>
</html>