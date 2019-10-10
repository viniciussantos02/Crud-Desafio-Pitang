//Script para validação dos campos de Login
$(function () {
    $("#formLogin").submit(function () {
    	var getCampoEmail = $("#idEmailLogin");
    	var getCampoSenha = $("#idSenhaLogin");
    	
        var email = getCampoEmail.filter(function() {
            return !this.value;
        }).get();
        
        var senha = getCampoSenha.filter(function() {
            return !this.value;
        }).get();

        if (email.length || senha.length) {
            alert("Todos os campos devem ser preenchidos.");
            return false;
        }
    });
});

//Script para validação dos campos de Cadastro
$(function () {
    $("#formCadastrar").submit(function () {
    	var getCampoNome = $("#idNomeCadastrar");
    	var getCampoEmail = $("#idEmailCadastrar");
    	var getCampoSenha = $("#idSenhaCadastrar");
    	var getCampoDdd = $("#idDddCadastrar");
    	var getCampoNumero = $("#idNumeroCadastrar");
    	var getCampoTipo = $("#idTipoCadastrar");
    	
        var nome = getCampoNome.filter(function() {
            return !this.value;
        }).get();
        
        var email = getCampoEmail.filter(function() {
            return !this.value;
        }).get();
        
        var senha = getCampoSenha.filter(function() {
            return !this.value;
        }).get();
        
        var ddd = getCampoDdd.filter(function() {
            return !this.value;
        }).get();
        
        var numero = getCampoNumero.filter(function() {
            return !this.value;
        }).get();
        
        var tipo = getCampoTipo.filter(function() {
            return !this.value;
        }).get();

        if (nome.length || email.length || senha.length || ddd.length || numero.length || tipo.length) {
            alert("Todos os campos devem ser preenchidos.");
            return false;
        }
    });
});

//Script para validação dos campos de Editar usuario
$(function () {
    $("#formEditar").submit(function () {
    	var getCampoNome = $("#idNomeEditar");
    	var getCampoEmail = $("#idEmailEditar");
    	var getCampoSenha = $("#idSenhaEditar");
    	var getCampoDdd = $("#idDddEditar");
    	var getCampoNumero = $("#idNumeroEditar");
    	var getCampoTipo = $("#idTipoEditar");
    	
        var nome = getCampoNome.filter(function() {
            return !this.value;
        }).get();
        
        var email = getCampoEmail.filter(function() {
            return !this.value;
        }).get();
        
        var senha = getCampoSenha.filter(function() {
            return !this.value;
        }).get();
        
        var ddd = getCampoDdd.filter(function() {
            return !this.value;
        }).get();
        
        var numero = getCampoNumero.filter(function() {
            return !this.value;
        }).get();
        
        var tipo = getCampoTipo.filter(function() {
            return !this.value;
        }).get();

        if (nome.length || email.length || senha.length || ddd.length || numero.length || tipo.length) {
            alert("Todos os campos devem ser preenchidos.");
            return false;
        }
    });
});