package com.vk.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name="login", value="/login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");

        if(uname.equals("admin") && pass.equals("admin123")){
            HttpSession session = request.getSession();
            session.setAttribute("username", uname);
            //session.setAttribute("password", pass);
            response.sendRedirect("welcome.jsp");
        }else{
            response.getWriter().println("Enter Correct Password");
            response.sendRedirect("login.jsp");
        }

    }
}
