package Servlet.SuperAdmin;

import Controllers.CategorieController;
import Entity.Categorie;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name ="CategoriesServlet", value ="/list-categories")
public class CategorieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategorieController categorieController = new CategorieController();
        List<Categorie> categories = categorieController.getAllCategorie();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("./Views/SuperAdmin/CategorieSuperAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nom = request.getParameter("nom");
        CategorieController categorieController = new CategorieController();
        categorieController.addCategorie(nom);
    }
}
