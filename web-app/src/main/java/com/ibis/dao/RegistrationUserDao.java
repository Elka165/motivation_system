package com.ibis.dao;

import com.ibis.model.Registration;
import com.ibis.servlet.RegistrationUserServlet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Stateless
public class RegistrationUserDao {
    private Logger LOG = LoggerFactory.getLogger(RegistrationUserServlet.class);
    @PersistenceContext
    private EntityManager entityManager;

    public Long save(Registration r){
        entityManager.persist(r);
        LOG.info(r.getId().toString());

        return r.getId();
    }

    public Registration update(Registration r){
        return entityManager.merge(r);
    }

    public void delete (Long id){
        final Registration r=entityManager.find(Registration.class, id);
        if(r!=null){
            entityManager.remove(r);
        }

    }

    public Registration findById (Long id){
        return entityManager.find(Registration.class, id);
    }

    public List<Registration> findAll(){
        final Query query=entityManager.createQuery("Select r from Registration  r");
        return query.getResultList();
    }
}
