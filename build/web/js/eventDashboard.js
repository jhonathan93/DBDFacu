$("#exit").click(function() {
    $.ajax({
        type : 'POST',
        url : 'Deslogar',
        success: function (){
            window.location.replace("http://localhost:8080/dbd/index.jsp");
        }
    });
});

$("#delete").click(function() {
    $.ajax({
        type : 'POST',
        data : {
            id : $("input[name='id']").val()
        },
        url : 'Deletar',
        success: function (){
            window.location.replace("http://localhost:8080/dbd/index.jsp");
            alert("Sua Conta foi Apagada com sucesso.");
        }
    });
});

$("#change").click(function() {
    $.ajax({
        type : 'POST',
        data : {
            id : $("input[name='id']").val(),
            nome : $("input[name='nome']").val(),
            email : $("input[name='email']").val()
        },
        url : 'Alterar',
        success: function (){
            location.reload();
        }
    });
});