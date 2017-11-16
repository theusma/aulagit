package br.usjt.avalie.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.usjt.avalie.model.entity.Usuario;
import br.usjt.avalie.model.service.UsuarioService;


@Transactional
@Controller
public class LoginController {
	private final UsuarioService us;
	
	@Autowired
	public LoginController(UsuarioService us){
		this.us = us;
	}

	@RequestMapping("loginForm")
	public String loginForm(){
		return "login";
	}
	
	@RequestMapping("fazer_login")
	public String efetuaLogin(Usuario usuario, HttpSession session, Model model){

		try {
			if(us.validar(usuario)){
				session.setAttribute("usuarioLogado", usuario);
				return "redirect:interna";
			}else {
				ArrayList<Usuario> lista = new ArrayList<Usuario>();
				lista.add(usuario);
				model.addAttribute("lista", lista);
				return "index";
			}
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("erro", e);
			return "404";
		}
		
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "index";
	}
}
