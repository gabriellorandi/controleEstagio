package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Relatorio;
import com.pw3.controleestagio.model.Supervisor;
import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.repository.RelatorioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/relatorio")
public class RelatorioController {

    private final RelatorioRepository relatorioRepository;

    @Autowired
    public RelatorioController(RelatorioRepository relatorioRepository){
        this.relatorioRepository = relatorioRepository;
    }

    @Transactional
    @RequestMapping("/observacao/{relatorioId}")
    public String addObservacao(HttpSession httpSession, @PathVariable int relatorioId, String observacao) {

        Object usuario = httpSession.getAttribute("usuario");
        if(!Usuario.isSupervisor(usuario)) {
            return "redirect:acessoNegado";
        }

        Relatorio relatorio = relatorioRepository.get(relatorioId);
        relatorio.setObservacoes(observacao);
        relatorioRepository.add(relatorio);
        return "paginaSupervisor";
    }

    @RequestMapping("/listar")
    public String listar(HttpSession httpSession, Model model){

        Object usuario = httpSession.getAttribute("usuario");
        if(!Usuario.isSupervisor(usuario)) {
            return "redirect:acessoNegado";
        }

        List<Relatorio> relatorios = relatorioRepository.getAllBySupervisor((Supervisor) usuario);

        model.addAttribute("relatorios",relatorios);

        return "paginaSupervisor";

    }

    @Transactional
    @RequestMapping("/alterar/{relatorioId}")
    public String alterar(HttpSession httpSession, Model model, Relatorio relatorio, @PathVariable int relatorioId) {

        Object usuario = httpSession.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Relatorio update = relatorioRepository.get(relatorioId);
        update.setObservacoes(relatorio.getObservacoes());
        update.setDescricao(relatorio.getDescricao());

        relatorioRepository.add(update);
        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping("/remover/{relatorioId}")
    public String remover(HttpSession httpSession, Model model, @PathVariable int relatorioId) {

        Object usuario = httpSession.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Relatorio relatorio = relatorioRepository.get(relatorioId);

        relatorioRepository.remove(relatorio);
        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping("/cadastrar")
    public String cadastra(HttpSession httpSession, Relatorio relatorio){

        Object usuario = httpSession.getAttribute("usuario");
        if(!Usuario.isAluno(usuario)) {
            return "redirect:acessoNegado";
        }

        relatorioRepository.add(relatorio);
        return "paginaAluno";
    }

    @Transactional
    @RequestMapping("/validar/{relatorioId}")
    public String validarRelatorio(HttpSession session, @PathVariable int relatorioId){

        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Relatorio relatorio = relatorioRepository.get(relatorioId);
        relatorio.setValido(true);
        relatorioRepository.add(relatorio);
        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping("/rejeitar/{relatorioId}")
    public String rejeitarRelatorio(HttpSession session, @PathVariable int relatorioId){
        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Relatorio relatorio = relatorioRepository.get(relatorioId);
        relatorioRepository.remove(relatorio);
        return "redirect:/administrador/iniciarPaginaAdmin";
    }
}
