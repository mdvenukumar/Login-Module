package com.vk.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class dbCheck {
    public boolean check(String uname, String pass) {
        boolean isValid = false;

        try {
            Connection con = DatabaseConnection.initializeDatabase();
            String query = "SELECT * FROM login WHERE uname = ? AND pass = ?";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, uname);
            preparedStatement.setString(2, pass);

            ResultSet resultSet = preparedStatement.executeQuery();
            isValid = resultSet.next(); // Returns true if a record is found

            resultSet.close();
            preparedStatement.close();
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return isValid;
    }
}
