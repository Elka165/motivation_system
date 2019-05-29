package com.ibis.dao;


import com.ibis.model.User;
import com.ibis.servlet.LogUserServlet;
import com.ibis.servlet.RegistrationUserServlet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

public class UserDao {
    private Logger LOG = LoggerFactory.getLogger(LogUserServlet.class);

    @PersistenceContext
    private EntityManager entityManager;

    public Long save(User r) {
        entityManager.persist(r);
        LOG.info(r.getId().toString());

        return r.getId();
    }

    public User update(User r) {
        return entityManager.merge(r);
    }

    public void delete(Long id) {
        final User r = entityManager.find(User.class, id);
        if (r != null) {
            entityManager.remove(r);
        }
    }

    public User findById(Long id) {
        return entityManager.find(User.class, id);
    }

    public List<User> findByLogin(String login) {

        Query query = entityManager.createNamedQuery("findLoginUser");
        query.setParameter("param", login);

        return query.getResultList();
    }

    public List<User> findAll() {
        final Query query = entityManager.createQuery("Select r from User  r");
        return query.getResultList();
    }
}
