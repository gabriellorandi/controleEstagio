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

document.querySelector("#students-control").addEventListener("click", function() {
    document.querySelectorAll(".selected").forEach(function(selecionado){
        selecionado.classList.remove('selected');
    });
    document.querySelector("#students").classList.add('selected');

    document.querySelectorAll(".content-right").forEach(function(tela){
        tela.style.display = "none";
    });

    document.querySelector(".students").style.display = "block";
});

document.querySelector("#companies-control").addEventListener("click", function() {
    document.querySelectorAll(".selected").forEach(function(selecionado){
        selecionado.classList.remove('selected');
    });
    document.querySelector("#companies").classList.add('selected');

    document.querySelectorAll(".content-right").forEach(function(tela){
        tela.style.display = "none";
    });

    document.querySelector(".companies").style.display = "block";
});

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