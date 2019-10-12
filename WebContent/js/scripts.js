//
$(function () {
    $("#allForms").submit(function () {
    	var getCampos = $("input[obrigatorio]");
    	
        var campos = getCampos.filter(function() {
            return !this.value;
        }).get();

        if (campos.length) {
            alert("Todos os campos devem ser preenchidos.");
            return false;
        }
    });
});