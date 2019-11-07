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

        Usuario usuario = (Usuario) session.getAttribute("usuario");

        if(usuario.isAdmin()) {

            Aluno aluno = alunoRepository.get(alunoId);

            aluno.setValido(true);

            alunoRepository.add(aluno);

            return "";
        }

        return "";
    }

    @Transactional
    @RequestMapping("/cadastrar")
    public String cadastra(Aluno aluno, String senhaRepetida) {

        if(aluno.getSenha().equals(senhaRepetida)) {

            alunoRepository.add(aluno);

        }

        return "login";
    }

    @Transactional
    @RequestMapping("/listar")
    public String getAll(HttpSession session, Model model) {

        Usuario usuario = (Usuario) session.getAttribute("usuario");

        if(usuario.isEmpresa() || usuario.isAdmin()) {

            List<Aluno> alunos = alunoRepository.getAll();

            model.addAttribute("alunos", alunos);

            return "";

        }

        return "";

    }
}
