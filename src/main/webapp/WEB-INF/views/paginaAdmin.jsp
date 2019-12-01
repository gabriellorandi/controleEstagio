<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Raleway:700|Roboto&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/common.css" />">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/page-admin.css" />">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <title>Controle de Estágio - Administrador</title>
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
                        <p>Alunos</p>
                    </li>
                    <li class="menu-item" id="companies">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="12px" height="12px" viewBox="0 0 484.738 484.738" style="enable-background:new 0 0 484.738 484.738;" xml:space="preserve" class=""><path d="M131.012,438.372h85.624v-87.557h51.467v87.557h85.624V46.366H131.012V438.372z M257.993,92.564h51.466v51.467h-51.466    V92.564z M257.993,175.279h51.466v51.467h-51.466V175.279z M257.993,257.992h51.466v51.467h-51.466V257.992z M175.279,92.564    h51.466v51.467h-51.466V92.564z M175.279,175.279h51.466v51.467h-51.466V175.279z M175.279,257.992h51.466v51.467h-51.466V257.992    z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/><path d="M373.719,81.482V358.66h33.065v79.712h77.954V81.482H373.719z M444.437,321.009H397.58v-46.856h46.856V321.009z     M444.437,245.703H397.58v-46.855h46.856V245.703z M444.437,170.398H397.58v-46.855h46.856V170.398z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/><path d="M0,438.372h77.954V358.66h33.065V81.482H0V438.372z M40.302,123.543h46.856v46.855H40.302V123.543z M40.302,198.848    h46.856v46.855H40.302V198.848z M40.302,274.151h46.856v46.855H40.302V274.151z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/></svg>
                        <p>Empresas</p>
                    </li>
                    <li class="menu-item" id="internships">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 60 60" style="enable-background:new 0 0 60 60;" xml:space="preserve" width="12px" height="12px" class=""><path d="M56.99,13.5H55v-3H45v3h-4V7.706C41,5.938,39.562,4.5,37.794,4.5H22.206C20.438,4.5,19,5.938,19,7.706V13.5h-4v-3H5v3H3.01  C1.351,13.5,0,14.851,0,16.51v35.98c0,1.659,1.351,3.01,3.01,3.01H8h2h40h2h1h3.99c1.659,0,3.01-1.351,3.01-3.01V16.51  C60,14.851,58.649,13.5,56.99,13.5z M21,7.706C21,7.041,21.541,6.5,22.206,6.5h15.588C38.459,6.5,39,7.041,39,7.706V13.5H21V7.706z   M8,53.5v-38h2v38H8z M50,53.5v-38h2v38H50z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/></svg>
                        <p>Estágios</p>
                    </li>
                    <li class="menu-item" id="reports">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 477.867 477.867" style="enable-background:new 0 0 477.867 477.867;" xml:space="preserve" width="12px" height="12px" class=""><path d="M460.8,119.467h-85.333v-102.4C375.467,7.641,367.826,0,358.4,0H17.067C7.641,0,0,7.641,0,17.067V409.6    c0,37.703,30.564,68.267,68.267,68.267H409.6c37.703,0,68.267-30.564,68.267-68.267V136.533    C477.867,127.108,470.226,119.467,460.8,119.467z M136.533,85.333h102.4c9.426,0,17.067,7.641,17.067,17.067    s-7.641,17.067-17.067,17.067h-102.4c-9.426,0-17.067-7.641-17.067-17.067S127.108,85.333,136.533,85.333z M290.133,409.6h-204.8    c-9.426,0-17.067-7.641-17.067-17.067s7.641-17.067,17.067-17.067h204.8c9.426,0,17.067,7.641,17.067,17.067    S299.559,409.6,290.133,409.6z M290.133,341.333h-204.8c-9.426,0-17.067-7.641-17.067-17.067c0-9.426,7.641-17.067,17.067-17.067    h204.8c9.426,0,17.067,7.641,17.067,17.067C307.2,333.692,299.559,341.333,290.133,341.333z M290.133,273.067h-204.8    c-9.426,0-17.067-7.641-17.067-17.067c0-9.426,7.641-17.067,17.067-17.067h204.8c9.426,0,17.067,7.641,17.067,17.067    C307.2,265.426,299.559,273.067,290.133,273.067z M290.133,204.8h-204.8c-9.426,0-17.067-7.641-17.067-17.067    c0-9.426,7.641-17.067,17.067-17.067h204.8c9.426,0,17.067,7.641,17.067,17.067C307.2,197.159,299.559,204.8,290.133,204.8z     M443.733,409.6c0,18.851-15.282,34.133-34.133,34.133s-34.133-15.282-34.133-34.133v-256h68.267V409.6z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/></svg>
                        <p>Relatórios de Estágio</p>
                    </li>
                    <li class="menu-item" id="mentors">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 488 488" style="enable-background:new 0 0 488 488;" xml:space="preserve" width="12px" height="12px" class=""><path d="M299.3,329.4h-42.1l0,0h-26.5l0,0h-42.1c-9.3,0-17,7.6-17,17v61.8c0,9.3,7.6,17,17,17h110.6c9.3,0,17-7.6,17-17v-61.8    C316.3,337.1,308.6,329.4,299.3,329.4z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/><path d="M471,329.4h-42.1l0,0h-26.5l0,0h-42.1c-9.3,0-17,7.6-17,17v61.8c0,9.3,7.6,17,17,17H471c9.3,0,17-7.6,17-17v-61.8    C487.9,337.1,480.3,329.4,471,329.4z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/><path d="M127.7,329.4H85.6l0,0H59.1l0,0H17c-9.3,0-17,7.6-17,17v61.8c0,9.3,7.6,17,17,17h110.6c9.3,0,17-7.6,17-17v-61.8    C144.6,337.1,137,329.4,127.7,329.4z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/><path d="M85.6,276.5h145.2v29.6h26.5v-29.6h145.2v29.6H429v-42.9c0-7.3-5.9-13.2-13.2-13.2H257.2v-43.8h74.5    c11.3,0,20.6-9.3,20.6-20.6V83.4c0-11.3-9.3-20.6-20.6-20.6h-67.9l0,0h-39.7l0,0h-67.9c-11.3,0-20.6,9.3-20.6,20.6v102.3    c0,11.3,9.3,20.6,20.6,20.6h74.5v43.8H72.3c-7.3,0-13.2,5.9-13.2,13.2v42.9h26.5C85.6,306.2,85.6,276.5,85.6,276.5z M169.2,110.5    c0-3.3,2.7-5.9,5.9-5.9h137.8c3.3,0,5.9,2.7,5.9,5.9v7.8c0,3.3-2.7,5.9-5.9,5.9H175.1c-3.3,0-5.9-2.7-5.9-5.9L169.2,110.5    L169.2,110.5z M175.1,164.3c-3.3,0-5.9-2.7-5.9-5.9v-7.8c0-3.3,2.7-5.9,5.9-5.9h137.8c3.3,0,5.9,2.7,5.9,5.9v7.8    c0,3.3-2.7,5.9-5.9,5.9H175.1z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#678dec"/></svg>
                        <p>Supervisores</p>
                    </li>
                </ul>
            </div>
            <div class="content-right home">
                <div class="content-menu-top">
                    <div class="setup">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="20px" height="20px" viewBox="0 0 340.274 340.274" style="enable-background:new 0 0 340.274 340.274;" xml:space="preserve"><path d="M293.629,127.806l-5.795-13.739c19.846-44.856,18.53-46.189,14.676-50.08l-25.353-24.77l-2.516-2.12h-2.937     c-1.549,0-6.173,0-44.712,17.48l-14.184-5.719c-18.332-45.444-20.212-45.444-25.58-45.444h-35.765     c-5.362,0-7.446-0.006-24.448,45.606l-14.123,5.734C86.848,43.757,71.574,38.19,67.452,38.19l-3.381,0.105L36.801,65.032     c-4.138,3.891-5.582,5.263,15.402,49.425l-5.774,13.691C0,146.097,0,147.838,0,153.33v35.068c0,5.501,0,7.44,46.585,24.127     l5.773,13.667c-19.843,44.832-18.51,46.178-14.655,50.032l25.353,24.8l2.522,2.168h2.951c1.525,0,6.092,0,44.685-17.516     l14.159,5.758c18.335,45.438,20.218,45.427,25.598,45.427h35.771c5.47,0,7.41,0,24.463-45.589l14.195-5.74     c26.014,11,41.253,16.585,45.349,16.585l3.404-0.096l27.479-26.901c3.909-3.945,5.278-5.309-15.589-49.288l5.734-13.702     c46.496-17.967,46.496-19.853,46.496-25.221v-35.029C340.268,146.361,340.268,144.434,293.629,127.806z M170.128,228.474     c-32.798,0-59.504-26.187-59.504-58.364c0-32.153,26.707-58.315,59.504-58.315c32.78,0,59.43,26.168,59.43,58.315     C229.552,202.287,202.902,228.474,170.128,228.474z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg>
                    </div>
                    <a href="${pageContext.request.contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="20px" height="20px"><path d="M510.371,226.513c-1.088-2.603-2.645-4.971-4.629-6.955l-63.979-63.979c-8.341-8.32-21.824-8.32-30.165,0     c-8.341,8.341-8.341,21.845,0,30.165l27.584,27.584H320.013c-11.797,0-21.333,9.557-21.333,21.333s9.536,21.333,21.333,21.333     h119.168l-27.584,27.584c-8.341,8.341-8.341,21.845,0,30.165c4.16,4.181,9.621,6.251,15.083,6.251s10.923-2.069,15.083-6.251     l63.979-63.979c1.984-1.963,3.541-4.331,4.629-6.955C512.525,237.606,512.525,231.718,510.371,226.513z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/><path d="M362.68,298.667c-11.797,0-21.333,9.557-21.333,21.333v106.667h-85.333V85.333c0-9.408-6.187-17.728-15.211-20.437     l-74.091-22.229h174.635v106.667c0,11.776,9.536,21.333,21.333,21.333s21.333-9.557,21.333-21.333v-128     C384.013,9.557,374.477,0,362.68,0H21.347c-0.768,0-1.451,0.32-2.197,0.405c-1.003,0.107-1.92,0.277-2.88,0.512     c-2.24,0.576-4.267,1.451-6.165,2.645c-0.469,0.299-1.045,0.32-1.493,0.661C8.44,4.352,8.376,4.587,8.205,4.715     C5.88,6.549,3.939,8.789,2.531,11.456c-0.299,0.576-0.363,1.195-0.597,1.792c-0.683,1.621-1.429,3.2-1.685,4.992     c-0.107,0.64,0.085,1.237,0.064,1.856c-0.021,0.427-0.299,0.811-0.299,1.237V448c0,10.176,7.189,18.923,17.152,20.907     l213.333,42.667c1.387,0.299,2.795,0.427,4.181,0.427c4.885,0,9.685-1.685,13.525-4.843c4.928-4.053,7.808-10.091,7.808-16.491     v-21.333H362.68c11.797,0,21.333-9.557,21.333-21.333V320C384.013,308.224,374.477,298.667,362.68,298.667z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg></a>
                </div>
                <div class="content">
                    <p class="title">Olá, ${admin.login}!</p>
                    <div class="home-dash">
                        <p class="home-dash-title">Pendências</p>
                        <div class="home-dash-wrapper">
                            <div class="home-dash-control">
                                <p class="control-title">Alunos</p>
                                <c:if test="${not empty listaAlunosValidar}">
                                    <p>Você possui <strong>${fn:length(listaAlunosValidar)}</strong> cadastros de alunos para validar.</p>
                                    <div class="menu-item" id="students-control">
                                        <button>Ver</button>
                                    </div>
                                </c:if>
                                <c:if test="${empty listaAlunosValidar}">
                                    <p>Não há cadastro de alunos para validar.</p>
                                </c:if>
                            </div>
                            <div class="home-dash-control">
                                <p class="control-title">Empresas</p>
                                <c:if test="${not empty listaEmpresasValidar}">
                                    <p>Você possui <strong>${fn:length(listaEmpresasValidar)}</strong> cadastros de empresas para validar.</p>
                                    <div class="menu-item" id="companies-control">
                                        <button>Ver</button>
                                    </div>
                                </c:if>
                                <c:if test="${empty listaEmpresasValidar}">
                                    <p>Não há cadastro de empresas para validar.</p>
                                </c:if>
                            </div>
                            <div class="home-dash-control">
                                <p class="control-title">Relatórios de Estágio</p>
                                <c:if test="${not empty listaRelatoriosValidar}">
                                    <p>Você possui <strong>${fn:length(listaRelatoriosValidar)}</strong> relatórios de estágios para validar.</p>
                                    <div class="menu-item" id="reports-control">
                                        <button>Ver</button>
                                    </div>
                                </c:if>
                                <c:if test="${empty listaRelatoriosValidar}">
                                    <p>Não há relatórios de estágios para validar.</p>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-right students">
                <div class="content-menu-top">
                    <div class="setup">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="20px" height="20px" viewBox="0 0 340.274 340.274" style="enable-background:new 0 0 340.274 340.274;" xml:space="preserve"><path d="M293.629,127.806l-5.795-13.739c19.846-44.856,18.53-46.189,14.676-50.08l-25.353-24.77l-2.516-2.12h-2.937     c-1.549,0-6.173,0-44.712,17.48l-14.184-5.719c-18.332-45.444-20.212-45.444-25.58-45.444h-35.765     c-5.362,0-7.446-0.006-24.448,45.606l-14.123,5.734C86.848,43.757,71.574,38.19,67.452,38.19l-3.381,0.105L36.801,65.032     c-4.138,3.891-5.582,5.263,15.402,49.425l-5.774,13.691C0,146.097,0,147.838,0,153.33v35.068c0,5.501,0,7.44,46.585,24.127     l5.773,13.667c-19.843,44.832-18.51,46.178-14.655,50.032l25.353,24.8l2.522,2.168h2.951c1.525,0,6.092,0,44.685-17.516     l14.159,5.758c18.335,45.438,20.218,45.427,25.598,45.427h35.771c5.47,0,7.41,0,24.463-45.589l14.195-5.74     c26.014,11,41.253,16.585,45.349,16.585l3.404-0.096l27.479-26.901c3.909-3.945,5.278-5.309-15.589-49.288l5.734-13.702     c46.496-17.967,46.496-19.853,46.496-25.221v-35.029C340.268,146.361,340.268,144.434,293.629,127.806z M170.128,228.474     c-32.798,0-59.504-26.187-59.504-58.364c0-32.153,26.707-58.315,59.504-58.315c32.78,0,59.43,26.168,59.43,58.315     C229.552,202.287,202.902,228.474,170.128,228.474z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg>
                    </div>
                    <a href="${pageContext.request.contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="20px" height="20px"><path d="M510.371,226.513c-1.088-2.603-2.645-4.971-4.629-6.955l-63.979-63.979c-8.341-8.32-21.824-8.32-30.165,0     c-8.341,8.341-8.341,21.845,0,30.165l27.584,27.584H320.013c-11.797,0-21.333,9.557-21.333,21.333s9.536,21.333,21.333,21.333     h119.168l-27.584,27.584c-8.341,8.341-8.341,21.845,0,30.165c4.16,4.181,9.621,6.251,15.083,6.251s10.923-2.069,15.083-6.251     l63.979-63.979c1.984-1.963,3.541-4.331,4.629-6.955C512.525,237.606,512.525,231.718,510.371,226.513z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/><path d="M362.68,298.667c-11.797,0-21.333,9.557-21.333,21.333v106.667h-85.333V85.333c0-9.408-6.187-17.728-15.211-20.437     l-74.091-22.229h174.635v106.667c0,11.776,9.536,21.333,21.333,21.333s21.333-9.557,21.333-21.333v-128     C384.013,9.557,374.477,0,362.68,0H21.347c-0.768,0-1.451,0.32-2.197,0.405c-1.003,0.107-1.92,0.277-2.88,0.512     c-2.24,0.576-4.267,1.451-6.165,2.645c-0.469,0.299-1.045,0.32-1.493,0.661C8.44,4.352,8.376,4.587,8.205,4.715     C5.88,6.549,3.939,8.789,2.531,11.456c-0.299,0.576-0.363,1.195-0.597,1.792c-0.683,1.621-1.429,3.2-1.685,4.992     c-0.107,0.64,0.085,1.237,0.064,1.856c-0.021,0.427-0.299,0.811-0.299,1.237V448c0,10.176,7.189,18.923,17.152,20.907     l213.333,42.667c1.387,0.299,2.795,0.427,4.181,0.427c4.885,0,9.685-1.685,13.525-4.843c4.928-4.053,7.808-10.091,7.808-16.491     v-21.333H362.68c11.797,0,21.333-9.557,21.333-21.333V320C384.013,308.224,374.477,298.667,362.68,298.667z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg></a>
                </div>
                <div class="content">
                    <div class="students-list-wrapper">
                        <h2 class="title">Lista de Alunos</h2>
                        <c:if test="${not empty listaAlunos}">
                            <table class="list">
                                <tr class="table-title">
                                    <th>Nome</th>
                                    <th>Login</th>
                                    <th>RA</th>
                                    <th class="student-remove">Alterar</th>
                                    <th class="student-remove">Remover</th>
                                </tr>
                                <c:forEach var="aluno" items="${listaAlunos}">
                                    <tr>
                                        <td>${aluno.nome}</td>
                                        <td>${aluno.login}</td>
                                        <td>${aluno.ra}</td>
                                        <td class="student-remove">
                                            <a href="../aluno/alterar/${relatorio.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 528.899 528.899" style="enable-background:new 0 0 528.899 528.899;" xml:space="preserve"><path d="M328.883,89.125l107.59,107.589l-272.34,272.34L56.604,361.465L328.883,89.125z M518.113,63.177l-47.981-47.981   c-18.543-18.543-48.653-18.543-67.259,0l-45.961,45.961l107.59,107.59l53.611-53.611   C532.495,100.753,532.495,77.559,518.113,63.177z M0.3,512.69c-1.958,8.812,5.998,16.708,14.811,14.565l119.891-29.069   L27.473,390.597L0.3,512.69z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#111832"/></svg></a>
                                        </td>
                                        <td class="student-remove">
                                            <a href="../aluno/rejeitar/${aluno.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 459 459" style="enable-background:new 0 0 459 459;" xml:space="preserve"><path d="M76.5,408c0,28.05,22.95,51,51,51h204c28.05,0,51-22.95,51-51V102h-306V408z M408,25.5h-89.25L293.25,0h-127.5l-25.5,25.5    H51v51h357V25.5z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#C5C8CD"/></svg></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </c:if>
                        <c:if test="${empty listaAlunos}">
                            <p>Não há alunos cadastrados.</p>
                        </c:if>
                    </div>
                    <div class="students-list-wrapper">
                        <h2 class="title">Validação de Alunos</h2>
                        <table class="list validation-students">
                            <c:if test="${not empty listaAlunosValidar}">
                                <tr>
                                    <th>Nome</th>
                                    <th>Login</th>
                                    <th>RA</th>
                                    <th class="student-remove">Validar</th>
                                    <th class="student-remove">Rejeitar</th>
                                </tr>
                                <c:forEach var="aluno" items="${listaAlunosValidar}">
                                    <tr>
                                        <td>${aluno.nome}</td>
                                        <td>${aluno.login}</td>
                                        <td>${aluno.ra}</td>
                                        <td class="student-remove">
                                            <a href="../aluno/validar/${aluno.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 442.533 442.533" style="enable-background:new 0 0 442.533 442.533;" xml:space="preserve" class=""><path d="M434.539,98.499l-38.828-38.828c-5.324-5.328-11.799-7.993-19.41-7.993c-7.618,0-14.093,2.665-19.417,7.993L169.59,247.248   l-83.939-84.225c-5.33-5.33-11.801-7.992-19.412-7.992c-7.616,0-14.087,2.662-19.417,7.992L7.994,201.852   C2.664,207.181,0,213.654,0,221.269c0,7.609,2.664,14.088,7.994,19.416l103.351,103.349l38.831,38.828   c5.327,5.332,11.8,7.994,19.414,7.994c7.611,0,14.084-2.669,19.414-7.994l38.83-38.828L434.539,137.33   c5.325-5.33,7.994-11.802,7.994-19.417C442.537,110.302,439.864,103.829,434.539,98.499z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#207649"/></svg></a>
                                        </td>
                                        <td class="student-remove">
                                            <a href="../aluno/rejeitar/${aluno.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 348.333 348.334" style="enable-background:new 0 0 348.333 348.334;" xml:space="preserve"><path d="M336.559,68.611L231.016,174.165l105.543,105.549c15.699,15.705,15.699,41.145,0,56.85   c-7.844,7.844-18.128,11.769-28.407,11.769c-10.296,0-20.581-3.919-28.419-11.769L174.167,231.003L68.609,336.563   c-7.843,7.844-18.128,11.769-28.416,11.769c-10.285,0-20.563-3.919-28.413-11.769c-15.699-15.698-15.699-41.139,0-56.85   l105.54-105.549L11.774,68.611c-15.699-15.699-15.699-41.145,0-56.844c15.696-15.687,41.127-15.687,56.829,0l105.563,105.554   L279.721,11.767c15.705-15.687,41.139-15.687,56.832,0C352.258,27.466,352.258,52.912,336.559,68.611z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#E57E46"/></svg></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            <c:if test="${empty listaAlunosValidar}">
                                <p>Não há cadastro de alunos para validar.</p>
                            </c:if>
                        </table>
                    </div>
                </div>
            </div>
            <div class="content-right companies">
                <div class="content-menu-top">
                    <div class="setup">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="20px" height="20px" viewBox="0 0 340.274 340.274" style="enable-background:new 0 0 340.274 340.274;" xml:space="preserve"><path d="M293.629,127.806l-5.795-13.739c19.846-44.856,18.53-46.189,14.676-50.08l-25.353-24.77l-2.516-2.12h-2.937     c-1.549,0-6.173,0-44.712,17.48l-14.184-5.719c-18.332-45.444-20.212-45.444-25.58-45.444h-35.765     c-5.362,0-7.446-0.006-24.448,45.606l-14.123,5.734C86.848,43.757,71.574,38.19,67.452,38.19l-3.381,0.105L36.801,65.032     c-4.138,3.891-5.582,5.263,15.402,49.425l-5.774,13.691C0,146.097,0,147.838,0,153.33v35.068c0,5.501,0,7.44,46.585,24.127     l5.773,13.667c-19.843,44.832-18.51,46.178-14.655,50.032l25.353,24.8l2.522,2.168h2.951c1.525,0,6.092,0,44.685-17.516     l14.159,5.758c18.335,45.438,20.218,45.427,25.598,45.427h35.771c5.47,0,7.41,0,24.463-45.589l14.195-5.74     c26.014,11,41.253,16.585,45.349,16.585l3.404-0.096l27.479-26.901c3.909-3.945,5.278-5.309-15.589-49.288l5.734-13.702     c46.496-17.967,46.496-19.853,46.496-25.221v-35.029C340.268,146.361,340.268,144.434,293.629,127.806z M170.128,228.474     c-32.798,0-59.504-26.187-59.504-58.364c0-32.153,26.707-58.315,59.504-58.315c32.78,0,59.43,26.168,59.43,58.315     C229.552,202.287,202.902,228.474,170.128,228.474z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg>
                    </div>
                    <a href="${pageContext.request.contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="20px" height="20px"><path d="M510.371,226.513c-1.088-2.603-2.645-4.971-4.629-6.955l-63.979-63.979c-8.341-8.32-21.824-8.32-30.165,0     c-8.341,8.341-8.341,21.845,0,30.165l27.584,27.584H320.013c-11.797,0-21.333,9.557-21.333,21.333s9.536,21.333,21.333,21.333     h119.168l-27.584,27.584c-8.341,8.341-8.341,21.845,0,30.165c4.16,4.181,9.621,6.251,15.083,6.251s10.923-2.069,15.083-6.251     l63.979-63.979c1.984-1.963,3.541-4.331,4.629-6.955C512.525,237.606,512.525,231.718,510.371,226.513z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/><path d="M362.68,298.667c-11.797,0-21.333,9.557-21.333,21.333v106.667h-85.333V85.333c0-9.408-6.187-17.728-15.211-20.437     l-74.091-22.229h174.635v106.667c0,11.776,9.536,21.333,21.333,21.333s21.333-9.557,21.333-21.333v-128     C384.013,9.557,374.477,0,362.68,0H21.347c-0.768,0-1.451,0.32-2.197,0.405c-1.003,0.107-1.92,0.277-2.88,0.512     c-2.24,0.576-4.267,1.451-6.165,2.645c-0.469,0.299-1.045,0.32-1.493,0.661C8.44,4.352,8.376,4.587,8.205,4.715     C5.88,6.549,3.939,8.789,2.531,11.456c-0.299,0.576-0.363,1.195-0.597,1.792c-0.683,1.621-1.429,3.2-1.685,4.992     c-0.107,0.64,0.085,1.237,0.064,1.856c-0.021,0.427-0.299,0.811-0.299,1.237V448c0,10.176,7.189,18.923,17.152,20.907     l213.333,42.667c1.387,0.299,2.795,0.427,4.181,0.427c4.885,0,9.685-1.685,13.525-4.843c4.928-4.053,7.808-10.091,7.808-16.491     v-21.333H362.68c11.797,0,21.333-9.557,21.333-21.333V320C384.013,308.224,374.477,298.667,362.68,298.667z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg></a>
                </div>
                <div class="content">
                    <div class="students-list-wrapper">
                        <h2 class="title">Empresas Existentes</h2>
                        <table class="list">
                            <c:if test="${not empty listaEmpresas}">
                                <tr>
                                    <th>Nome Fantasia</th>
                                    <th>Login</th>
                                    <th>Razão Social</th>
                                    <th>CNPJ</th>
                                    <th class="student-remove">Alterar</th>
                                    <th class="student-remove">Remover</th>
                                </tr>
                                <c:forEach var="empresa" items="${listaEmpresas}">
                                    <tr>
                                        <td>${empresa.nomeFantasia}</td>
                                        <td>${empresa.login}</td>
                                        <td>${empresa.razaoSocial}</td>
                                        <td>${empresa.cnpj}</td></td>
                                        <td class="student-remove">
                                            <a href="../empresa/alterar/${relatorio.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 528.899 528.899" style="enable-background:new 0 0 528.899 528.899;" xml:space="preserve"><path d="M328.883,89.125l107.59,107.589l-272.34,272.34L56.604,361.465L328.883,89.125z M518.113,63.177l-47.981-47.981   c-18.543-18.543-48.653-18.543-67.259,0l-45.961,45.961l107.59,107.59l53.611-53.611   C532.495,100.753,532.495,77.559,518.113,63.177z M0.3,512.69c-1.958,8.812,5.998,16.708,14.811,14.565l119.891-29.069   L27.473,390.597L0.3,512.69z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#111832"/></svg></a>
                                        </td>
                                        <td class="student-remove">
                                            <a href="../empresa/rejeitar/${empresa.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 459 459" style="enable-background:new 0 0 459 459;" xml:space="preserve"><path d="M76.5,408c0,28.05,22.95,51,51,51h204c28.05,0,51-22.95,51-51V102h-306V408z M408,25.5h-89.25L293.25,0h-127.5l-25.5,25.5    H51v51h357V25.5z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#C5C8CD"/></svg></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            <c:if test="${empty listaEmpresas}">
                                <p>Não há empresas cadastradas.</p>
                            </c:if>
                        </table>
                    </div>
                    <div class="students-list-wrapper">
                        <h2 class="title">Validação de Empresas</h2>
                        <table class="list validation-companies">
                            <c:if test="${not empty listaEmpresasValidar}">
                                <tr>
                                    <th>Nome Fantasia</th>
                                    <th>Login</th>
                                    <th>Razão Social</th>
                                    <th>CNPJ</th>
                                    <th class="student-remove">Validar</th>
                                    <th class="student-remove">Rejeitar</th>
                                </tr>
                                <c:forEach var="empresa" items="${listaEmpresasValidar}">
                                    <tr>
                                        <td>${empresa.nomeFantasia}</td>
                                        <td>${empresa.login}</td>
                                        <td>${empresa.razaoSocial}</td>
                                        <td>${empresa.cnpj}</td>
                                        <td class="student-remove">
                                            <a href="../empresa/validar/${empresa.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 442.533 442.533" style="enable-background:new 0 0 442.533 442.533;" xml:space="preserve" class=""><path d="M434.539,98.499l-38.828-38.828c-5.324-5.328-11.799-7.993-19.41-7.993c-7.618,0-14.093,2.665-19.417,7.993L169.59,247.248   l-83.939-84.225c-5.33-5.33-11.801-7.992-19.412-7.992c-7.616,0-14.087,2.662-19.417,7.992L7.994,201.852   C2.664,207.181,0,213.654,0,221.269c0,7.609,2.664,14.088,7.994,19.416l103.351,103.349l38.831,38.828   c5.327,5.332,11.8,7.994,19.414,7.994c7.611,0,14.084-2.669,19.414-7.994l38.83-38.828L434.539,137.33   c5.325-5.33,7.994-11.802,7.994-19.417C442.537,110.302,439.864,103.829,434.539,98.499z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#207649"/></svg></a>
                                        </td>
                                        <td class="student-remove">
                                            <a href="../empresa/rejeitar/${empresa.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 348.333 348.334" style="enable-background:new 0 0 348.333 348.334;" xml:space="preserve"><path d="M336.559,68.611L231.016,174.165l105.543,105.549c15.699,15.705,15.699,41.145,0,56.85   c-7.844,7.844-18.128,11.769-28.407,11.769c-10.296,0-20.581-3.919-28.419-11.769L174.167,231.003L68.609,336.563   c-7.843,7.844-18.128,11.769-28.416,11.769c-10.285,0-20.563-3.919-28.413-11.769c-15.699-15.698-15.699-41.139,0-56.85   l105.54-105.549L11.774,68.611c-15.699-15.699-15.699-41.145,0-56.844c15.696-15.687,41.127-15.687,56.829,0l105.563,105.554   L279.721,11.767c15.705-15.687,41.139-15.687,56.832,0C352.258,27.466,352.258,52.912,336.559,68.611z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#E57E46"/></svg>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            <c:if test="${empty listaEmpresasValidar}">
                                <p>Não há cadastro de empresas para validar.</p>
                            </c:if>
                        </table>
                    </div>
                </div>
            </div>
            <div class="content-right internships">
                <div class="content-menu-top">
                    <div class="setup">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="20px" height="20px" viewBox="0 0 340.274 340.274" style="enable-background:new 0 0 340.274 340.274;" xml:space="preserve"><path d="M293.629,127.806l-5.795-13.739c19.846-44.856,18.53-46.189,14.676-50.08l-25.353-24.77l-2.516-2.12h-2.937     c-1.549,0-6.173,0-44.712,17.48l-14.184-5.719c-18.332-45.444-20.212-45.444-25.58-45.444h-35.765     c-5.362,0-7.446-0.006-24.448,45.606l-14.123,5.734C86.848,43.757,71.574,38.19,67.452,38.19l-3.381,0.105L36.801,65.032     c-4.138,3.891-5.582,5.263,15.402,49.425l-5.774,13.691C0,146.097,0,147.838,0,153.33v35.068c0,5.501,0,7.44,46.585,24.127     l5.773,13.667c-19.843,44.832-18.51,46.178-14.655,50.032l25.353,24.8l2.522,2.168h2.951c1.525,0,6.092,0,44.685-17.516     l14.159,5.758c18.335,45.438,20.218,45.427,25.598,45.427h35.771c5.47,0,7.41,0,24.463-45.589l14.195-5.74     c26.014,11,41.253,16.585,45.349,16.585l3.404-0.096l27.479-26.901c3.909-3.945,5.278-5.309-15.589-49.288l5.734-13.702     c46.496-17.967,46.496-19.853,46.496-25.221v-35.029C340.268,146.361,340.268,144.434,293.629,127.806z M170.128,228.474     c-32.798,0-59.504-26.187-59.504-58.364c0-32.153,26.707-58.315,59.504-58.315c32.78,0,59.43,26.168,59.43,58.315     C229.552,202.287,202.902,228.474,170.128,228.474z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg>
                    </div>
                    <a href="${pageContext.request.contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="20px" height="20px"><path d="M510.371,226.513c-1.088-2.603-2.645-4.971-4.629-6.955l-63.979-63.979c-8.341-8.32-21.824-8.32-30.165,0     c-8.341,8.341-8.341,21.845,0,30.165l27.584,27.584H320.013c-11.797,0-21.333,9.557-21.333,21.333s9.536,21.333,21.333,21.333     h119.168l-27.584,27.584c-8.341,8.341-8.341,21.845,0,30.165c4.16,4.181,9.621,6.251,15.083,6.251s10.923-2.069,15.083-6.251     l63.979-63.979c1.984-1.963,3.541-4.331,4.629-6.955C512.525,237.606,512.525,231.718,510.371,226.513z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/><path d="M362.68,298.667c-11.797,0-21.333,9.557-21.333,21.333v106.667h-85.333V85.333c0-9.408-6.187-17.728-15.211-20.437     l-74.091-22.229h174.635v106.667c0,11.776,9.536,21.333,21.333,21.333s21.333-9.557,21.333-21.333v-128     C384.013,9.557,374.477,0,362.68,0H21.347c-0.768,0-1.451,0.32-2.197,0.405c-1.003,0.107-1.92,0.277-2.88,0.512     c-2.24,0.576-4.267,1.451-6.165,2.645c-0.469,0.299-1.045,0.32-1.493,0.661C8.44,4.352,8.376,4.587,8.205,4.715     C5.88,6.549,3.939,8.789,2.531,11.456c-0.299,0.576-0.363,1.195-0.597,1.792c-0.683,1.621-1.429,3.2-1.685,4.992     c-0.107,0.64,0.085,1.237,0.064,1.856c-0.021,0.427-0.299,0.811-0.299,1.237V448c0,10.176,7.189,18.923,17.152,20.907     l213.333,42.667c1.387,0.299,2.795,0.427,4.181,0.427c4.885,0,9.685-1.685,13.525-4.843c4.928-4.053,7.808-10.091,7.808-16.491     v-21.333H362.68c11.797,0,21.333-9.557,21.333-21.333V320C384.013,308.224,374.477,298.667,362.68,298.667z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg></a>
                </div>
                <div class="content">
                    <div class="signup">
                        <h2>Cadastrar Estágio</h2>
                        <form action="">
                            <div class="form-field-flex">
                                <div class="form-field">
                                    <label for="aluno">RA do Aluno</label>
                                    <input type="text" name="aluno"  id="aluno">
                                </div>
                                <div class="form-field">
                                    <label for="duracao">Duração</label>
                                    <input type="text" name="duracao" id="duracao">
                                </div>
                            </div>
                            <div class="form-field">
                                <label for="descricao-estagio">Descrição</label>
                                <textarea name="descricao" id="descricao-estagio"></textarea>
                            </div>
                            <div class="form-field-flex">
                                <div class="form-field">
                                    <label for="data-inicio">Data Início</label>
                                    <input type="date" name="inicio" id="data-inicio">
                                </div>
                                <div class="form-field">
                                    <label for="data-termino">Data Término</label>
                                    <input type="date" name="termino" id="data-termino">
                                </div>
                            </div>
                            <input type="submit" name="" value="Cadastrar">
                        </form>
                    </div>
                </div>
            </div>
            <div class="content-right reports">
                <div class="content-menu-top">
                    <div class="setup">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="20px" height="20px" viewBox="0 0 340.274 340.274" style="enable-background:new 0 0 340.274 340.274;" xml:space="preserve"><path d="M293.629,127.806l-5.795-13.739c19.846-44.856,18.53-46.189,14.676-50.08l-25.353-24.77l-2.516-2.12h-2.937     c-1.549,0-6.173,0-44.712,17.48l-14.184-5.719c-18.332-45.444-20.212-45.444-25.58-45.444h-35.765     c-5.362,0-7.446-0.006-24.448,45.606l-14.123,5.734C86.848,43.757,71.574,38.19,67.452,38.19l-3.381,0.105L36.801,65.032     c-4.138,3.891-5.582,5.263,15.402,49.425l-5.774,13.691C0,146.097,0,147.838,0,153.33v35.068c0,5.501,0,7.44,46.585,24.127     l5.773,13.667c-19.843,44.832-18.51,46.178-14.655,50.032l25.353,24.8l2.522,2.168h2.951c1.525,0,6.092,0,44.685-17.516     l14.159,5.758c18.335,45.438,20.218,45.427,25.598,45.427h35.771c5.47,0,7.41,0,24.463-45.589l14.195-5.74     c26.014,11,41.253,16.585,45.349,16.585l3.404-0.096l27.479-26.901c3.909-3.945,5.278-5.309-15.589-49.288l5.734-13.702     c46.496-17.967,46.496-19.853,46.496-25.221v-35.029C340.268,146.361,340.268,144.434,293.629,127.806z M170.128,228.474     c-32.798,0-59.504-26.187-59.504-58.364c0-32.153,26.707-58.315,59.504-58.315c32.78,0,59.43,26.168,59.43,58.315     C229.552,202.287,202.902,228.474,170.128,228.474z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg>
                    </div>
                    <a href="${pageContext.request.contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="20px" height="20px"><path d="M510.371,226.513c-1.088-2.603-2.645-4.971-4.629-6.955l-63.979-63.979c-8.341-8.32-21.824-8.32-30.165,0     c-8.341,8.341-8.341,21.845,0,30.165l27.584,27.584H320.013c-11.797,0-21.333,9.557-21.333,21.333s9.536,21.333,21.333,21.333     h119.168l-27.584,27.584c-8.341,8.341-8.341,21.845,0,30.165c4.16,4.181,9.621,6.251,15.083,6.251s10.923-2.069,15.083-6.251     l63.979-63.979c1.984-1.963,3.541-4.331,4.629-6.955C512.525,237.606,512.525,231.718,510.371,226.513z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/><path d="M362.68,298.667c-11.797,0-21.333,9.557-21.333,21.333v106.667h-85.333V85.333c0-9.408-6.187-17.728-15.211-20.437     l-74.091-22.229h174.635v106.667c0,11.776,9.536,21.333,21.333,21.333s21.333-9.557,21.333-21.333v-128     C384.013,9.557,374.477,0,362.68,0H21.347c-0.768,0-1.451,0.32-2.197,0.405c-1.003,0.107-1.92,0.277-2.88,0.512     c-2.24,0.576-4.267,1.451-6.165,2.645c-0.469,0.299-1.045,0.32-1.493,0.661C8.44,4.352,8.376,4.587,8.205,4.715     C5.88,6.549,3.939,8.789,2.531,11.456c-0.299,0.576-0.363,1.195-0.597,1.792c-0.683,1.621-1.429,3.2-1.685,4.992     c-0.107,0.64,0.085,1.237,0.064,1.856c-0.021,0.427-0.299,0.811-0.299,1.237V448c0,10.176,7.189,18.923,17.152,20.907     l213.333,42.667c1.387,0.299,2.795,0.427,4.181,0.427c4.885,0,9.685-1.685,13.525-4.843c4.928-4.053,7.808-10.091,7.808-16.491     v-21.333H362.68c11.797,0,21.333-9.557,21.333-21.333V320C384.013,308.224,374.477,298.667,362.68,298.667z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg></a>
                </div>
                <div class="content">
                    <div class="students-list-wrapper">
                        <h2 class="title">Relatórios de Estágio Existentes</h2>
                        <table class="list">
                            <c:if test="${not empty listaRelatorios}">
                                <tr>
                                    <th>Aluno</th>
                                    <th>Descrição</th>
                                    <th>Observações</th>
                                    <th class="student-remove">Alterar</th>
                                    <th class="student-remove">Remover</th>
                                </tr>
                                <c:forEach var="relatorio" items="${listaRelatorios}">
                                    <tr>
                                        <td>aluno tal</td>
                                        <td>${relatorio.descricao}</td>
                                        <td>${relatorio.observacoes}</td>
                                        <td class="student-remove">
                                            <a href="../relatorio/alterar/${relatorio.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 528.899 528.899" style="enable-background:new 0 0 528.899 528.899;" xml:space="preserve"><path d="M328.883,89.125l107.59,107.589l-272.34,272.34L56.604,361.465L328.883,89.125z M518.113,63.177l-47.981-47.981   c-18.543-18.543-48.653-18.543-67.259,0l-45.961,45.961l107.59,107.59l53.611-53.611   C532.495,100.753,532.495,77.559,518.113,63.177z M0.3,512.69c-1.958,8.812,5.998,16.708,14.811,14.565l119.891-29.069   L27.473,390.597L0.3,512.69z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#111832"/></svg></a>
                                        </td>
                                        <td class="student-remove">
                                            <a href="../relatorio/rejeitar/${relatorio.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 459 459" style="enable-background:new 0 0 459 459;" xml:space="preserve"><path d="M76.5,408c0,28.05,22.95,51,51,51h204c28.05,0,51-22.95,51-51V102h-306V408z M408,25.5h-89.25L293.25,0h-127.5l-25.5,25.5    H51v51h357V25.5z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#C5C8CD"/></svg></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            <c:if test="${empty listaRelatorios}">
                                <p>Não há relatórios cadastrados.</p>
                            </c:if>
                        </table>
                    </div>
                    <div class="students-list-wrapper">
                        <h2 class="title">Validação de Relatórios de Estágio</h2>
                        <table class="list validation-reports">
                            <c:if test="${not empty listaRelatoriosValidar}">
                                <tr>
                                    <th>Aluno</th>
                                    <th>Descrição</th>
                                    <th>Observações</th>
                                    <th class="student-remove">Validar</th>
                                    <th class="student-remove">Rejeitar</th>
                                </tr>
                                <c:forEach var="relatorio" items="${listaRelatoriosValidar}">
                                    <tr>
                                        <td>aluno tal</td>
                                        <td>${relatorio.descricao}</td>
                                        <td>${relatorio.observacoes}</td>
                                        <td class="student-remove">
                                            <a href="../relatorio/validar/${relatorio.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 442.533 442.533" style="enable-background:new 0 0 442.533 442.533;" xml:space="preserve" class=""><path d="M434.539,98.499l-38.828-38.828c-5.324-5.328-11.799-7.993-19.41-7.993c-7.618,0-14.093,2.665-19.417,7.993L169.59,247.248   l-83.939-84.225c-5.33-5.33-11.801-7.992-19.412-7.992c-7.616,0-14.087,2.662-19.417,7.992L7.994,201.852   C2.664,207.181,0,213.654,0,221.269c0,7.609,2.664,14.088,7.994,19.416l103.351,103.349l38.831,38.828   c5.327,5.332,11.8,7.994,19.414,7.994c7.611,0,14.084-2.669,19.414-7.994l38.83-38.828L434.539,137.33   c5.325-5.33,7.994-11.802,7.994-19.417C442.537,110.302,439.864,103.829,434.539,98.499z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#207649"/></svg></a>
                                        </td>
                                        <td class="student-remove">
                                            <a href="../relatorio/rejeitar/${relatorio.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 348.333 348.334" style="enable-background:new 0 0 348.333 348.334;" xml:space="preserve"><path d="M336.559,68.611L231.016,174.165l105.543,105.549c15.699,15.705,15.699,41.145,0,56.85   c-7.844,7.844-18.128,11.769-28.407,11.769c-10.296,0-20.581-3.919-28.419-11.769L174.167,231.003L68.609,336.563   c-7.843,7.844-18.128,11.769-28.416,11.769c-10.285,0-20.563-3.919-28.413-11.769c-15.699-15.698-15.699-41.139,0-56.85   l105.54-105.549L11.774,68.611c-15.699-15.699-15.699-41.145,0-56.844c15.696-15.687,41.127-15.687,56.829,0l105.563,105.554   L279.721,11.767c15.705-15.687,41.139-15.687,56.832,0C352.258,27.466,352.258,52.912,336.559,68.611z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#E57E46"/></svg>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            <c:if test="${empty listaRelatoriosValidar}">
                                <p>Não há relatórios para validar</p>
                            </c:if>
                        </table>
                    </div>
                </div>
            </div>
            <div class="content-right mentors">
                <div class="content-menu-top">
                    <div class="setup">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="20px" height="20px" viewBox="0 0 340.274 340.274" style="enable-background:new 0 0 340.274 340.274;" xml:space="preserve"><path d="M293.629,127.806l-5.795-13.739c19.846-44.856,18.53-46.189,14.676-50.08l-25.353-24.77l-2.516-2.12h-2.937     c-1.549,0-6.173,0-44.712,17.48l-14.184-5.719c-18.332-45.444-20.212-45.444-25.58-45.444h-35.765     c-5.362,0-7.446-0.006-24.448,45.606l-14.123,5.734C86.848,43.757,71.574,38.19,67.452,38.19l-3.381,0.105L36.801,65.032     c-4.138,3.891-5.582,5.263,15.402,49.425l-5.774,13.691C0,146.097,0,147.838,0,153.33v35.068c0,5.501,0,7.44,46.585,24.127     l5.773,13.667c-19.843,44.832-18.51,46.178-14.655,50.032l25.353,24.8l2.522,2.168h2.951c1.525,0,6.092,0,44.685-17.516     l14.159,5.758c18.335,45.438,20.218,45.427,25.598,45.427h35.771c5.47,0,7.41,0,24.463-45.589l14.195-5.74     c26.014,11,41.253,16.585,45.349,16.585l3.404-0.096l27.479-26.901c3.909-3.945,5.278-5.309-15.589-49.288l5.734-13.702     c46.496-17.967,46.496-19.853,46.496-25.221v-35.029C340.268,146.361,340.268,144.434,293.629,127.806z M170.128,228.474     c-32.798,0-59.504-26.187-59.504-58.364c0-32.153,26.707-58.315,59.504-58.315c32.78,0,59.43,26.168,59.43,58.315     C229.552,202.287,202.902,228.474,170.128,228.474z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg>
                    </div>
                    <a href="${pageContext.request.contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="20px" height="20px"><path d="M510.371,226.513c-1.088-2.603-2.645-4.971-4.629-6.955l-63.979-63.979c-8.341-8.32-21.824-8.32-30.165,0     c-8.341,8.341-8.341,21.845,0,30.165l27.584,27.584H320.013c-11.797,0-21.333,9.557-21.333,21.333s9.536,21.333,21.333,21.333     h119.168l-27.584,27.584c-8.341,8.341-8.341,21.845,0,30.165c4.16,4.181,9.621,6.251,15.083,6.251s10.923-2.069,15.083-6.251     l63.979-63.979c1.984-1.963,3.541-4.331,4.629-6.955C512.525,237.606,512.525,231.718,510.371,226.513z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/><path d="M362.68,298.667c-11.797,0-21.333,9.557-21.333,21.333v106.667h-85.333V85.333c0-9.408-6.187-17.728-15.211-20.437     l-74.091-22.229h174.635v106.667c0,11.776,9.536,21.333,21.333,21.333s21.333-9.557,21.333-21.333v-128     C384.013,9.557,374.477,0,362.68,0H21.347c-0.768,0-1.451,0.32-2.197,0.405c-1.003,0.107-1.92,0.277-2.88,0.512     c-2.24,0.576-4.267,1.451-6.165,2.645c-0.469,0.299-1.045,0.32-1.493,0.661C8.44,4.352,8.376,4.587,8.205,4.715     C5.88,6.549,3.939,8.789,2.531,11.456c-0.299,0.576-0.363,1.195-0.597,1.792c-0.683,1.621-1.429,3.2-1.685,4.992     c-0.107,0.64,0.085,1.237,0.064,1.856c-0.021,0.427-0.299,0.811-0.299,1.237V448c0,10.176,7.189,18.923,17.152,20.907     l213.333,42.667c1.387,0.299,2.795,0.427,4.181,0.427c4.885,0,9.685-1.685,13.525-4.843c4.928-4.053,7.808-10.091,7.808-16.491     v-21.333H362.68c11.797,0,21.333-9.557,21.333-21.333V320C384.013,308.224,374.477,298.667,362.68,298.667z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#0B1126"/></svg></a>
                </div>
                <div class="content">
                    <div class="signup">
                        <h2>Cadastrar Supervisor</h2>
                        <form action="../supervisor/cadastrar">
                            <div class="form-field-flex">
                                <div class="form-field">
                                    <label for="supervisor-nome">Nome</label>
                                    <input type="text" name="nome"  id="supervisor-nome">
                                </div>
                                <div class="form-field-flex">
                                </div>
                            </div>
                            <input type="submit" name="" value="Cadastrar">
                        </form>
                    </div>
                    <div class="students-list-wrapper">
                        <h2 class="title">Todos os Supervisores</h2>
                        <table class="list">
                            <c:if test="${not empty listaSupervisores}">
                                <tr>
                                    <th>Nome</th>
                                    <th class="student-remove">Alterar</th>
                                    <th class="student-remove">Remover</th>
                                </tr>
                                <c:forEach var="supervisor" items="${listaSupervisores}">
                                    <tr>
                                        <td>${supervisor.nome}</td>
                                        <td class="student-remove">
                                            <a href="../supervisor/alterar/${supervisor.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 528.899 528.899" style="enable-background:new 0 0 528.899 528.899;" xml:space="preserve"><path d="M328.883,89.125l107.59,107.589l-272.34,272.34L56.604,361.465L328.883,89.125z M518.113,63.177l-47.981-47.981   c-18.543-18.543-48.653-18.543-67.259,0l-45.961,45.961l107.59,107.59l53.611-53.611   C532.495,100.753,532.495,77.559,518.113,63.177z M0.3,512.69c-1.958,8.812,5.998,16.708,14.811,14.565l119.891-29.069   L27.473,390.597L0.3,512.69z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#111832"/></svg></a>
                                        </td>
                                        <td class="student-remove">
                                            <a href="../supervisor/rejeitar/${supervisor.id}"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 459 459" style="enable-background:new 0 0 459 459;" xml:space="preserve"><path d="M76.5,408c0,28.05,22.95,51,51,51h204c28.05,0,51-22.95,51-51V102h-306V408z M408,25.5h-89.25L293.25,0h-127.5l-25.5,25.5    H51v51h357V25.5z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#C5C8CD"/></svg></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            <c:if test="${empty listaSupervisores}">
                                <p>Não há supervisores cadastrados.</p>
                            </c:if>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script src="<c:url value="/resources/inc/pages-dashboard.js" />"></script>
    </body>
</html>