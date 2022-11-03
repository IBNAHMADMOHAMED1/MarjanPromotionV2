package com.example.demo2.admin;
import java.io.*;

import controller.PersonneController;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@WebServlet(name = "loginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    private static final String VIEW = "/views/admin/login.jsp";
    private static final String VIEW_ADMIN = "/views/admin/dashboard.jsp";
    private static String role ;

    public static String getRole() {
        return role;
    }

    public static void setRole(String role) {
        LoginServlet.role = role;
    }


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String role = request.getParameter("role");
        setRole(role);
        System.out.println("LoginServlet:doGet");
        HttpSession session = request.getSession();
        if (session.getAttribute("admin") != null) {
                response.sendRedirect(request.getContextPath() + "/dashboard");

        } else {
            this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
        }
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("LoginServlet:doPost");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = getRole();
        System.out.println("role: " + role);
        PersonneController personneController = new PersonneController();
        if (role.equals("admin")) {
          Boolean  isAuthentified = personneController.login(email, password,"adminGeneral");
            if (isAuthentified) {
                HttpSession session = request.getSession();
                session.setAttribute("admin", email);
                this.getServletContext().getRequestDispatcher("/admin").forward(request, response);
            } else {
                request.setAttribute("message", "Invalid email or password");
                response.sendRedirect(request.getContextPath() + "/login?role=admin");
            }
        }
    }
        
}
