/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Trung Quan
 */
public class loginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Nhận thông tin từ Client
        String account = req.getParameter("account");
        String password = req.getParameter("pass");
        Boolean checkLogin = true;
        //Trả về kết quả
        if (req.getParameter("login").equals("Login")) {
            User u = new User(account, password);
            boolean check = u.checkUser();
            if (check) {
                u.getProfile();
                //Lưu thông tin login vào session
                HttpSession session = req.getSession();
                session.setAttribute("account", u);

                req.getRequestDispatcher("home.jsp").forward(req, resp);
            } else {
                req.setAttribute("error", "<script>alert('Username or password is incorrect');</script>");
                req.setAttribute("checkLogin", checkLogin);
                req.getRequestDispatcher("coverPage.jsp").forward(req, resp);
            }

        } else {
            checkLogin = !req.getParameter("login").equals("Register");
            req.setAttribute("checkLogin", checkLogin);
            req.getRequestDispatcher("coverPage.jsp").forward(req, resp);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("coverPage.jsp");
    }

}
