package br.usjt.avalie.controller;

import java.io.IOException;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.usjt.avalie.model.entity.Usuario;
import br.usjt.avalie.model.service.UsuarioService;

@Transactional
@Controller
public class UsuarioController {
	
	private UsuarioService us;
	
	@Autowired
	public UsuarioController(UsuarioService us){
		this.us = us;
	}
	
	@RequestMapping("/novo_usuario")
	public String novoUsuario(@Valid Usuario usuario, BindingResult result, Model model) {
		try {
			if(us.validarLogin(usuario) == false) {
				us.criar(usuario);
				return "redirect:index";
			}else {
				return "redirect:index";
			}
		}catch(IOException e) {
			e.printStackTrace();
			return "404";
		}
	}
}
