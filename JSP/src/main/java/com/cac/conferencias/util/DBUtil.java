package com.cac.conferencias.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    private static final String url = "jdbc:postgresql://localhost:5432/Conferencias";
    private static final String username = "postgres";
    private static final String password = "admin";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }
}

