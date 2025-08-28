<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/estabelecimento/cadastrar-estabelecimento.css">
	<title>Cadastrar novo estabelecimento</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/cabecalho/header-logado.jsp" %>
	
	
	<div class="container">
		<form action="cadastrarEstabelecimento" method="post" enctype="multipart/form-data">
			<div class="grid-coluna">
				<div class="coluna">
					<p>Informações gerais</p><br><br>
					<div class="formulario-informacoes">
						<div class="formulario-grupo">
							<label>Nome do estabelecimento*</label>
							<input type="text" name="nome" id="nome" placeholder="" required>
						</div>
						<div class="formulario-grupo">
							<label>Tipo de estabelecimento*</label>
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
						<div class="formulario-grupo">
							<label>CNPJ*</label>
							<input type="text" name="cnpj" id="cnpj">
						</div>
						<div class="formulario-grupo">
							<label>Horario de funcionamento*</label>
							<div class="horario">
								<input type="time" name="horaInicio" id="horaInicio">
								<span>às</span>
								<input type="time" name="horaFim" id="horaFim">
							</div>
						</div>
						
					</div>
					<div class="formulario-grupo">
    					<label>Imagem do Estabelecimento*</label>
    					<input type="file" name="foto" id="foto" accept="image/*" required>
					</div>
				</div>
				<div class="coluna">
					<p>Endereço</p><br><br>
					
					<div class="formulario-endereco">
						<div class="formulario-grupo">
							<label>Estado*</label>
							<input type="text" name="estado" id="estado" placeholder="">
						</div>
						<div class="formulario-grupo">
							<label>Cidade*</label>
							<input type="text" name="cidade" id="cidade" placeholder="">
						</div>
					</div>
					
					<div class="formulario-endereco">
						<div class="formulario-grupo">
							<label>Bairro*</label>
							<input type="text" name="bairro" id="bairro" placeholder="">
						</div>
						<div class="formulario-grupo">
							<label>CEP*</label>
							<input type="text" name="cep" id="cep" placeholder="">
						</div>
					</div>
					<div class="formulario-endereco">
						<div class="formulario-grupo">
							<label>Logradouro*</label>
							<input type="text" name="logradouro" id="logradouro" placeholder="">
						</div>
					</div>
					
					<p>Contato do estabelecimento </p><br><br>
					
					<div class="formulario-contato">
						<div class="formulario-grupo">
							<label>Telefone*</label>
							<input type="text" name="telefone" id="telefone" placeholder="">
						</div>
						<div class="formulario-grupo">
							<label>Email*</label>
							<input type="text" name="email" id="email" placeholder="">
						</div>
						<div class="buttons">
							<button type="submit">Cadastrar Estabelecimento</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>