package DBAccess;

import FunctionLayer.LoginSampleException;
import Util.Bottom;
import Util.Top;
import java.util.ArrayList;

import java.sql.*;


public class DataMapper {

    public static ArrayList<Top> retrieveToppings() throws LoginSampleException {

        try {
            ArrayList<Top> toppings = new ArrayList<>();
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM cupcake.topings ";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                Double price = rs.getDouble("price");
                Top top = new Top(id, name, price);
                toppings.add(top);
            }
            return toppings;
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList retrieveBottoms() throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM cupcake.bottom ";
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();
            ArrayList<Bottom> bottoms = new ArrayList<>();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                Double price = rs.getDouble("price");
                Bottom bottom = new Bottom(id, name, price);
                bottoms.add(bottom);
            }
            return bottoms;
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

}