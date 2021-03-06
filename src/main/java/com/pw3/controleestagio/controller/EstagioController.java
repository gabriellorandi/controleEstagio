package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Aluno;
import com.pw3.controleestagio.model.Estagio;
import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.model.VagaEstagio;
import com.pw3.controleestagio.repository.AlunoRepository;
import com.pw3.controleestagio.repository.EstagioRepository;
import com.pw3.controleestagio.repository.VagaEstagioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.Date;

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
    public String cadastrar(HttpSession httpSession,
                            @PathVariable int vagaEstagioId, @PathVariable int alunoId) {

        Object usuario = httpSession.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        VagaEstagio vagaEstagio = vagaEstagioRepository.get(vagaEstagioId);
        Aluno aluno = alunoRepository.get(alunoId);

        Estagio estagio = new Estagio();

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
    @RequestMapping(value = "/alterar/{estagioId}", method = RequestMethod.POST)
    public String alterar(HttpSession httpSession, @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Date dataInicio,
                          @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Date dataFim, int duracao, @PathVariable int estagioId) throws ParseException {

        Object usuario = httpSession.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }
        Estagio update = estagioRepository.get(estagioId);
        update.setDuracao(duracao);
        update.setDataInicio(dataInicio);
        update.setDataFim(dataFim);

        estagioRepository.add(update);
        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping("/deletar/{estagioId}")
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
