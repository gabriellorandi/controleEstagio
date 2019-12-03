package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Aluno;
import com.pw3.controleestagio.model.Estagio;
import com.pw3.controleestagio.model.Relatorio;
import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.repository.EstagioRepository;
import com.sun.faces.action.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/estagio")
public class EstagioController {

    private final EstagioRepository estagioRepository;

    @Autowired
    public EstagioController(EstagioRepository estagioRepository) {
        this.estagioRepository = estagioRepository;
    }


    @Transactional
    @RequestMapping("/alterar/{estagioId}")
    public String alterar(HttpSession httpSession, Model model, Estagio estagio, @PathVariable int estagioId) {

        Object usuario = httpSession.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Estagio update = estagioRepository.get(estagioId);
        update.setDuracao(estagio.getDuracao());
        update.setDataInicio(estagio.getDataInicio());
        update.setDataFim(estagio.getDataFim());

        estagioRepository.add(update);
        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping("/deletar/{alunoId}")
    public String deletar(HttpSession session, @PathVariable int estagioId) {

        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Estagio estagio = estagioRepository.get(estagioId);

        estagioRepository.remove(estagio);

        return "redirect:/administrador/iniciarPaginaAdmin";

    }



}
