package br.usjt.avalie.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.usjt.avalie.model.entity.Avaliacao;
import br.usjt.avalie.model.entity.Estabelecimento;

@Repository
public class AvaliacaoDAO {

	@PersistenceContext
	EntityManager manager;
	
	@SuppressWarnings("unchecked")
	public List<Avaliacao> listar(Estabelecimento estabelecimento) {
		return manager.createQuery("select a from Avaliacao a where idEstabelecimento =" + estabelecimento.getId()
				+ " order by dataAvaliacao desc").getResultList();
	}

}
