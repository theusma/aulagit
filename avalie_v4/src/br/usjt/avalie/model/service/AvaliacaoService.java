package br.usjt.avalie.model.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.usjt.avalie.model.dao.AvaliacaoDAO;
import br.usjt.avalie.model.entity.Avaliacao;
import br.usjt.avalie.model.entity.Estabelecimento;

@Service
public class AvaliacaoService {
	
	private AvaliacaoDAO dao;
	
	@Autowired
	public AvaliacaoService(AvaliacaoDAO dao) {
		this.dao = dao;
	}
	
	public List<Avaliacao> listar(Estabelecimento estabelecimento, int id) throws IOException{
		estabelecimento.setId(id);
		return dao.listar(estabelecimento);
	}
}
