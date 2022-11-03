package com.example.demo2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "helloServlet", value = "/")
public class HomeServlet  extends HttpServlet {
    public static final String VIEW_RESPONSABLE = "/views/responsable/dashboard.jsp";
    public static final String VIEW_ADMIN = "/views/admin/dashboard.jsp";
    public static final String VIEW_ADMIN_CENTER = "/views/admin/center.jsp";
    public static final String VIEW_HOME = "index.jsp";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // check if admin is logged in or not
        System.out.println("hihh");
        HttpSession session = request.getSession();
        if (session.getAttribute("admin") != null) {
            this.getServletContext().getRequestDispatcher(VIEW_ADMIN).forward(request, response);
        } else {
            this.getServletContext().getRequestDispatcher(VIEW_HOME).forward(request, response);
        }
    }


}
