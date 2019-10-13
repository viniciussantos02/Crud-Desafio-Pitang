<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<title>Consultar usuarios</title>
</head>
<body>
<%
	response.setHeader("Cache-control", "no-cache, no-store, must-revalidade");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");

	if(session.getAttribute("usuario") == null) {
		response.sendRedirect("403Error.jsp");
	}
%>
<nav class="navbar navbar-expand-lg navbar-light bg-secondary">
  <a class="navbar-brand text-light" href="usuario?option=home">CrudPitang</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active mr-5 ml-5">
        <a class="nav-link btn btn-info" href="#">Consultar/Deletar/Editar</a>
      </li>
      <li class="nav-item">
        <a class="nav-link btn btn-danger pr-3 pl-3" href="logout?option=sair">SAIR</a>
      </li>
    </ul>
  </div>
</nav>
<!-- Tabela que lista usuarios -->
<div class="pr-3 pl-3">
	<h3 class="mt-5 mb-3">Lista de usuarios</h3>
	<table class="table table-bordered mt-1">
	  <thead>
	    <tr>
	      <th scope="col">ID</th>
	      <th scope="col">Nome</th>
	      <th scope="col">Email</th>
	      <th scope="col">Senha</th>
	      <th scope="col">DDD</th>
	      <th scope="col">Numero</th>
	      <th scope="col">Tipo</th>
	      <th scope="col" class="text-center">Ações</th>
	    </tr>
	  </thead>
	  
	  <tbody>
	    <c:forEach var="usuarios" items="${lista}">
	      <tr>
	        <th><c:out value="${usuarios.id}"></c:out></th>
	        <td><c:out value="${usuarios.nome}"></c:out></td>
	        <td><c:out value="${usuarios.email}"></c:out></td>
	        <td><c:out value="${usuarios.senha}"></c:out></td>
	        <td><c:out value="${usuarios.ddd}"></c:out></td>
	        <td><c:out value="${usuarios.numero}"></c:out></td>
	        <td><c:out value="${usuarios.tipo}"></c:out></td>
	        <td align="center">
	        	<a href="usuario?option=editar&id=<c:out value="${usuarios.id}"></c:out>" class="btn btn-warning mr-1">Atualizar</a>
	        	<a href="usuario?option=deletar&id=<c:out value="${usuarios.id}"></c:out>" class="btn btn-danger">Deletar</a>
	        </td>
	      </tr>
	    </c:forEach>
	  </tbody>
	</table>
</div>
</body>
</html>