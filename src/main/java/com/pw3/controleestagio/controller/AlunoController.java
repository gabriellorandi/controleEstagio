package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Aluno;
import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.repository.AlunoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/aluno")
public class AlunoController {

    private final AlunoRepository alunoRepository;

    @Autowired
    public AlunoController(AlunoRepository alunoRepository) {
        this.alunoRepository = alunoRepository;
    }

    @Transactional
    @RequestMapping("/validar/{alunoId}")
    public String validarAluno(HttpSession session, @PathVariable int alunoId) {
        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Aluno aluno = alunoRepository.get(alunoId);
        aluno.setValido(true);
        alunoRepository.add(aluno);
        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping("/rejeitar/{alunoId}")
    public String rejeitarAluno(HttpSession session, @PathVariable int alunoId){
        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Aluno aluno = alunoRepository.get(alunoId);
        alunoRepository.remove(aluno);
        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping("/deletar/{alunoId}")
    public String deletar(HttpSession session, @PathVariable int alunoId) {

        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Aluno aluno = alunoRepository.get(alunoId);

        alunoRepository.remove(aluno);

        return "redirect:/administrador/iniciarPaginaAdmin";

    }

    @Transactional
    @RequestMapping(value = "/alterar/{alunoId}", method = RequestMethod.POST)
    public String alterar(HttpSession session, Aluno aluno, @PathVariable int alunoId) {

        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAdmin(usuario)) {
            return "redirect:acessoNegado";
        }

        Aluno update = alunoRepository.get(alunoId);

        update.setNome(aluno.getNome());
        update.setRa(aluno.getRa());
        update.setLogin(aluno.getLogin());

        alunoRepository.add(update);
        return "redirect:/administrador/iniciarPaginaAdmin";
    }

    @Transactional
    @RequestMapping("/cadastrar")
    public String cadastra(Aluno aluno, String senhaRepetida, Model model) {

        if(aluno.getSenha().equals(senhaRepetida)) {
            alunoRepository.add(aluno);
        }

        model.addAttribute("mensagem", "Cadastro realizado com sucesso. Aguarde até que o administrador valide o seu cadastro.");
        return "redirect:/";
    }

//    @Transactional
//    @RequestMapping("/listar")
//    public String getAll(HttpSession session, Model model) {
//
//        Usuario usuario = (Usuario) session.getAttribute("usuario");
//
//        if(usuario.isEmpresa() || usuario.isAdmin()) {
//
//            List<Aluno> alunos = alunoRepository.getAll();
//
//            model.addAttribute("alunos", alunos);
//
//            return "";
//
//        }
//
//        return "redirect:acessoNegado";
//    }
}
