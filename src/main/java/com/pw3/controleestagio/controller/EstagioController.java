package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Aluno;
import com.pw3.controleestagio.model.Estagio;
import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.model.VagaEstagio;
import com.pw3.controleestagio.repository.AlunoRepository;
import com.pw3.controleestagio.repository.EstagioRepository;
import com.pw3.controleestagio.repository.VagaEstagioRepository;
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
    private final VagaEstagioRepository vagaEstagioRepository;
    private final AlunoRepository alunoRepository;

    @Autowired
    public EstagioController(EstagioRepository estagioRepository, VagaEstagioRepository vagaEstagioRepository, AlunoRepository alunoRepository) {
        this.estagioRepository = estagioRepository;
        this.vagaEstagioRepository = vagaEstagioRepository;
        this.alunoRepository = alunoRepository;
    }

    @Transactional
    @RequestMapping("/cadastrar/{vagaEstagioId}/aluno/{alunoId}")
    public String cadastrar(HttpSession httpSession, Model model, Estagio estagio,
                            @PathVariable int vagaEstagioId, @PathVariable int alunoId) {

        Object usuario = httpSession.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        VagaEstagio vagaEstagio = vagaEstagioRepository.get(vagaEstagioId);
        Aluno aluno = alunoRepository.get(alunoId);

        estagio.setDescricao( vagaEstagio.getDescricao() );
        estagio.setEstagiario( aluno );
        estagio.setEmpresa( vagaEstagio.getEmpresa() );
        estagio.setRequisitosDesejaveis( vagaEstagio.getRequisitosDesejaveis() );
        estagio.setRequisitosObrigatorios( vagaEstagio.getRequisitosObrigatorios() );

        estagioRepository.add(estagio);
        vagaEstagioRepository.remove(vagaEstagio);

        return "redirect:/administrador/iniciarPaginaAdmin";
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
