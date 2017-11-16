package br.usjt.avalie.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.usjt.avalie.model.entity.Usuario;

@Repository
public class UsuarioDAO {
	
	@PersistenceContext
	EntityManager manager;
	
	public void criar(Usuario usuario){
		manager.persist(usuario);
	}
	
	public void atualizar(Usuario usuario){
		manager.merge(manager.find(Usuario.class, usuario.getLogin()));
	}
	
	public void excluir(Usuario usuario){
		manager.remove(manager.find(Usuario.class, usuario.getLogin()));
	}
	
	public Usuario selecionar(String id){
		return manager.find(Usuario.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<Usuario> selecionarTodos(){
		return manager.createQuery("select u from Usuario u").getResultList();
	}
	
	public boolean validar(Usuario usuario){
		String jpql = "select u from Usuario u where u.login = :login and u.senha = :senha";
		Query query = manager.createQuery(jpql);
		query.setParameter("login", usuario.getLogin());
		query.setParameter("senha", usuario.getSenha());
		@SuppressWarnings("unchecked")
		List<Usuario> result = query.getResultList();
		return (result != null && result.size() == 1);
	}
	
	public boolean validarLogin(Usuario usuario){
		String jpql = "select login from Usuario u where u.login = :login";
		Query query = manager.createQuery(jpql);
		query.setParameter("login", usuario.getLogin());
		@SuppressWarnings("unchecked")
		List<Usuario> result = query.getResultList();
		return (result != null && result.size() == 1);
	}
	
}	
