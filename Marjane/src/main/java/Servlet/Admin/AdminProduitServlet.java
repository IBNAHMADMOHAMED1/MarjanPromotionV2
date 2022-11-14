package Servlet.Admin;

import Controllers.ProduitController;
import Entity.Produit;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminProduitServlet", value = "/list-produits")
public class AdminProduitServlet extends HttpServlet {
    public static final String VUE = "/Views/Admin/ProduitAdmin.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProduitController produitController = new ProduitController();
        List<Produit> produits = produitController.getAllProduits();
        request.setAttribute("produits", produits);
        request.getRequestDispatcher(VUE).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
