package FunctionLayer;

public class Order {
    private int id;
    private String email;
    private String topping;
    private String bottom;
    private int total;

    public Order(int id, String email, String topping, String bottom, int total) {
        this.id = id;
        this.email = email;
        this.topping = topping;
        this.bottom = bottom;
        this.total = total;
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

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}
