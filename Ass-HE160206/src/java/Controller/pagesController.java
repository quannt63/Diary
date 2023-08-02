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
import java.sql.Date;

/**
 *
 * @author Trung Quan
 */
public class pagesController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getParameter("mod") != null && req.getParameter("mod").equals("1")) {
            HttpSession session = req.getSession();
            session.setAttribute("account", null);
            req.getRequestDispatcher("coverPage.jsp").forward(req, resp);
        }
        resp.sendRedirect("home.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Check đã login hay chưa
        HttpSession session = req.getSession();
        if (session.getAttribute("account") == null) {
            req.setAttribute("error", "<script>alert('Login to continue!!!');</script>");
            req.setAttribute("checkLogin", true);
            req.getRequestDispatcher("coverPage.jsp").forward(req, resp);
        }
        String page = req.getParameter("page");

        if (page.equals("Home")) {
            req.getRequestDispatcher("home.jsp").forward(req, resp);
        }
        if (page.equals("DailyNote")) {
            req.getRequestDispatcher("diary.jsp").forward(req, resp);
        }
        if(page.equals("TodoList")){
            req.getRequestDispatcher("todoList.jsp").forward(req, resp);
        }
        if (page.equals("Account")) {
            req.getRequestDispatcher("account.jsp").forward(req, resp);
        }
    }

}
