package DBAccess;

import FunctionLayer.Carport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Datamapper {

    public static ArrayList<Integer> GetHeight() {
        ArrayList<Integer> allHeight = new ArrayList<Integer>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT height FROM `height`;";
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int height = rs.getInt("height");
                allHeight.add(height);
            }
            return allHeight;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
    public static ArrayList<Integer> GetLength() {
        ArrayList<Integer> allLength = new ArrayList<Integer>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT length FROM `length`;";
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int length = rs.getInt("length");
                allLength.add(length);
            }
            return allLength;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ArrayList<Integer> GetWidth() {
        ArrayList<Integer> allWidth = new ArrayList<Integer>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT width FROM `width`;";
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int width = rs.getInt("width");
                allWidth.add(width);
            }
            return allWidth;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
    public static ArrayList<Integer> GetSlope() {
        ArrayList<Integer> allSlope = new ArrayList<Integer>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT slope FROM `slope`;";
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int slope = rs.getInt("slope");
                allSlope.add(slope);
            }
            return allSlope;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
    public static ArrayList<String> GetAllRoof() {
        ArrayList<String> allRoofTypes = new ArrayList<String>();
        String roof;
        try {
            Connection con = Connector.connection();
            String SQL = "Select roof_type.name, roof_color.color" +
                    "from ((roof" +
                    "inner join roof_type on roof.type_id = roof_type.id)" +
                    "inner join roof_color on roof.color_id = roof_color.id);";
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String type = rs.getString("roof_type");
                String color = rs.getString("roof_color");
                roof = type + color;
                allRoofTypes.add(type);
            }
            return allRoofTypes;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}
