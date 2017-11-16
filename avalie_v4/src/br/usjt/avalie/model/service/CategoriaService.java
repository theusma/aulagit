package br.usjt.avalie.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.usjt.avalie.model.dao.CategoriaDAO;
import br.usjt.avalie.model.entity.Categoria;

@Service
public class CategoriaService {
	
	private CategoriaDAO dao;
	
	@Autowired
	public CategoriaService(CategoriaDAO dao) {
		this.dao = dao;
	}
	public List<Categoria> listar() {
		return dao.listar();
	}
}

