package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Empresa;
import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.repository.EmpresaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/empresa")
public class EmpresaController {

    private final EmpresaRepository empresaRepository;

    @Autowired
    public EmpresaController(EmpresaRepository empresaRepository) {
        this.empresaRepository = empresaRepository;
    }

    @Transactional
    @RequestMapping("/cadastrar")
    public String cadastra(Empresa empresa, String senhaRepetida, Model model) {

        if(empresa.getSenha().equals(senhaRepetida)) {
            empresaRepository.add(empresa);
        }

        model.addAttribute("mensagem", "Cadastro realizado com sucesso. Aguarde até que o administrador valide o seu cadastro.");
        return "redirect:/";
    }

    @Transactional
    @RequestMapping("/listar")
    public String getAll(HttpSession session, Model model) {

        Usuario usuario = (Usuario) session.getAttribute("usuario");

        if(usuario.isAdmin()) {

            List<Empresa> empresas = empresaRepository.getAll();

            model.addAttribute("empresas", empresas);

            return "";
        }

        return "";
    }

    @Transactional
    @RequestMapping("/validar/{empresaId}")
    public String validarEmpresa(HttpSession session, @PathVariable int empresaId) {

        Usuario usuario = (Usuario) session.getAttribute("usuario");

        if(usuario.isAdmin()) {

            Empresa empresa = empresaRepository.get(empresaId);

            empresa.setValido(true);

            empresaRepository.add(empresa);

            return "redirect:paginaAdmin";
        }

        return "redirect:paginaAdmin";
    }

}
