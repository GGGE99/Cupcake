package PresentationLayer;

public class Pris {

    private static double pris = 0.0;

    public static void samletPris(double top, double bund, int antal) {
        pris += (top + bund) * antal;
    }

    public static double getPris(){
        double tempPris = pris;
        pris = 0.0;
        return tempPris;
    }
}
