package com.food;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/register")

public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)

            throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");

        String email = request.getParameter("email");

        String password = request.getParameter("password");

        String address = request.getParameter("address");

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
            "INSERT INTO users(name,email,password,address) VALUES(?,?,?,?)"
            );

            ps.setString(1, name);

            ps.setString(2, email);

            ps.setString(3, password);

            ps.setString(4, address);

            int i = ps.executeUpdate();

            if(i > 0) {

                response.sendRedirect("success.jsp");

            } else {

                out.println("Registration Failed");

            }

        } catch(Exception e) {

            out.println(e);

        }

    }
}