package com.ibis.servlet;

import com.ibis.freemarker.TemplateProvider;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


@WebServlet(urlPatterns = "/rejestracja")

public class RegistrationServlet extends HttpServlet {
    @Inject
    private TemplateProvider templateProvider;

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
