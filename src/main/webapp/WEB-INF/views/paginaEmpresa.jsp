
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Raleway:700|Roboto&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/common.css" />">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/page-admin.css" />">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <title>Controle de Estágio - Empresa</title>
    </head>
<body>

    <div class="content">
        <div class="signup">
            <h2>Cadastrar Vaga de Estágio</h2>
            <form action="../vaga-estagio/cadastrar", method="post">
                <div class="form-field-flex">
                    <div class="form-field">
                        <label for="vaga-estagio-descricao">Descrição</label>
                        <input type="text" name="descricao"  id="vaga-estagio-descricao">
                    </div>
                </div>

                <div class="form-field-flex">
                    <div class="form-field">
                        <label for="requisitos-obrigatorios">Requisitos Obrigatórios</label>
                        <input type="text" name="requisitosObrigatorios" id="requisitos-obrigatorios" />
                    </div>
                </div>

                <div class="form-field-flex">
                    <div class="form-field">
                        <label for="requisitos-desejaveis">Requisitos Desejáveis</label>
                        <input type="text" name="requisitosDesejaveis" id="requisitos-desejaveis" />
                    </div>
                </div>

                <input type="submit" value="Cadastrar">
            </form>
        </div>
        <div class="students-list-wrapper">
            <h2 class="title">Todas as Vagas de estágio</h2>
            <table class="list">
                <c:if test="${not empty listaVagasEstagio}">
                    <tr>
                        <th>Descricao</th>
                        <th>Requisitos Obrigatórios</th>
                        <th>Requisitos Desejáveis</th>
                    </tr>
                    <c:forEach var="vagaEstagio" items="${listaVagasEstagio}">
                        <tr>
                            <td>${vagaEstagio.descricao}</td>
                            <td>${vagaEstagio.requisitosObrigatorios}</td>
                            <td>${vagaEstagio.requisitosDesejaveis}</td>
                        </tr>
                    </c:forEach>
                </c:if>
                <c:if test="${empty listaVagasEstagio}">
                    <p>Não há vagas cadastradas.</p>
                </c:if>
            </table>
        </div>
    </div>

    <div class="content">
        <div class="students-list-wrapper">
            <h2 class="title">Curriculos Alunos</h2>
            <table class="list">
                <c:if test="${not empty listaCurriculos}">
                    <tr>
                        <th>Nome</th>
                        <th>Formação Académica</th>
                        <th>Experiência Profissional</th>
                    </tr>
                    <c:forEach var="curriculo" items="${listaCurriculos}">
                        <tr>
                            <td>${curriculo.aluno.nome}</td>
                            <td>${curriculo.formacaoAcademica}</td>
                            <td>${curriculo.experienciaProfissional}</td>
                        </tr>
                    </c:forEach>
                </c:if>
                <c:if test="${empty listaCurriculos}">
                    <p>Não há curriculos cadastrados.</p>
                </c:if>
            </table>
        </div>
    </div>

</body>
</html>
