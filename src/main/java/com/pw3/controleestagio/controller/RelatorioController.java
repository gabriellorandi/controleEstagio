package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Relatorio;
import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.repository.RelatorioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("relatorio")
public class RelatorioController {

    private final RelatorioRepository relatorioRepository;

    @Autowired
    public RelatorioController(RelatorioRepository relatorioRepository){
        this.relatorioRepository = relatorioRepository;
    }

    @Transactional
    @RequestMapping("/cadastrar")
    public String cadastra(HttpSession httpSession, Relatorio relatorio){
        Usuario usuario = (Usuario) httpSession.getAttribute("usuario");

        if (usuario.isAluno()) {
            relatorioRepository.add(relatorio);
        }
        return "paginaAluno";
    }

    @Transactional
    @RequestMapping("/validar/{relatorioId}")
    public String validarRelatorio(HttpSession session, @PathVariable int relatorioId){
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        if (usuario.isAdmin()){
            Relatorio relatorio = relatorioRepository.get(relatorioId);
            relatorio.setValido(true);
            relatorioRepository.add(relatorio);
        }
        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping("/rejeitar/{relatorioId}")
    public String rejeitarRelatorio(HttpSession session, @PathVariable int relatorioId){
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        if (usuario.isAdmin()){
            Relatorio relatorio = relatorioRepository.get(relatorioId);
            relatorioRepository.remove(relatorio);
        }
        return "redirect:/administrador/iniciarPaginaAdmin";
    }
}
