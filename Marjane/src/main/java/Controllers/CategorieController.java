package Controllers;

import DAO.Imple.CategorieDao;
import Entity.Categorie;

import javax.xml.crypto.Data;
import java.sql.Timestamp;
import java.util.List;

public class CategorieController {

    private static final CategorieDao categorieDao = new CategorieDao();

    public static List<Categorie> getAllCategorie() {
        return categorieDao.all();
    }

    public static void addCategorie(String nom) {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        Categorie categorie = new Categorie();
        categorie.setNomCategorie(nom);
        categorie.setCreatedAt(timestamp);
        categorie.setUpdatedAt(timestamp);
        categorieDao.save(categorie);
    }

}
