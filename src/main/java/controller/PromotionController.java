package controller;

import dao.HibernateDao;
import dao.PromotionDao;
import entity.Promotion;
import service.JpaService;
import utils.Animation;
import utils.Sout;

import java.util.Date;
import java.util.List;

public class PromotionController extends HibernateDao<Promotion> {
    private static final JpaService jpaService = JpaService.getInstance();
    public PromotionController() {
        setClazz(Promotion.class);
    }

    // create promotion
    public Promotion createPromotion(String nom, String dateDebut, String dateFin, Double discount, int idCategorie ) {
        Promotion promotion = new Promotion();
        promotion.setCategorieId(idCategorie);
        promotion.setNompromotion(nom);
        promotion.setIsaccepted(false);
        promotion.setEnddate(dateFin);
        promotion.setStartdate(dateDebut);
        promotion.setRatio(discount);
        return create(promotion);
    }

    // getPromotionByCategorie
    public List<Promotion>  getPromotionByCategorie(int idCategorie) {
        PromotionDao promotionDao = new PromotionDao();
        Animation.run(1000);
        List<Promotion> p = promotionDao.promotionByCategorie(idCategorie);
        getStatus(p, promotionDao);
        return p ;
    }

    // validatePromotion
    public void validatePromotion(int idPromotion) {
        validatePromotion(idPromotion);
    }

    // getStatus check if expired
    public void getStatus(List<Promotion>  promotion,PromotionDao promotionDao) {
        Date date = new Date();
        promotion.forEach(promotion1 -> {
        if (promotion != null) {
            System.out.println("Promotion : " + promotion1.getNompromotion());
            String endDate = promotion1.getEnddate();
            String startDate = promotion1.getStartdate();
            Boolean isAccepted = promotion1.getIsaccepted();
            System.out.println(new Date(endDate));

            if (date.after(new Date(endDate))) {
                System.out.println("-----------------");
                Sout.sout("blue", promotion1.getNompromotion() + " This promotion is expired");
                System.out.println("-----------------");
                promotionDao.updateStatus(promotion1.getIdpromotion(), "expired");
            }
            if (date.before(new Date(startDate))) {
                System.out.println("-----------------");
                Sout.sout("red", "This promotion is not started yet");
                System.out.println("-----------------");
                promotionDao.updateStatus(promotion1.getIdpromotion(), "En attente");
            }
            if (isAccepted && date.after(new Date(startDate)) && date.before(new Date(endDate))) {
                System.out.println("-----------------");
                Sout.sout("green", "This promotion is active");
                System.out.println("-----------------");
                promotionDao.updateStatus(promotion1.getIdpromotion(), "active");
            }
        }
        });
    }
}
