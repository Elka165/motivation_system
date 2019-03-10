package com.ibis.servlet;

import com.ibis.dao.RegistrationDao;
import com.ibis.freemarker.TemplateProvider;
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
import java.util.HashMap;
import java.util.Map;


@WebServlet(urlPatterns = "/rejestracja")
@Transactional
public class RegistrationServlet extends HttpServlet {
    @Inject
    private TemplateProvider templateProvider;
    @Inject
    private RegistrationDao registrationDao;

    @Override
    public void init(ServletConfig config) throws ServletException{
        super.init(config);
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        resp.setCharacterEncoding("UTF-8");
        Map<String, Object> model = new HashMap<>();
        String path="...\\..\\image\\car.jpg";
        model.put("registration", path);

        Template template = templateProvider.getTemplate(getServletContext(), "registration");
        try {
            template.process(model, resp.getWriter());
        } catch (
                TemplateException e) {
            e.printStackTrace();
        }
    }

}
