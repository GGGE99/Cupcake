package FunctionLayer;

public class Tag {

    private int id;
    private int slope;
    private String type;

    public Tag(int id, int slope, String type) {
        this.id = id;
        this.slope = slope;
        this.type = type;
    }

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public int getSlope() { return slope; }

    public void setSlope(int slope) { this.slope = slope; }

    public String getType() { return type; }

    public void setType(String type) { this.type = type; }
}
