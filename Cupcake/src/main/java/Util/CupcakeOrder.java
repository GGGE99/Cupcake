package Util;

public class CupcakeOrder {

    private String top;
    private String bottom;
    private int antal;

    public CupcakeOrder(String top, String bottom, int antal) {
        this.top = top;
        this.bottom = bottom;
        this.antal = antal;
    }

    public String getBottom() {
        return bottom;
    }

    public int getAntal() {
        return antal;
    }

    public String getTop() {
        return top;
    }

    @Override
    public String toString() {
        return "Cupcake{" +
                "top='" + top + '\'' +
                ", bottom='" + bottom + '\'' +
                '}';
    }
}
