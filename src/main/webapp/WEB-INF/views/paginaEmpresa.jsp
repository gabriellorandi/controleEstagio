
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
<div class="dashboard">
    <div class="menu-left">
        <div class="logo">
            <svg xmlns="http://www.w3.org/2000/svg" width="30px" height="30px" viewBox="0 0 379 461"><defs><style>.cls-1 {fill: #fff;}.cls-2{fill: #678dec;}</style></defs><rect id="Retângulo_Arredondado_1" data-name="Retângulo Arredondado 1" class="cls-1" x="29" y="236" width="97" height="97" rx="10" ry="10"/><rect id="Retângulo_Arredondado_1_copiar_4" data-name="Retângulo Arredondado 1 copiar 4" class="cls-1" x="29" y="352" width="97" height="97" rx="10" ry="10"/><rect id="Retângulo_Arredondado_1_copiar" data-name="Retângulo Arredondado 1 copiar" class="cls-1" x="145" y="236" width="97" height="97" rx="10" ry="10"/><rect id="Retângulo_Arredondado_1_copiar_5" data-name="Retângulo Arredondado 1 copiar 5" class="cls-1" x="29" y="120" width="97" height="97" rx="10" ry="10"/> <rect id="Retângulo_Arredondado_1_copiar_5-2" data-name="Retângulo Arredondado 1 copiar 5" class="cls-1" x="145" y="120" width="97" height="97" rx="10" ry="10"/><rect id="Retângulo_Arredondado_1_copiar_6" data-name="Retângulo Arredondado 1 copiar 6" class="cls-1" x="145" y="5" width="97" height="97" rx="10" ry="10"/><rect id="Retângulo_Arredondado_1_copiar_6-2" data-name="Retângulo Arredondado 1 copiar 6" class="cls-1" x="261" y="5" width="97" height="97" rx="10" ry="10"/><circle id="Elipse_1" data-name="Elipse 1" class="cls-2" cx="77" cy="53" r="53"/><rect id="Retângulo_Arredondado_1_copiar_3" data-name="Retângulo Arredondado 1 copiar 3" class="cls-1" x="145" y="352" width="97" height="97" rx="10" ry="10"/><rect id="Retângulo_Arredondado_1_copiar_2" data-name="Retângulo Arredondado 1 copiar 2" class="cls-1" x="261" y="236" width="97" height="97" rx="10" ry="10"/></svg>
            <p>Controle De Estágio</p>
        </div>
        <ul class="menu-content">
            <li class="menu-item selected" id="home">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="12px" height="12px" viewBox="0 0 495.398 495.398" style="enable-background:new 0 0 495.398 495.398;" xml:space="preserve" class=""><path d="M487.083,225.514l-75.08-75.08V63.704c0-15.682-12.708-28.391-28.413-28.391c-15.669,0-28.377,12.709-28.377,28.391     v29.941L299.31,37.74c-27.639-27.624-75.694-27.575-103.27,0.05L8.312,225.514c-11.082,11.104-11.082,29.071,0,40.158     c11.087,11.101,29.089,11.101,40.172,0l187.71-187.729c6.115-6.083,16.893-6.083,22.976-0.018l187.742,187.747     c5.567,5.551,12.825,8.312,20.081,8.312c7.271,0,14.541-2.764,20.091-8.312C498.17,254.586,498.17,236.619,487.083,225.514z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/><path d="M257.561,131.836c-5.454-5.451-14.285-5.451-19.723,0L72.712,296.913c-2.607,2.606-4.085,6.164-4.085,9.877v120.401     c0,28.253,22.908,51.16,51.16,51.16h81.754v-126.61h92.299v126.61h81.755c28.251,0,51.159-22.907,51.159-51.159V306.79     c0-3.713-1.465-7.271-4.085-9.877L257.561,131.836z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/></svg>
                <p>Home</p>
            </li>
            <li class="menu-item" id="students">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="12px" height="12px" class=""><path d="M256,0c-49.629,0-90,41.371-90,91c0,49.629,40.371,90,90,90c49.629,0,90-40.371,90-90C346,41.371,305.629,0,256,0z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/><path d="M286,181h-30h-30c-21.158,0-41.603,5.469-60.19,14.773c31.569,8.518,61.293,20.786,90.19,37.372    c28.898-16.586,58.621-28.854,90.19-37.372C327.603,186.469,307.158,181,286,181z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/><path d="M482,271c-16.569,0-30,13.431-30,30v60c0,16.567,13.431,30,30,30c16.569,0,30-13.433,30-30v-60    C512,284.431,498.569,271,482,271z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/><path d="M30,271c-16.569,0-30,13.431-30,30v60c0,16.567,13.431,30,30,30c16.569,0,30-13.433,30-30v-60    C60,284.431,46.569,271,30,271z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/><path d="M45,211c-8.291,0-15,6.709-15,15v15c33.091,0,60,26.909,60,60v60c0,33.091-26.909,60-60,60v15c0,8.291,6.709,15,15,15    c76.901,0,138.39,24.286,196,61V259.594C183.13,226.414,120.903,211,45,211z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/><path d="M482,241v-15c0-8.291-6.709-15-15-15c-75.903,0-138.13,15.414-196,48.594V512c57.61-36.714,119.099-61,196-61    c8.291,0,15-6.709,15-15v-15c-33.091,0-60-26.909-60-60v-60C422,267.909,448.909,241,482,241z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/></svg>
                <p>Currículos</p>
            </li>
            <li class="menu-item" id="internships">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 60 60" style="enable-background:new 0 0 60 60;" xml:space="preserve" width="12px" height="12px" class=""><path d="M56.99,13.5H55v-3H45v3h-4V7.706C41,5.938,39.562,4.5,37.794,4.5H22.206C20.438,4.5,19,5.938,19,7.706V13.5h-4v-3H5v3H3.01  C1.351,13.5,0,14.851,0,16.51v35.98c0,1.659,1.351,3.01,3.01,3.01H8h2h40h2h1h3.99c1.659,0,3.01-1.351,3.01-3.01V16.51  C60,14.851,58.649,13.5,56.99,13.5z M21,7.706C21,7.041,21.541,6.5,22.206,6.5h15.588C38.459,6.5,39,7.041,39,7.706V13.5H21V7.706z   M8,53.5v-38h2v38H8z M50,53.5v-38h2v38H50z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/></svg>
                <p>Vagas de Estágios</p>
            </li>
        </ul>
    </div>
    <div class="content-right home">
        <div class="content-menu-top">
            <a href="${pageContext.request.contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="20px" height="20px"><path d="M510.371,226.513c-1.088-2.603-2.645-4.971-4.629-6.955l-63.979-63.979c-8.341-8.32-21.824-8.32-30.165,0     c-8.341,8.341-8.341,21.845,0,30.165l27.584,27.584H320.013c-11.797,0-21.333,9.557-21.333,21.333s9.536,21.333,21.333,21.333     h119.168l-27.584,27.584c-8.341,8.341-8.341,21.845,0,30.165c4.16,4.181,9.621,6.251,15.083,6.251s10.923-2.069,15.083-6.251     l63.979-63.979c1.984-1.963,3.541-4.331,4.629-6.955C512.525,237.606,512.525,231.718,510.371,226.513z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/><path d="M362.68,298.667c-11.797,0-21.333,9.557-21.333,21.333v106.667h-85.333V85.333c0-9.408-6.187-17.728-15.211-20.437     l-74.091-22.229h174.635v106.667c0,11.776,9.536,21.333,21.333,21.333s21.333-9.557,21.333-21.333v-128     C384.013,9.557,374.477,0,362.68,0H21.347c-0.768,0-1.451,0.32-2.197,0.405c-1.003,0.107-1.92,0.277-2.88,0.512     c-2.24,0.576-4.267,1.451-6.165,2.645c-0.469,0.299-1.045,0.32-1.493,0.661C8.44,4.352,8.376,4.587,8.205,4.715     C5.88,6.549,3.939,8.789,2.531,11.456c-0.299,0.576-0.363,1.195-0.597,1.792c-0.683,1.621-1.429,3.2-1.685,4.992     c-0.107,0.64,0.085,1.237,0.064,1.856c-0.021,0.427-0.299,0.811-0.299,1.237V448c0,10.176,7.189,18.923,17.152,20.907     l213.333,42.667c1.387,0.299,2.795,0.427,4.181,0.427c4.885,0,9.685-1.685,13.525-4.843c4.928-4.053,7.808-10.091,7.808-16.491     v-21.333H362.68c11.797,0,21.333-9.557,21.333-21.333V320C384.013,308.224,374.477,298.667,362.68,298.667z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg></a>
        </div>
        <div class="content">
            <p class="title">Olá, ${empresa.login}!</p>
            <div class="signup">
                <h2>Cadastrar Vaga de Estágio</h2>
                <form action="../vaga-estagio/cadastrar", method="post">
                        <div class="form-field">
                            <label for="vaga-estagio-descricao">Descrição</label>
                            <input type="text" name="descricao"  id="vaga-estagio-descricao">
                        </div>
                        <div class="form-field">
                            <label for="requisitos-obrigatorios">Requisitos Obrigatórios</label>
                            <input type="text" name="requisitosObrigatorios" id="requisitos-obrigatorios" />
                        </div>
                        <div class="form-field">
                            <label for="requisitos-desejaveis">Requisitos Desejáveis</label>
                            <input type="text" name="requisitosDesejaveis" id="requisitos-desejaveis" />
                        </div>

                    <input type="submit" value="Cadastrar">
                </form>
            </div>
        </div>
    </div>
    <div class="content-right students">
        <div class="content-menu-top">
            <a href="${pageContext.request.contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="20px" height="20px"><path d="M510.371,226.513c-1.088-2.603-2.645-4.971-4.629-6.955l-63.979-63.979c-8.341-8.32-21.824-8.32-30.165,0     c-8.341,8.341-8.341,21.845,0,30.165l27.584,27.584H320.013c-11.797,0-21.333,9.557-21.333,21.333s9.536,21.333,21.333,21.333     h119.168l-27.584,27.584c-8.341,8.341-8.341,21.845,0,30.165c4.16,4.181,9.621,6.251,15.083,6.251s10.923-2.069,15.083-6.251     l63.979-63.979c1.984-1.963,3.541-4.331,4.629-6.955C512.525,237.606,512.525,231.718,510.371,226.513z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/><path d="M362.68,298.667c-11.797,0-21.333,9.557-21.333,21.333v106.667h-85.333V85.333c0-9.408-6.187-17.728-15.211-20.437     l-74.091-22.229h174.635v106.667c0,11.776,9.536,21.333,21.333,21.333s21.333-9.557,21.333-21.333v-128     C384.013,9.557,374.477,0,362.68,0H21.347c-0.768,0-1.451,0.32-2.197,0.405c-1.003,0.107-1.92,0.277-2.88,0.512     c-2.24,0.576-4.267,1.451-6.165,2.645c-0.469,0.299-1.045,0.32-1.493,0.661C8.44,4.352,8.376,4.587,8.205,4.715     C5.88,6.549,3.939,8.789,2.531,11.456c-0.299,0.576-0.363,1.195-0.597,1.792c-0.683,1.621-1.429,3.2-1.685,4.992     c-0.107,0.64,0.085,1.237,0.064,1.856c-0.021,0.427-0.299,0.811-0.299,1.237V448c0,10.176,7.189,18.923,17.152,20.907     l213.333,42.667c1.387,0.299,2.795,0.427,4.181,0.427c4.885,0,9.685-1.685,13.525-4.843c4.928-4.053,7.808-10.091,7.808-16.491     v-21.333H362.68c11.797,0,21.333-9.557,21.333-21.333V320C384.013,308.224,374.477,298.667,362.68,298.667z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg></a>
        </div>
        <div class="content">
            <div class="students-list-wrapper">
                <h2 class="title">Currículos de Alunos</h2>
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
    </div>
    <div class="content-right internships">
        <div class="content-menu-top">
            <a href="${pageContext.request.contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="20px" height="20px"><path d="M510.371,226.513c-1.088-2.603-2.645-4.971-4.629-6.955l-63.979-63.979c-8.341-8.32-21.824-8.32-30.165,0     c-8.341,8.341-8.341,21.845,0,30.165l27.584,27.584H320.013c-11.797,0-21.333,9.557-21.333,21.333s9.536,21.333,21.333,21.333     h119.168l-27.584,27.584c-8.341,8.341-8.341,21.845,0,30.165c4.16,4.181,9.621,6.251,15.083,6.251s10.923-2.069,15.083-6.251     l63.979-63.979c1.984-1.963,3.541-4.331,4.629-6.955C512.525,237.606,512.525,231.718,510.371,226.513z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/><path d="M362.68,298.667c-11.797,0-21.333,9.557-21.333,21.333v106.667h-85.333V85.333c0-9.408-6.187-17.728-15.211-20.437     l-74.091-22.229h174.635v106.667c0,11.776,9.536,21.333,21.333,21.333s21.333-9.557,21.333-21.333v-128     C384.013,9.557,374.477,0,362.68,0H21.347c-0.768,0-1.451,0.32-2.197,0.405c-1.003,0.107-1.92,0.277-2.88,0.512     c-2.24,0.576-4.267,1.451-6.165,2.645c-0.469,0.299-1.045,0.32-1.493,0.661C8.44,4.352,8.376,4.587,8.205,4.715     C5.88,6.549,3.939,8.789,2.531,11.456c-0.299,0.576-0.363,1.195-0.597,1.792c-0.683,1.621-1.429,3.2-1.685,4.992     c-0.107,0.64,0.085,1.237,0.064,1.856c-0.021,0.427-0.299,0.811-0.299,1.237V448c0,10.176,7.189,18.923,17.152,20.907     l213.333,42.667c1.387,0.299,2.795,0.427,4.181,0.427c4.885,0,9.685-1.685,13.525-4.843c4.928-4.053,7.808-10.091,7.808-16.491     v-21.333H362.68c11.797,0,21.333-9.557,21.333-21.333V320C384.013,308.224,374.477,298.667,362.68,298.667z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg></a>
        </div>
        <div class="content empresa">
            <div class="students-list-wrapper">
                <h2 class="title">Todas as Vagas de Estágio</h2>
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
    </div>
</div>
<script src="<c:url value="/resources/inc/pages-dashboard.js" />"></script>
</body>
</html>
