<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Lista de Jogos</title>
</head>
<body>
<div class="container">
    <h1>Lista de Jogos</h1>
    <hr>
    <a href="/jogo/insert" class="btn btn-primary">Novo Jogo</a>
    <hr>
    <table>
        <tr>
            <th>Id</th>
            <th>Título</th>
            <th>Ano de Lançamento</th>
            <th>&nbsp;</th>
        </tr>
        <c:forEach var="item" items="${jogo}">
            <tr>
                <td>${item.id}</td>
                <td>${item.titulo}</td>
                <td>${item.anoDeLancamento}</td>
                <td>
                    <a href="/jogo/update?id=${item.id}" class="btn btn-warning">Editar</a>
                    <a href="/jogo/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>