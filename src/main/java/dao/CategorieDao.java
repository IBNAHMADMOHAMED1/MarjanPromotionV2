package dao;

import entity.Categorie;
import service.JpaService;

public class CategorieDao {
    private static final JpaService jpaService = JpaService.getInstance();
    private static Categorie entity = new Categorie();

    // get all categories
    public Categorie categorieByResponsable(int idResponsable) {
        return (Categorie) jpaService.runInTransaction(entityManager -> entityManager
                .createNativeQuery("select * from categorie where idresponsable = " + idResponsable, Categorie.class)
                .getResultList().stream().findFirst().orElse(null));
    }
}
