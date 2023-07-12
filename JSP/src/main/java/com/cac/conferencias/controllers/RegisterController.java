package com.cac.conferencias.controllers;

import com.cac.conferencias.util.DBUtil;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet(name="register", value="/register")
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String requestName = request.getParameter("name");
        String requestSurname = request.getParameter("surname");
        String requestEmail = request.getParameter("email");
        String requestPassword = request.getParameter("password");
        String clientSince = ZonedDateTime.now(
                ZoneId.of("GMT-3")).format(DateTimeFormatter.ISO_LOCAL_DATE_TIME);

        RequestDispatcher dispatcher = null;
        Connection con = null;

        try {
            con = DBUtil.getConnection();

            String hashedPassword = BCrypt.hashpw(requestPassword, BCrypt.gensalt());

            final String STATEMENT = "INSERT INTO users (name, surname, email, password, user_since)" +
                    " VALUES (?, ?, ?, ?, ?)";
            assert con != null;
            PreparedStatement pst = con.prepareStatement(STATEMENT);
            pst.setString(1, requestName);
            pst.setString(2, requestSurname);
            pst.setString(3, requestEmail);
            pst.setString(4, hashedPassword);
            pst.setString(5, clientSince);

            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("login.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }

            dispatcher.forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

