package com.example.project.servlet.user;

import com.example.project.models.UserModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name="Login", value="/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        // khi load vao chua lam j thi vao trang dang nhap
        if (action == null) {
            doGet_Login(req, resp);
        }else if(action.equalsIgnoreCase("home")) {
            doGet_Home(req, resp);
        }else if(action.equalsIgnoreCase("logout")){
            doGet_Logout(request, response);

        }
    }
    protected void doGet_Login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(req,resp);
    }
    protected void doGet_Home(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/layout/user.jsp").forward(req,resp);
    }
    protected void doGet_Logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().removeAttribute("username");
        resp.sendRedirect("home");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String action = req.getParameter("action");
       if(action.equalsIgnoreCase("login")){
           doPost_Login(req,resp);
       }else if(action.equalsIgnoreCase("register")){
           doPost_Register(req,resp);
       }else if(action.equalsIgnoreCase("changepassword")){
           doPost_ChangePassword(req,resp);
       }else if(action.equalsIgnoreCase("forgotpassword")){
           doPost_ForgotPassword(req,resp);
       }
    }
    protected void doPost_Login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username").trim();
        String password = req.getParameter("password").trim();
        UserModel userModel = new UserModel();
        if(userModel.login(username, password)) {
            req.getSession().setAttribute("username", username);
            req.getSession().setAttribute("password", password);
            // dung thi gan action = welcome
            resp.sendRedirect("login?action=home");
        }else {
            req.getSession().setAttribute("msg", "Invalid");
            req.getRequestDispatcher("WEB-INF/views/login/login.jsp").forward(req, resp);
        }
    }
    protected void doPost_Register(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
    protected void doPost_ChangePassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
    protected void doPost_ForgotPassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
