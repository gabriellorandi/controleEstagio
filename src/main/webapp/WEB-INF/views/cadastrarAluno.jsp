<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Raleway:700|Roboto&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/common.css" />">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/login.css" />">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/register-student.css" />">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <title>Controle de Estágio - Cadastrar Aluno</title>
    </head>
    <body>

        <div class="login student">
            <div class="login-left">
                <h1 class="container">Controle de Estágio</h1>
                <p class="container">Instituto Federal de Educação, Ciência e Tecnologia de São Paulo – IFSP </p>
            </div>
            <div class="login-right">
                <p class="title">Cadastro de Aluno</p>
                <div class="form">
                    <form action="aluno/cadastrar" method="post"  class="container">
                        <input type="text" name="nome" placeholder="nome" />
                        <input type="text" name="ra" placeholder="ra" />
                        <input type="text" name="login" placeholder="login" />
                        <input type="password" name="senha" placeholder="senha" />
                        <input type="password" name="senhaRepetida" placeholder="repita sua senha" />
                        <input type="submit" value="Cadastrar" />
                        <c:if test="${not empty mensagem}">
                            <p class="return-message">${mensagem}</p>
                        </c:if>
                    </form>
                </div>
                <div class="register">
                    <p>Já é cadastrado?</p>
                    <a href="${pageContext.request.contextPath}/">Fazer o Login</a>
                </div>
            </div>
        </div>

    </body>
</html>
