package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.OrderLine;
import Util.Bottom;
import Util.Top;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;


public class DataMapper {

    public static ArrayList<Top> retrieveToppings() throws LoginSampleException {

        try {
            ArrayList<Top> toppings = new ArrayList<>();
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM topings ";
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

    public static ArrayList<Bottom> retrieveBottoms() throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM bottom ";
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

    public static ArrayList<OrderLine> GetAllOrdersLine(int orderId) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT ordrer.id, users.email, topings.name as top, bottom.name as bottom, bottom.price + topings.price as pris, cupcakes.antal " +
                    "From((((ordrer " +
                    "Inner join users on ordrer.user_id=users.id) " +
                    "inner join cupcakes on cupcakes.order_id=ordrer.id) " +
                    "inner join topings on Cupcakes.top_id=topings.id) " +
                    "inner join bottom on Cupcakes.bottom_id=bottom.id) where ordrer.id=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setDouble(1, orderId);
            ResultSet rs = ps.executeQuery();
            ArrayList<OrderLine> orderLines = new ArrayList<>();
            while (rs.next()) {
                int id = rs.getInt("id");
                String email = rs.getString("email");
                String top = rs.getString("top");
                String bottom = rs.getString("bottom");
                double total = rs.getDouble("pris");
                int antal = rs.getInt("antal");
                OrderLine orderLine = new OrderLine(id, email, top, bottom, total, antal);
                orderLines.add(orderLine);
            }
            Collections.reverse(orderLines);
            return orderLines;
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Order> GetAllOrders() throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT ordrer.id, ordrer.betalt, ordrer.pris, users.email From (ordrer Inner join users on ordrer.user_id=users.id) ;";
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();
            ArrayList<Order> orders = new ArrayList<>();
            while (rs.next()) {
                int id = rs.getInt("id");
                String email = rs.getString("email");
                double pris = rs.getDouble("pris");
                boolean status = rs.getBoolean("betalt");
                Order order = new Order(id, email, pris, status);
                orders.add(order);
            }
            return orders;
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }
    }






