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