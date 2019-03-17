package com.ibis.servlet;

import com.ibis.dao.DataCollectorDao;
import com.ibis.dao.RegistrationUserDao;
import com.ibis.dao.UserDao;
import com.ibis.freemarker.TemplateProvider;
import com.ibis.model.DataCollector;
import com.ibis.model.Registration;
import com.ibis.model.User;
import com.ibis.registrationMethod.RegistrationRepository;
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
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/logowanie")
@Transactional
public class LogUserServlet extends HttpServlet {
    private Logger LOG = LoggerFactory.getLogger(LogUserServlet.class);
    String text = "";
    @Inject
    private TemplateProvider templateProvider;
    @Inject
    private RegistrationUserDao registrationUserDao;

    @Inject
    private UserDao userDao;

    @Inject
    private DataCollectorDao dataCollectorDao;


    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        User user = new User("Ela", "Dolna", "Dolna Ela", "Weladolna", LocalDate.now(), "administrator", true);
        userDao.save(user);

        DataCollector dataCollector = new DataCollector("source", "claim", LocalDateTime.now(), "type", "mobileName", 32D, 23D, 1D, "description", true, false, user);
        dataCollectorDao.save(dataCollector);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        resp.setCharacterEncoding("UTF-8");
        Map<String, Object> model = new HashMap<>();
        String path = "...\\..\\image\\fly-animal.jpg";
        String servlet;

        if (userDao.findByLogin(System.getProperty("user.name")).size() > 0) {
            servlet="/motivational_system-1.0-SNAPSHOT/statystyki-uzupelnianie";

        }else{
            servlet="/motivational_system-1.0-SNAPSHOT/logowanie";

        }
        model.put("login_path", path);
        model.put("login", System.getProperty("user.name"));
        model.put("servlet", servlet);
        model.put("text", text);

        Template template = templateProvider.getTemplate(getServletContext(), "login");

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
        text="Brak użytkownika w bazie. Prośba o zarejestrowanie";
        doGet(req, resp);


    }
}