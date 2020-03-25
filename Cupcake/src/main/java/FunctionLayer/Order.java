package FunctionLayer;

public class Order {
    private int id;
    private String email;
    private double pris;
    private boolean status;

    public Order(int id, String email, double pris, boolean status) {
        this.id = id;
        this.email = email;
        this.status = status;
        this.pris = pris;
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

    public double getPris() {
        return pris;
    }

    public boolean getStatus() {
        return status;
    }

}