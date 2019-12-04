<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Raleway:700|Roboto&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/common.css" />">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/page-admin.css" />">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <title>Controle de Estágio - Aluno</title>
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
                <li class="menu-item" id="internships">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 60 60" style="enable-background:new 0 0 60 60;" xml:space="preserve" width="12px" height="12px" class=""><path d="M56.99,13.5H55v-3H45v3h-4V7.706C41,5.938,39.562,4.5,37.794,4.5H22.206C20.438,4.5,19,5.938,19,7.706V13.5h-4v-3H5v3H3.01  C1.351,13.5,0,14.851,0,16.51v35.98c0,1.659,1.351,3.01,3.01,3.01H8h2h40h2h1h3.99c1.659,0,3.01-1.351,3.01-3.01V16.51  C60,14.851,58.649,13.5,56.99,13.5z M21,7.706C21,7.041,21.541,6.5,22.206,6.5h15.588C38.459,6.5,39,7.041,39,7.706V13.5H21V7.706z   M8,53.5v-38h2v38H8z M50,53.5v-38h2v38H50z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/></svg>
                    <p>Vagas de Estágio</p>
                </li>
                <li class="menu-item" id="reports">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 477.867 477.867" style="enable-background:new 0 0 477.867 477.867;" xml:space="preserve" width="12px" height="12px" class=""><path d="M460.8,119.467h-85.333v-102.4C375.467,7.641,367.826,0,358.4,0H17.067C7.641,0,0,7.641,0,17.067V409.6    c0,37.703,30.564,68.267,68.267,68.267H409.6c37.703,0,68.267-30.564,68.267-68.267V136.533    C477.867,127.108,470.226,119.467,460.8,119.467z M136.533,85.333h102.4c9.426,0,17.067,7.641,17.067,17.067    s-7.641,17.067-17.067,17.067h-102.4c-9.426,0-17.067-7.641-17.067-17.067S127.108,85.333,136.533,85.333z M290.133,409.6h-204.8    c-9.426,0-17.067-7.641-17.067-17.067s7.641-17.067,17.067-17.067h204.8c9.426,0,17.067,7.641,17.067,17.067    S299.559,409.6,290.133,409.6z M290.133,341.333h-204.8c-9.426,0-17.067-7.641-17.067-17.067c0-9.426,7.641-17.067,17.067-17.067    h204.8c9.426,0,17.067,7.641,17.067,17.067C307.2,333.692,299.559,341.333,290.133,341.333z M290.133,273.067h-204.8    c-9.426,0-17.067-7.641-17.067-17.067c0-9.426,7.641-17.067,17.067-17.067h204.8c9.426,0,17.067,7.641,17.067,17.067    C307.2,265.426,299.559,273.067,290.133,273.067z M290.133,204.8h-204.8c-9.426,0-17.067-7.641-17.067-17.067    c0-9.426,7.641-17.067,17.067-17.067h204.8c9.426,0,17.067,7.641,17.067,17.067C307.2,197.159,299.559,204.8,290.133,204.8z     M443.733,409.6c0,18.851-15.282,34.133-34.133,34.133s-34.133-15.282-34.133-34.133v-256h68.267V409.6z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/></svg>
                    <p>Relatórios de Estágio</p>
                </li>
            </ul>
        </div>
        <div class="content-right home">
            <div class="content-menu-top">
                <a href="${pageContext.request.contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="20px" height="20px"><path d="M510.371,226.513c-1.088-2.603-2.645-4.971-4.629-6.955l-63.979-63.979c-8.341-8.32-21.824-8.32-30.165,0     c-8.341,8.341-8.341,21.845,0,30.165l27.584,27.584H320.013c-11.797,0-21.333,9.557-21.333,21.333s9.536,21.333,21.333,21.333     h119.168l-27.584,27.584c-8.341,8.341-8.341,21.845,0,30.165c4.16,4.181,9.621,6.251,15.083,6.251s10.923-2.069,15.083-6.251     l63.979-63.979c1.984-1.963,3.541-4.331,4.629-6.955C512.525,237.606,512.525,231.718,510.371,226.513z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/><path d="M362.68,298.667c-11.797,0-21.333,9.557-21.333,21.333v106.667h-85.333V85.333c0-9.408-6.187-17.728-15.211-20.437     l-74.091-22.229h174.635v106.667c0,11.776,9.536,21.333,21.333,21.333s21.333-9.557,21.333-21.333v-128     C384.013,9.557,374.477,0,362.68,0H21.347c-0.768,0-1.451,0.32-2.197,0.405c-1.003,0.107-1.92,0.277-2.88,0.512     c-2.24,0.576-4.267,1.451-6.165,2.645c-0.469,0.299-1.045,0.32-1.493,0.661C8.44,4.352,8.376,4.587,8.205,4.715     C5.88,6.549,3.939,8.789,2.531,11.456c-0.299,0.576-0.363,1.195-0.597,1.792c-0.683,1.621-1.429,3.2-1.685,4.992     c-0.107,0.64,0.085,1.237,0.064,1.856c-0.021,0.427-0.299,0.811-0.299,1.237V448c0,10.176,7.189,18.923,17.152,20.907     l213.333,42.667c1.387,0.299,2.795,0.427,4.181,0.427c4.885,0,9.685-1.685,13.525-4.843c4.928-4.053,7.808-10.091,7.808-16.491     v-21.333H362.68c11.797,0,21.333-9.557,21.333-21.333V320C384.013,308.224,374.477,298.667,362.68,298.667z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg></a>
            </div>
            <div class="content">
                <p class="title">Olá, ${aluno.login}!</p>
                <c:if test="${empty curriculo}">
                    <div class="signup">
                        <h2>Cadastrar Currículo</h2>
                        <form action="../curriculo/cadastrar" method="post">
                            <div class="form-field">
                                <label for="nome">Nome</label>
                                <input type="text" name="nome"  id="nome">
                            </div>
                            <div class="form-field">
                                <label for="formacao-academica">Formação Acadêmica</label>
                                <input type="text" name="formacaoAcademica" id="formacao-academica" />
                            </div>
                            <div class="form-field">
                                <label for="experiencia-profissional">Experiência Profissional</label>
                                <input type="text" name="experienciaProfissional" id="experiencia-profissional" />
                            </div>

                            <input type="submit" value="Cadastrar">
                        </form>
                    </div>
                </c:if>
                <c:if test="${not empty curriculo}">
                    <table class="list">
                        <tr>
                            <th>Nome</th>
                            <th>Formação Acadêmica</th>
                            <th>Experiência Profissional</th>
                        </tr>
                        <tr>
                            <td>${curriculo.nome}</td>
                            <td>${curriculo.formacaoAcademica}</td>
                            <td>${curriculo.experienciaProfissional}</td>
                        </tr>
                    </table>
                </c:if>
            </div>
        </div>
        <div class="content-right reports">
            <div class="content-menu-top">
                <a href="${pageContext.request.contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="20px" height="20px"><path d="M510.371,226.513c-1.088-2.603-2.645-4.971-4.629-6.955l-63.979-63.979c-8.341-8.32-21.824-8.32-30.165,0     c-8.341,8.341-8.341,21.845,0,30.165l27.584,27.584H320.013c-11.797,0-21.333,9.557-21.333,21.333s9.536,21.333,21.333,21.333     h119.168l-27.584,27.584c-8.341,8.341-8.341,21.845,0,30.165c4.16,4.181,9.621,6.251,15.083,6.251s10.923-2.069,15.083-6.251     l63.979-63.979c1.984-1.963,3.541-4.331,4.629-6.955C512.525,237.606,512.525,231.718,510.371,226.513z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/><path d="M362.68,298.667c-11.797,0-21.333,9.557-21.333,21.333v106.667h-85.333V85.333c0-9.408-6.187-17.728-15.211-20.437     l-74.091-22.229h174.635v106.667c0,11.776,9.536,21.333,21.333,21.333s21.333-9.557,21.333-21.333v-128     C384.013,9.557,374.477,0,362.68,0H21.347c-0.768,0-1.451,0.32-2.197,0.405c-1.003,0.107-1.92,0.277-2.88,0.512     c-2.24,0.576-4.267,1.451-6.165,2.645c-0.469,0.299-1.045,0.32-1.493,0.661C8.44,4.352,8.376,4.587,8.205,4.715     C5.88,6.549,3.939,8.789,2.531,11.456c-0.299,0.576-0.363,1.195-0.597,1.792c-0.683,1.621-1.429,3.2-1.685,4.992     c-0.107,0.64,0.085,1.237,0.064,1.856c-0.021,0.427-0.299,0.811-0.299,1.237V448c0,10.176,7.189,18.923,17.152,20.907     l213.333,42.667c1.387,0.299,2.795,0.427,4.181,0.427c4.885,0,9.685-1.685,13.525-4.843c4.928-4.053,7.808-10.091,7.808-16.491     v-21.333H362.68c11.797,0,21.333-9.557,21.333-21.333V320C384.013,308.224,374.477,298.667,362.68,298.667z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg></a>
            </div>
            <div class="content">
                <div class="signup">
                    <h2>Cadastrar Relatório de Estágio</h2>
                    <form action="../relatorio/cadastrar" method="post">
                        <div class="form-field">
                            <label for="descricao-rel">Descrição</label>
                            <input type="text" name="descricao" id="descricao-rel" />
                        </div>
                        <input type="submit" value="Cadastrar">
                    </form>
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
                                <th class="student-remove">Candidatar</th>
                            </tr>
                            <c:forEach var="vagaEstagio" items="${listaVagasEstagio}">
                                <tr>
                                    <td>${vagaEstagio.descricao}</td>
                                    <td>${vagaEstagio.requisitosObrigatorios}</td>
                                    <td>${vagaEstagio.requisitosDesejaveis}</td>
                                    <td class="student-remove">
                                        <a href="../vaga-estagio/candidatar/${vagaEstagio.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 442.533 442.533" style="enable-background:new 0 0 442.533 442.533;" xml:space="preserve" class=""><path d="M434.539,98.499l-38.828-38.828c-5.324-5.328-11.799-7.993-19.41-7.993c-7.618,0-14.093,2.665-19.417,7.993L169.59,247.248   l-83.939-84.225c-5.33-5.33-11.801-7.992-19.412-7.992c-7.616,0-14.087,2.662-19.417,7.992L7.994,201.852   C2.664,207.181,0,213.654,0,221.269c0,7.609,2.664,14.088,7.994,19.416l103.351,103.349l38.831,38.828   c5.327,5.332,11.8,7.994,19.414,7.994c7.611,0,14.084-2.669,19.414-7.994l38.83-38.828L434.539,137.33   c5.325-5.33,7.994-11.802,7.994-19.417C442.537,110.302,439.864,103.829,434.539,98.499z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#207649"/></svg></a>
                                    </td>
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
