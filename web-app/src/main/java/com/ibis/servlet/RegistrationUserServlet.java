package com.ibis.servlet;

import com.ibis.dao.RegistrationUserDao;
import com.ibis.freemarker.TemplateProvider;
import com.ibis.model.Registration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import javax.inject.Inject;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;
import java.io.IOException;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/rejestracja")
@Transactional
public class RegistrationUserServlet extends HttpServlet {
    private Logger LOG = LoggerFactory.getLogger(RegistrationUserServlet.class);
    @Inject
    private TemplateProvider templateProvider;
    @Inject
    private RegistrationUserDao registrationUserDao;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        resp.setCharacterEncoding("UTF-8");
        Map<String, Object> model = new HashMap<>();
        String path = "...\\..\\image\\car.jpg";
        model.put("registration", path);

        Template template = templateProvider.getTemplate(getServletContext(), "registration");
        try {
            template.process(model, resp.getWriter());
        } catch (TemplateException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        addRegisteredUser(req, resp);

        doGet(req, resp);
    }

    private void addRegisteredUser(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {


        Registration r = new Registration();
        r.setId(1L);
        r.setName(req.getParameter("name"));
        r.setSurname(req.getParameter("surname"));
        r.setTypeOfPermission(req.getParameter("permission"));
        r.setLogin(System.getProperty("user.name"));
        r.setSurnameAndName(r.getSurname() + " " + r.getName());
        // YYYY-MM-DD
        r.setSendDate(LocalDate.now());
        LOG.info(r.toString());
        LOG.info("jestem w addUser");
        registrationUserDao.save(r);

    }

}