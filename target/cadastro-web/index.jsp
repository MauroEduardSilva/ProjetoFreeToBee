<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Usuário</title>
</head>
<body>
    <h1>Cadastro</h1>
 
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

        <button type="submit">Enviar</button>
    </form>

</body>
</html>
