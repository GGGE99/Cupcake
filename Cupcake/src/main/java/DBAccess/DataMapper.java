package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import Util.Bottom;
import Util.Top;
import java.util.ArrayList;

import java.sql.*;


public class DataMapper {

    public static ArrayList<Top> retriveToppings() throws LoginSampleException {

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
            return null;
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
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Order> GetAllOrders() throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT ordrer.id, users.email, topings.name, bottom.name, ordrer.pris " +
                    "From((((ordrer " +
                    "Inner join users on ordrer.user_id=users.id) " +
                    "inner join cupcakes on cupcakes.order_id=ordrer.id) " +
                    "inner join topings on Cupcakes.top_id=topings.id) " +
                    "inner join bottom on Cupcakes.bottom_id=bottom.id);";
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();
            ArrayList<Order> orders = new ArrayList<>();
            if (rs.next()) {
                int id = rs.getInt("int");
                String email = rs.getString("email");
                String top = rs.getString("top");
                String bottom = rs.getString("bottom");
                int total = rs.getInt("total");
                Order order = new Order(id, email, top, bottom, total);
                orders.add(order);
                preparedStatement.close();
            }
            return orders;
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());


        }
    }
    }
