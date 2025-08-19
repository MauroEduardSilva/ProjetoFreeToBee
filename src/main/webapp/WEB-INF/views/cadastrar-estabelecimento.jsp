<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<title>Cadastrar novo estabelecimento</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/header-logado.jsp" %>
	<div class="container">
		<p> > Cadastrar novo estabelecimento </p>
		
		<div class="form-section">
			<form action="cadastrarEstabelecimento" method="post">
				<label for="nome">Nome do estabelecimento: </label><br>
				<input type="text" name="nome" id="nome" required><br>
				<label for="tipo">Tipo:</label><br>
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
				</select><br>
				<label for="cnpj">CNPJ:</label><br>
				<input type="text" name="cnpj" id="cnpj"><br>
				<label for="horario">Horario de funcionamento:</label><br>
				<input type="text" name="horario" id="horario"><br><br>
				<button type="submit">Selecionar imagem</button><br><br>
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