$(window).on('load', function() {
    setTimeout(function() {
        $(".loading").fadeOut(1000);
    }, 2000);
});

$("#btn-register").click(function() {
    $("#login").css('left', '-400px');
    $("#register").css('left', '50px');
    $("#check").css('left','750px');
    $("#btn").css('left', '110px');
});

$("#btn-log").click(function() {
    $("#login").css('left', '50px');
    $("#register").css('left', '450px');
    $("#check").css('left','550px');
    $("#btn").css('left', '0');
});

$(".account").click(function() {
    $(".form-box").show();
});

$(document).mouseup(function(e) {
    if (!$(".form-box").is(e.target) && $(".form-box").has(e.target).length === 0) {
        $(".form-box").hide();
    }
});

$('#btn-submit-register').click(function(){
    if ($('#field-name-register').val() !== "" && $('#field-email-register').val() !== "" && $('#field-password-register').val() !== "" && $('#field-confirm-register').val() !== ""){
        if ($('#field-password-register').val() === $('#field-confirm-register').val()){
            $.ajax({
               type : 'POST',
               data : {
                   nome : $('#field-name-register').val(),
                   email : $('#field-email-register').val(),
                   senha : $('#field-password-register').val()
               },
               url : 'Register',
               success: function (result){
                   if (result === 'true') {
                       document.querySelector(".imgCheck").src = "img/check-circle.png";
                       document.querySelector("#check h1").style.color = "#1DCD02";
                       document.querySelector("#check h1").innerText = "CADASTRO COM SUCESSO";
                   }else {
                       document.querySelector(".imgCheck").src = "img/red-cross.png";
                       document.querySelector("#check h1").style.color = "#F00404";
                       document.querySelector("#check h1").innerText = "EMAIL JÁ CADASTRADO";
                   }
                    $("#login").css('left',"-700px");
                    $("#register").css('left','-400px');
                    $("#check").css('left', '50px');
                }
            });
        }else {
            alert("Senha incorreta.");
        }
    }else {
        alert("Preencha todos os campos.");
    }
});