package Util;

public class CupcakeOrder {

    private int top;
    private int bottom;
    private int antal;

    public CupcakeOrder(int top, int bottom, int antal) {
        this.top = top;
        this.bottom = bottom;
        this.antal = antal;
    }

    public int getBottom() {
        return bottom;
    }

    public int getAntal() {
        return antal;
    }

    public int getTop() {
        return top;
    }

    public void setAntal(int antal) {
        this.antal = antal;
    }

    @Override
    public String toString() {
        return "Cupcake{" +
                "top='" + top + '\'' +
                ", bottom='" + bottom + '\'' +
                '}';
    }
}
