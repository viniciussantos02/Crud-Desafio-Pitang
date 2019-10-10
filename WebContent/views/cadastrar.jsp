<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/scripts.js"></script>
<title>Cadastrar-se</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand">CrudPitang</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>
</nav>
<div class="d-flex justify-content-center">
	<form id="formCadastrar" action="usuario" method="post" class="mt-5 p-4 border" style="width: 30rem;">
	<input type="hidden" name="option" value="cadastrar"></input>
	  <div class="form-group">
	    <label for="inputAddress">Nome</label>
	    <input type="text" class="form-control" name="nome" id="idNomeCadastrar" placeholder="Seu nome aqui...">
	  </div>
	  <div class="form-row">
	    <div class="form-group col-md-6">
	      <label for="inputEmail4">Email</label>
	      <input type="email" class="form-control" name="email" id="idEmailCadastrar" placeholder="Email">
	    </div>
	    <div class="form-group col-md-6">
	      <label for="inputPassword4">Senha</label>
	      <input type="password" class="form-control" name="senha" id="idSenhaCadastrar" placeholder="Senha">
	    </div>
	  </div>
	  <div class="form-row">
	    <div class="form-group col-md-2">
	      <label for="inputCity">DDD</label>
	      <input type="text" class="form-control" name="ddd" id="idDddCadastrar" placeholder="Ex. 81">
	    </div>
	    <div class="form-group col-md-6">
	      <label for="inputEstado">Numero</label>
	      <input type="text" class="form-control" name="numero" id="idNumeroCadastrar" placeholder="99999-9999">
	    </div>
	    <div class="form-group col-md-4">
	      <label for="inputCEP">Tipo</label>
	      <input type="text" class="form-control" name="tipo" id="idTipoCadastrar" placeholder="Ex. Fixo">
	    </div>
	  </div>
	  <input type="submit" value="Cadastrar" class="btn btn-success"></input>
	  <a href="usuario?option=index" class="btn btn-primary">Voltar</a>
	</form>
</div>
</body>
</html>