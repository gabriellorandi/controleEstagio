
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h2>Cadastrar Empresa</h2>

    <form action="empresa/cadastrar" method="post">
        Nome: <input type="text" name="razaoSocial" /> <br />
        Nome Fantasia: <input type="text" name="nomeFantasia" /> <br />
        CNPJ: <input type="text" name="cnpj" /> <br /><br />

        Login: <input type="text" name="login" /> <br />
        Senha: <input type="password" name="senha" /> <br />
        Repita a Senha: <input type="password" name="senhaRepetida" /> <br />

        <input type="submit" value="Cadastrar" />
    </form>

</body>
</html>
