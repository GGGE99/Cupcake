package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import java.sql.*;
import java.util.ArrayList;

/**
 * The purpose of UserMapper is to...
 *
 * @author kasper
 */
public class UserMapper {

    public static void createUser(User user) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO Users (email, password, role, money) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getRole());
            ps.setDouble(4, user.getMoney());
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            user.setId(id);

        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    //ad
    public static User login(String email, String inputPassword) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT id, role, password, money FROM users WHERE email=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String role = rs.getString("role");
                int id = rs.getInt("id");
                String password = rs.getString("password");
                double money = rs.getDouble("money");
                System.out.println(password);
                if (inputPassword.equals(password)) {
                    User user = new User(email, password, role, money);
                    user.setId(id);
                    return user;
                } else {
                    return null;
                }
            } else {
                User user = new User(email, null, "ukendtMail", 0);

                return user;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            return null;
        }
    }

    public static ArrayList<User> GetAllUsers() throws LoginSampleException {
        ArrayList<User> userList = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM users";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String email = rs.getString("email");
                String password = rs.getString("password");
                String role = rs.getString("role");
                int money = rs.getInt("money");
                int id = rs.getInt("id");
                User user = new User(email, password, role, money, id);
                userList.add(user);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
        return userList;
    }

    public static void addMoney(double newSaldo, String email) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "UPDATE users SET money = money + ? WHERE email = ?; ";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setDouble(1, newSaldo);
            ps.setString(2, email);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }

}
