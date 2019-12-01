document.querySelectorAll(".menu-item").forEach(function(elemento) {
    elemento.addEventListener("click", function() {
        document.querySelectorAll(".selected").forEach(function(selecionado){
            selecionado.classList.remove('selected');
        });
        elemento.classList.add('selected');

        document.querySelectorAll(".content-right").forEach(function(tela){
            tela.style.display = "none";
        });

        document.querySelector("." + elemento.id).style.display = "block";
    });
});

if (document.querySelector("#students-control")) {
    document.querySelector("#students-control").addEventListener("click", function () {
        document.querySelectorAll(".selected").forEach(function (selecionado) {
            selecionado.classList.remove('selected');
        });
        document.querySelector("#students").classList.add('selected');

        document.querySelectorAll(".content-right").forEach(function (tela) {
            tela.style.display = "none";
        });

        document.querySelector(".students").style.display = "block";
    });
}

if (document.querySelector("#companies-control")) {
    document.querySelector("#companies-control").addEventListener("click", function () {
        document.querySelectorAll(".selected").forEach(function (selecionado) {
            selecionado.classList.remove('selected');
        });
        document.querySelector("#companies").classList.add('selected');

        document.querySelectorAll(".content-right").forEach(function (tela) {
            tela.style.display = "none";
        });

        document.querySelector(".companies").style.display = "block";
    });
}

if(document.querySelector("#reports-control")) {
    document.querySelector("#reports-control").addEventListener("click", function() {
        document.querySelectorAll(".selected").forEach(function(selecionado){
            selecionado.classList.remove('selected');
        });
        document.querySelector("#reports").classList.add('selected');

        document.querySelectorAll(".content-right").forEach(function(tela){
            tela.style.display = "none";
        });

        document.querySelector(".reports").style.display = "block";
    });
}
//Modal - Cadastrar Admin
document.querySelectorAll(".setup").forEach(function (value) {
    value.addEventListener("click", function () {
        document.querySelector("#signup-admin").style.display = "block";
    })
});

document.querySelectorAll(".close").forEach(function (value) {
    value.addEventListener("click",function (evt) {
        document.querySelector("#signup-admin").style.display = "none";
    })
});

window.onclick = function(event) {
    if (event.target == document.querySelector("#signup-admin")) {
        document.querySelector("#signup-admin").style.display = "none";
    }
}