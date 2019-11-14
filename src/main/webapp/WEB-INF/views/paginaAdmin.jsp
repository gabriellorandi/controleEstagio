
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Administra</title>
</head>
<body>

    <h2>Pagina do Administrador</h2>
    <table border="1">
        <tr><th>Nome</th><th>RA</th></tr>
        <c:forEach var="usuario" items="${usuariosValidar}">
            <tr><td>${usuario.nome}</td><td>usuario.ra</td></tr>
        </c:forEach>

    </table>

</body>
</html>
