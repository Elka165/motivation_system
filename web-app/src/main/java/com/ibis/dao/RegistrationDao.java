package com.ibis.dao;

import com.ibis.model.Registration;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Stateless
public class RegistrationDao {

    @PersistenceContext
    private EntityManager entityManager;

    public int save(Registration r){
        entityManager.persist(r);
        return r.getId();
    }

    public Registration update(Registration r){
        return entityManager.merge(r);
    }

    public void delete (int id){
        final Registration r=entityManager.find(Registration.class, id);
        if(r!=null){
            entityManager.remove(r);
        }

    }

    public Registration findById (int id){
        return entityManager.find(Registration.class, id);
    }

    public List<Registration> findAll(){
        final Query query=entityManager.createQuery("Select r from Registration  r");
        return query.getResultList();
    }
}
