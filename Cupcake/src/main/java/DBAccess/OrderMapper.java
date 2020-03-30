package DBAccess;

import FunctionLayer.LoginSampleException;

import java.sql.*;

public class OrderMapper {

    public static int createOrdrer(int userId, double price) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO ordrer VALUES(null,?,?, false);";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, userId);
            ps.setDouble(2, price);
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            return id;
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static void createOrdrerLine(int orderId, int top, int bottom, int antal) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "insert into Cupcakes Values(?,?,?,?);";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, orderId);
            ps.setInt(2, top);
            ps.setInt(3, bottom);
            ps.setInt(4, antal);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }

    public static void updateMoney(double newSaldo, int userId) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "UPDATE users SET money = ? WHERE id = ?; ";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setDouble(1, newSaldo);
            ps.setInt(2, userId);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }

    public static void updateBetaling(int orderId) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "UPDATE ordrer SET betalt= !betalt WHERE id=?;";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, orderId);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }

    public static void sletOrder(int orderId){
        try {
            Connection con = Connector.connection();
            String SQL = "DELETE FROM Cupcake.ordrer WHERE id=?;";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, orderId);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }

    public static void sletOrderLine(int orderId){
        try {
            Connection con = Connector.connection();
            String SQL = "DELETE FROM Cupcake.cupcakes WHERE order_id=?;";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, orderId);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }
}
