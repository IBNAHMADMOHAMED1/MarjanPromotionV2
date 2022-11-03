package core;

import controller.PersonneController;
import entity.Personne;
import service.JpaService;

import java.util.List;
import java.util.Scanner;

public class Application {
    private static final JpaService jpaService = JpaService.getInstance();
    private static PersonneController personneController = new PersonneController();

    public static void main(String[] args) {

        menu();

    }

    // print persone data
    public static void printPersonData() {
        List<Personne> personneList =jpaService
        .runInTransaction(entityManager ->
            entityManager.createQuery("select p from Personne p", Personne.class)
                    .getResultList());
        personneList.stream()
                .map(personne -> "Full Name: " + personne.getFullname() + " Email" + personne.getEmail())
                .forEach(System.out::println);

    }

    public static void menu() {
        String[] details = new String[2];
        Scanner sc = new Scanner(System.in);
        System.out.println("1- Login As Admin General");
        System.out.println("2- Login As Admin Ville");
        System.out.println("3- Login As Admin Centre");
        System.out.println("4- Login As Responsable categorie");
        while (true) {
            int choice = sc.nextInt();
            switch (choice) {
                case 1:
                    Personne p = personneController.checkToken("adminGeneral");
                    if (p != null) {
                        System.out.println("Welcome 1 " + p.getFullname());
                         Menu.adminGeneralMenu();
                    } else auth("adminGeneral");
                    break;
                case 2:
                    Personne p1 = personneController.checkToken("adminVille");
                    if (p1 != null) {
                        System.out.println("Welcome 2 " + p1.getFullname());
                        Menu.adminVilleMenu();
                    } else auth("adminVille");

                    break;
                case 3:
                    Personne p2 = personneController.checkToken("adminCentre");
                    if (p2 != null) {
                        System.out.println("Welcome 3 " + p2.getFullname());
                        Menu.adminCentreMenu(p2.getId());
                    } else auth("adminCentre");
                    break;
                case 4:
                    Personne p3 = personneController.checkToken("responsable");
                    if (p3 != null) {
                        System.out.println("Welcome 4 " + p3.getFullname());
                        Menu.responsableMenu(p3.getId());
                    } else auth("responsable");

                    break;
                default:
                    System.out.println("Invalid choice");
            }
        }

    }

    private static void auth(String tableJoin) {
        String[] details;
        System.out.println("You need to insert your email and password");
        details = getLoginDetails("Login As " + tableJoin);
        personneController.login(details[0], details[1], tableJoin);
        if (personneController.getIsLogin()) {
            personneController.storeToken(details, tableJoin);
            if (tableJoin.equals("adminGeneral")) Menu.adminGeneralMenu();
            else if (tableJoin.equals("adminVille")) Menu.adminVilleMenu();
            else if  (tableJoin.equals("adminCentre")) {
                Personne p2 = personneController.checkToken("adminCentre");
                Menu.adminCentreMenu(p2.getId());
            }
            else if (tableJoin.equals("responsable")) {
                Personne p3 = personneController.checkToken("responsable");
                Menu.responsableMenu(p3.getId());
            }

        }
        else auth(tableJoin);
    }

    public static String[] getLoginDetails(String role) {
        System.out.println("Welcome " + role);
       while (true) {

            Scanner sc = new Scanner(System.in);
            System.out.println("Enter your email");
            String email = sc.nextLine();
            System.out.println("Enter your password");
            String password = sc.nextLine();
            if (email.isEmpty() || password.isEmpty()) {
                System.out.println("Please enter your email and password");
            } else {
                return new String[]{email, password};
            }
        }


    }

}
