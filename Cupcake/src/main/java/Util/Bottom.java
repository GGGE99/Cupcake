package Util;


public class Bottom {

    private String name;
    private int id;
    private double price;

    public Bottom(int id, String name, Double price) {
        this.name = name;
        this.id = id;
        this.price = price;

    }
    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }
}
