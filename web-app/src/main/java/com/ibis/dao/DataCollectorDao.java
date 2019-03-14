package com.ibis.dao;

import com.ibis.model.DataCollector;
import com.ibis.servlet.RegistrationUserServlet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

public class DataCollectorDao {
    private Logger LOG = LoggerFactory.getLogger(RegistrationUserServlet.class);
    @PersistenceContext
    private EntityManager entityManager;

    public Long save(DataCollector r){
        entityManager.persist(r);
        LOG.info(r.getId().toString());

        return r.getId();
    }

    public DataCollector update(DataCollector  r){
        return entityManager.merge(r);
    }

    public void delete (Long id){
        final DataCollector  r=entityManager.find(DataCollector.class, id);
        if(r!=null){
            entityManager.remove(r);
        }

    }

    public DataCollector  findById (Long id){
        return entityManager.find(DataCollector.class, id);
    }

    public List<DataCollector> findAll(){
        final Query query=entityManager.createQuery("Select r from DataCollector  r");
        return query.getResultList();
    }
}
