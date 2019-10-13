<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
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
  <a class="navbar-brand text-light" href="#">CrudPitang</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item mr-5 ml-5">
        <a class="nav-link btn btn-info" href="usuario?option=consultar">Consultar/Deletar/Editar</a>
      </li>
      <li class="nav-item">
        <a href="logout?option=sair" class="nav-link btn btn-danger pr-3 pl-3">SAIR</a>
      </li>
    </ul>
  </div>
</nav>
<div class="mt-5 border p-3">
  <span class="text-muted"><b>Bem vindo ao sistema do CRUD Sefaz!!!</b></span>
</div>
</body>
</html>