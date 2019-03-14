package com.ibis.servlet;

import com.ibis.dao.RegistrationUserDao;
import com.ibis.freemarker.TemplateProvider;
import com.ibis.model.Registration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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

@WebServlet("/statystyki-uzupelnianie")
@Transactional
public class DataCollectorServlet extends HttpServlet {
    private Logger LOG = LoggerFactory.getLogger(DataCollectorServlet.class);
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
        String path = "...\\..\\image\\elements.jpg";
        model.put("data_collector", path);

        Template template = templateProvider.getTemplate(getServletContext(), "data-collector");
        try {
            template.process(model, resp.getWriter());
        } catch (TemplateException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        doGet(req, resp);
    }

}