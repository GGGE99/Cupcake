package FunctionLayer;

public class Order {
    private int id;
    private String email;
    private String topping;
    private String bottom;
    private double total;
    private int antal;

    public Order(int id, String email, String topping, String bottom, double total, int antal) {
        this.id = id;
        this.email = email;
        this.topping = topping;
        this.bottom = bottom;
        this.total = total;
        this.antal = antal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTopping() {
        return topping;
    }

    public void setTopping(String topping) {
        this.topping = topping;
    }

    public String getBottom() {
        return bottom;
    }

    public void setBottom(String bottom) {
        this.bottom = bottom;
    }

    public int getAntal() {
        return antal;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}
