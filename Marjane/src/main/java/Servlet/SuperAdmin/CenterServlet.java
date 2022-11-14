package Servlet.SuperAdmin;

import Controllers.CentreController;
import Entity.Centre;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "getAllCenterServlet", value = "/all-centers")
public class CenterServlet extends HttpServlet {
    public static final String VUE = "/Views/SuperAdmin/all-centers.jsp";   // Views > SuperAdmin > CentreSuperAdmin.jsp

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Hello, World!");
        CentreController centreController = new CentreController();
        List<Centre> centres = centreController.getAllCentres();
        centres.forEach(centre -> System.out.println(centre.getNomCentre()));

        request.setAttribute("centres", centres);
       request.getRequestDispatcher(VUE).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // AjouterCentre

        String nom = request.getParameter("nom");
        String ville = request.getParameter("ville");

        CentreController centreController = new CentreController();
        Boolean is = centreController.CreateCentre(nom, ville);

    }
}
