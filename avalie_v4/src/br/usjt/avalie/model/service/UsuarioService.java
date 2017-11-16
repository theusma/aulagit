package br.usjt.avalie.model.service;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.usjt.avalie.model.dao.UsuarioDAO;
import br.usjt.avalie.model.entity.Usuario;

@Service
public class UsuarioService {
	
	private UsuarioDAO dao;
	
	@Autowired
	public UsuarioService(UsuarioDAO dao) {
		this.dao = dao;
	}
	
	public void criar(Usuario usuario) throws IOException{
		dao.criar(usuario);
	}
	
	public boolean validar(Usuario usuario) throws IOException{
		return dao.validar(usuario);
	}
	
	public boolean validarLogin(Usuario usuario) throws IOException{
		return dao.validarLogin(usuario);
	}
}
