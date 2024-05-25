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

        dbCheck dao = new dbCheck();
        boolean isValidUser = dao.check(uname, pass);

        if(isValidUser){
            HttpSession session = request.getSession();
            session.setAttribute("username", uname);
            response.sendRedirect("welcome.jsp");
        } else {
            // Set the error message attribute
            request.setAttribute("errorMessage", "Invalid username or password");
            // Forward the request back to log in
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
