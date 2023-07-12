package com.cac.conferencias.controllers;

import com.cac.conferencias.util.DBUtil;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;
import java.sql.*;

@WebServlet(name = "login", value = "/login")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String requestEmail = request.getParameter("email");
        String requestPassword = request.getParameter("password");
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;

        try {
            Connection con = DBUtil.getConnection();

            final String QUERY = "SELECT * FROM users WHERE email = ?";
            assert con != null;
            PreparedStatement ps = con.prepareStatement(QUERY);
            ps.setString(1, requestEmail);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                if (BCrypt.checkpw(requestPassword, rs.getString("password"))) {
                    session.setAttribute("email", rs.getString("email"));
                    session.setAttribute("name", rs.getString("name"));
                    dispatcher = request.getRequestDispatcher("index.jsp");
                } else {
                    request.setAttribute("status", "failed");
                    dispatcher = request.getRequestDispatcher("login.jsp");
                }
            } else {
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("login.jsp");
            }

            dispatcher.forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
