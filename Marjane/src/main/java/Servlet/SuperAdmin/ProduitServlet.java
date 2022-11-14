package Servlet.SuperAdmin;

import Controllers.ProduitController;
import Entity.Produit;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;


public class ProduitServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProduitController produitController = new ProduitController();
        List<Produit> produites = produitController.getAllProduits();
        request.setAttribute("produits", produites);
        request.getRequestDispatcher("./Views/SuperAdmin/ProduitSuperAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
