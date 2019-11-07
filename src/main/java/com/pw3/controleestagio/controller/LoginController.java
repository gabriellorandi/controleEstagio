package com.pw3.controleestagio.controller;

import com.pw3.controleestagio.model.Aluno;
import com.pw3.controleestagio.model.Empresa;
import com.pw3.controleestagio.model.Usuario;
import com.pw3.controleestagio.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    private final UsuarioRepository usuarioRepository;

    @Autowired
    public LoginController(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }

    @RequestMapping("/")
    public String home() {

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
    public String autentica(Usuario usuario, HttpSession session) {

        Usuario usuariodb = usuarioRepository.getByLoginAndSenha(usuario.getLogin(), usuario.getSenha());

        if (usuariodb != null) {

            session.setAttribute("usuario", usuariodb);

            if(usuariodb.isAdmin()) {
                return "redirect:paginaAdmin";
            }

            if(usuariodb.isAluno()) {
                if(((Aluno) usuariodb).isValido()){
                    return "redirect:paginaAluno";
                }
            }

            if(usuariodb.isEmpresa()) {
                if(((Empresa) usuariodb).isValido()) {
                    return "redirect:paginaEmpresa";
                }
            }

        }

        return "login";
    }

}
