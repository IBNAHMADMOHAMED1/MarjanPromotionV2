package dao;

import entity.Promotion;
import service.JpaService;

import java.util.List;

public class PromotionDao {
    private static final JpaService jpaService = JpaService.getInstance();
    private static Promotion entity = new Promotion();

    // get all promotions
    public List<Promotion> promotionByCategorie(int idCategorie) {
        return  jpaService.runInTransaction(entityManager -> entityManager
                .createNativeQuery("select * from promotion where categorie_id = " + idCategorie, Promotion.class)
                .getResultList());
    }

    // updateStatus
    public void updateStatus(int idPromotion, String status) {
        jpaService.runInTransaction(entityManager -> entityManager
                .createQuery("update Promotion set status = '" + status + "' where idpromotion = " + idPromotion)
                .executeUpdate());
    }

    // validatePromotion
    public void validatePromotion(int idPromotion) {
        jpaService.runInTransaction(entityManager -> entityManager
                .createQuery("update Promotion set isaccepted = true where idpromotion = " + idPromotion)
                .executeUpdate());
    }
}

