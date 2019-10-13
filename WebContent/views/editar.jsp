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
<script type="text/javascript" src="js/scripts.js"></script>
<title>Editar usuario</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("#idDddEdita").keyup(function() {
		    $("#idDddEdita").val(this.value.match(/[0-9]*/));
		});
	});
</script>
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
      <li class="nav-item ml-5">
        <a class="nav-link btn btn-info" href="usuario?option=consultar">Consultar/Deletar/Editar</a>
      </li>
    </ul>
  </div>
</nav>
<div class="pr-3 pl-3">
	<h3 class="mt-5 mb-3">Você está editando o usuário:</h3>
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
	    </tr>
	  </thead>
	  
	  <tbody>
	      <tr>
	        <th><c:out value="${usuarios.id}"></c:out></th>
	        <td><c:out value="${usuarios.nome}"></c:out></td>
	        <td><c:out value="${usuarios.email}"></c:out></td>
	        <td><c:out value="${usuarios.senha}"></c:out></td>
	        <td><c:out value="${usuarios.ddd}"></c:out></td>
	        <td><c:out value="${usuarios.numero}"></c:out></td>
	        <td><c:out value="${usuarios.tipo}"></c:out></td>
	      </tr>
	  </tbody>
	</table>
</div>
<div class="d-flex justify-content-center">
	<form id="allForms" action="usuario" method="post" class="mt-2 p-4 border" style="width: 35rem;">
	<c:set var="usuarios" value="${usuarios}"></c:set>
	<input type="hidden" name="option" value="editar"></input>
	<input type="hidden" name="id" value="${usuarios.id}"></input>
	<h4 class="mb-4">Editar</h4>
	  <div class="form-group">
	    <label for="inputAddress">Nome</label>
	    <input type="text" class="form-control" name="nome" id="idNomeEdita" obrigatorio placeholder="Seu nome aqui..." value="${usuarios.nome}">
	  </div>
	  <div class="form-row">
	    <div class="form-group col-md-6">
	      <label for="inputEmail4">Email</label>
	      <input type="email" class="form-control" name="email" id="idEmailEdita" obrigatorio placeholder="Email" value="${usuarios.email}">
	    </div>
	    <div class="form-group col-md-6">
	      <label for="inputPassword4">Senha</label>
	      <input type="password" class="form-control" name="senha" id="idSenhaEdita" obrigatorio placeholder="Senha" value="${usuarios.senha}">
	    </div>
	  </div>
	  <div class="form-row">
	    <div class="form-group col-md-2">
	      <label for="inputCity">DDD</label>
	      <input type="text" class="form-control" name="ddd" id="idDddEdita" maxlength="2" pattern="([0-9]{2})" obrigatorio placeholder="Ex. 81" value="${usuarios.ddd}">
	    </div>
	    <div class="form-group col-md-6">
	      <label for="inputEstado">Numero</label>
	      <input type="text" class="form-control" name="numero" id="idNumeroEdita" obrigatorio placeholder="99999-9999" value="${usuarios.numero}">
	    </div>
	    <div class="form-group col-md-4">
	      <label for="inputCEP">Tipo</label>
	      <input type="text" class="form-control" name="tipo" id="idTipoEdita" obrigatorio placeholder="Ex. Fixo" value="${usuarios.tipo}">
	    </div>
	  </div>
	  <input type="submit" value="Atualizar" class="btn btn-success"></input>
	  <a href="usuario?option=consultar" class="btn btn-danger">Cancelar</a>
	</form>
</div>
</body>
</html>