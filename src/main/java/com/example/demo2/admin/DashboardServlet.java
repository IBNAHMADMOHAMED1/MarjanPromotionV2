package com.example.demo2.admin;

import controller.AdminVilleController;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "helloServlet", value = "/dashboard")
public class DashboardServlet extends HttpServlet {
    public static final String VIEW_RESPONSABLE = "/views/responsable/dashboard.jsp";
    public static final String VIEW_ADMIN = "/views/admin/dashboard.jsp";
    public static final String VIEW_ADMIN_CENTER = "/views/admin/center.jsp";
    public static final String VIEW_HOME = "/index.jsp";

    private static String action = "";

    public static String getAction() {
        return action;
    }
    public static void setAction(String action) {
        DashboardServlet.action = action;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        System.out.println("-------------hjh");
        HttpSession session = request.getSession();
        if (session.getAttribute("admin") != null) {
            this.getServletContext().getRequestDispatcher(VIEW_ADMIN).forward(request, response);
            String action = request.getParameter("action");
            setAction(action);

        } else {
            this.getServletContext().getRequestDispatcher(VIEW_HOME).forward(request, response);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = getAction();
        AdminVilleController ad = new AdminVilleController();
        System.out.println("action: " + action);
        if (action.equals("createAdminVille")) {
                String fullname = request.getParameter("fullname");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String ville = request.getParameter("ville");
                String[] details = {fullname, email, password, ville};
                ad.createAdminVille(details);
                response.sendRedirect("/action=admin_ville");
        }
    }

}
