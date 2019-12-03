package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Aluno;
import com.pw3.controleestagio.model.Curriculo;
import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.repository.CurriculoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/curriculo")
public class CurriculoController {

    private final CurriculoRepository curriculoRepository;

    @Autowired
    public CurriculoController(CurriculoRepository curriculoRepository){
        this.curriculoRepository = curriculoRepository;
    }

    @Transactional
    @RequestMapping("/cadastrar")
    public String cadastra(Curriculo curriculo, HttpSession session) {

        Object usuario = session.getAttribute("usuario");
        if(!Usuario.isAluno(usuario)) {
            return "redirect:acessoNegado";
        }

        Curriculo curriculoDb = curriculoRepository.getByAluno((Aluno) usuario);

        if(curriculoDb == null) {
            curriculoRepository.add(curriculo);
            return "redirect:/aluno/iniciarPaginaAluno";
        }

        curriculoDb.setFormacaoAcademica(curriculo.getFormacaoAcademica());
        curriculoDb.setExperienciaProfissional(curriculo.getExperienciaProfissional());

        curriculoRepository.add(curriculoDb);

        return "redirect:/aluno/iniciarPaginaAluno";
    }


}
