package FunctionLayer;

public class Skur {
    private int id;
    private int length;
    private int width;
    private String beklædning;

    public Skur(int id, int length, int width, String beklædning) {
        this.id = id;
        this.length = length;
        this.width = width;
        this.beklædning = beklædning;
    }

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public int getLength() { return length; }

    public void setLength(int length) { this.length = length; }

    public int getWidth() { return width; }

    public String getBeklædning() { return beklædning; }

    public void setBeklædning(String beklædning) { this.beklædning = beklædning; }

    public void setWidth(int width) { this.width = width; }
}
