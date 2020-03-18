package DBAccess;

import FunctionLayer.LoginSampleException;
import Util.Bottom;
import Util.Top;
import java.util.ArrayList;

import java.sql.*;


public class DataMapper {

    public static ArrayList retriveToppings() throws LoginSampleException{
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT id, name, price FROM toppings ";
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();
            ArrayList<Top> toppings = new ArrayList<>();
            if (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                Double price = rs.getDouble("price");
                Top top = new Top(id, name, price);
                toppings.add(top);
                preparedStatement.close();
            }
            return toppings;
        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }

        public static ArrayList retriveBottoms() throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT id, name, price FROM Bottom ";
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();
            ArrayList<Bottom> bottoms = new ArrayList<>();
            if (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                Double price = rs.getDouble("price");
                Bottom bottom = new Bottom(id, name, price);
                bottoms.add(bottom);
                preparedStatement.close();
            }
            return bottoms;
        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }

}