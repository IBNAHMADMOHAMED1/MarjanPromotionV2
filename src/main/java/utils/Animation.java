package utils;

public class Animation {

    // run animation for a given time in milliseconds (ms) ( ### )
    public static void run(int ms) {
        try {
           for (int i = 0; i < 10; i++) {
                System.out.print("\r" + "Loading" + new String(new char[i]).replace("\0", "."));
               Thread.sleep(ms);
           }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
