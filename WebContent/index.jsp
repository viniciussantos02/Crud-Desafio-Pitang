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
<title>Login</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-secondary">
  <a class="navbar-brand text-light">CrudPitang</a>
</nav>
<div class="d-flex justify-content-center">
	<form id="allForms" action="login" method="post" class="mt-5 p-4 border" style="width: 30rem;">
	<input type="hidden" name="option" value="logar"></input>
	<h4 class="mb-4">Login</h4>
	  <div class="form-group">
	    <label for="exampleInputEmail1">Endereço de email</label>
	    <input type="email" obrigatorio class="form-control" id="idEmailLogin" obrigatorio aria-describedby="emailHelp" name="emailLogin" placeholder="Seu email">
	    <small id="emailHelp" class="form-text text-muted">Nunca vamos compartilhar seu email, com ninguém.</small>
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">Senha</label>
	    <input type="password" class="form-control" id="idSenhaLogin" obrigatorio name="senhaLogin" placeholder="Senha">
	  </div>
	  <input id="submitButton" type="submit"value="Entrar"  class="btn btn-success mr-1"></input>
	  <a href="usuario?option=cadastrar" class="btn btn-primary">Cadastrar-se</a>
	  <div class="mt-3">
		  <font color="red">
		  	<c:out value="${sessionScope.msgErro}"></c:out>
		  </font>
		  <c:set var="msgErro" value="" scope="session"/>
	  </div>
	</form>
</div>
</body>
</html>