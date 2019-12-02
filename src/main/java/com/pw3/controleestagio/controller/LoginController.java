package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.*;
import com.pw3.controleestagio.repository.AdministradorRepository;
import com.pw3.controleestagio.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    private final UsuarioRepository usuarioRepository;
    private final AdministradorRepository administradorRepository;

    @Autowired
    public LoginController(UsuarioRepository usuarioRepository, AdministradorRepository administradorRepository) {
        this.usuarioRepository = usuarioRepository;
        this.administradorRepository = administradorRepository;
    }

    @RequestMapping("/")
    @Transactional
    public String home() {

        Usuario usuariodb = usuarioRepository.getByLoginAndSenha("admin", "1234");
        if(usuariodb == null) {
            Administrador admin = new Administrador();
            admin.setNome("Administrador");
            admin.setLogin("admin");
            admin.setSenha("1234");

            administradorRepository.add(admin);

        }

        return "login";

    }

    @RequestMapping("/cadastrarAluno")
    public String cadastrarAluno() {
        return "cadastrarAluno";
    }

    @RequestMapping("/cadastrarEmpresa")
    public String cadastrarEmpresa() {
        return "cadastrarEmpresa";
    }

    @Transactional
    @RequestMapping("autentica")
    public String autentica(Usuario usuario, HttpSession session, Model model) {

        Usuario usuariodb = usuarioRepository.getByLoginAndSenha(usuario.getLogin(), usuario.getSenha());

        if (usuariodb != null) {

            session.setAttribute("usuario", usuariodb);

            if(Usuario.isAdmin(usuariodb)) {
                return "redirect:administrador/iniciarPaginaAdmin";
            }

            if(Usuario.isAluno(usuariodb)) {
                if(((Aluno) usuariodb).isValido()){
                    return "paginaAluno";
                }
            }

            if(Usuario.isEmpresa(usuariodb)) {
                if(((Empresa) usuariodb).isValido()) {
                    return "paginaEmpresa";
                }
            }

            if (Usuario.isSupervisor(usuariodb)){
                return "paginaSupervisor";
            }

        }

        model.addAttribute("mensagem", "Login ou Senha inválidos.");
        return "login";
    }

}
