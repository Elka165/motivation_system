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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/akceptacja-uprawnień")
@Transactional
public class PermissionAkceptServlet extends HttpServlet {
    public  List<Registration> result;
    private Logger LOG = LoggerFactory.getLogger(PermissionAkceptServlet.class);
    @Inject
    private TemplateProvider templateProvider;

    @Inject
    private RegistrationUserDao registrationUserDao;

    @Inject

    private Registration registration;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        resp.setCharacterEncoding("UTF-8");
        Map<String, Object> model = new HashMap<>();
        String pathWhen= "...\\..\\image\\when.jpg";

        result = registrationUserDao.findAll();
        model.put("when", pathWhen);
        model.put("listOfPermission", result);
        LOG.info("lista:" + result.toString());
        Template template = templateProvider.getTemplate(getServletContext(), "permission-accept");
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