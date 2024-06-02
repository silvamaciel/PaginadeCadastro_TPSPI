package br.com.unipe.aula.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.unipe.aula.model.MembroClubeLeitura;

@Repository
public class MembroClubeLeituraDAO {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public MembroClubeLeituraDAO() {
		
	}
	
	@Transactional(readOnly=false)
	public void salvar(MembroClubeLeitura membro) {
		entityManager.persist(membro);
	}
	
	@Transactional(readOnly=true)
	public List<MembroClubeLeitura> getAll() { 
		return entityManager.createQuery("from MembroClubeLeitura",MembroClubeLeitura.class).getResultList();
	}
	
	@Transactional(readOnly=true)
	public MembroClubeLeitura getId(Long id) {
		return entityManager.find(MembroClubeLeitura.class, id);
	}
	
	@Transactional(readOnly=false)
	public void excluir(Long id) {
		entityManager.remove(getId(id));
	}
	
	@Transactional(readOnly=false)
	public void editar(MembroClubeLeitura membro) {
		entityManager.merge(membro);
	}
	
}
