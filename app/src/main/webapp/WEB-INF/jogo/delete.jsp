<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Excluir Jogo</title>
</head>
<body>
<div class="container">
    <h1>Excluir Jogo</h1>
    <hr>
    <a href="/jogo/list" class="btn btn-primary">Voltar</a>
    <hr>
    <p>Deseja remover o jogo <strong>"${jogo.titulo}"</strong>?</p>
    <form action="/jogo/delete" method="post">
        <input type="hidden" name="id" value="${jogo.id}" />
        <button type="submit" class="btn btn-danger">Excluir</button>
    </form>
</div>
</body>
</html>