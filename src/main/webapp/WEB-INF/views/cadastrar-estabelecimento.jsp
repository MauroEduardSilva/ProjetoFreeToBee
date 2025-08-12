<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<title>Cadastrar novo estabelecimento</title>
</head>
<body>
	<p> > Cadastrar novo estabelecimento </p>
	
	<form action="cadastarEstabelecimento" method="post">
		<label for="nome">Nome do estabelecimento: </label><br>
		<input type="text" nome="nome" id="nome" required><br>
		<label for="cnpj">CNPJ:</label><br>
		<input type="text" nome="cnpj" id="cnpj"><br>
		<label for="horario">Horario de funcionamento:</label><br>
		<input type="text" nome="horario" id="horario"><br><br>
		
		<button type="submit">Selecionar imagem</button><br><br>
		
		<p>Endereço</p>
		<label for="nome">Estado:</label><br>
		<input type="text" nome="estado" id="estado"><br>
		
		<label for="nome">Cidade:</label><br>
		<input type="text" nome="cidade" id="cidade"><br>
		
		<label for="nome">Bairro:</label><br>
		<input type="text" nome="bairro" id="bairro"><br>
		
		<label for="nome">CEP:</label><br>
		<input type="text" nome="cep" id="cep"><br>
		
		<label for="nome">Logradouro:</label><br>
		<input type="text" nome="logradouro" id="logradouro"><br><br>
		
		
		<p>Contato do estabelecimento </p>
		<label for="nome">Telefone:</label><br>
		<input type="text" nome="telefone" id="telefone"><br>
		
		<label for="nome">Email:</label><br>
		<input type="text" nome="email" id="email"><br><br>
		
		<button type="submit">Cadastrar Estabelecimento</button>
		
		
		
	</form>
	
</body>
</html>