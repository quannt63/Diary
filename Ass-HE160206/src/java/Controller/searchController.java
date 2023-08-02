/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.DailyNote;
import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author Trung Quan
 */
public class searchController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("account") == null) {
            req.setAttribute("error", "<script>alert('Login to continue!!!');</script>");
            req.setAttribute("checkLogin", true);
            req.getRequestDispatcher("coverPage.jsp").forward(req, resp);
        }
        User u = (User) session.getAttribute("account");
        
        String date = req.getParameter("date");
        String weather = req.getParameter("weather");
        String energy = req.getParameter("energy");
        String feeling = req.getParameter("feeling");
        String highlight = req.getParameter("highlight");
        String memories = req.getParameter("memories");
        String achievements = req.getParameter("achievements");
        String problems = req.getParameter("problems");
        String gratefull = req.getParameter("gratefull");
        String nextDay = req.getParameter("nextDay");

        DailyNote note = new DailyNote(u.getAccount(), date, weather, energy, feeling, highlight, memories, achievements, problems, gratefull, nextDay);
        
        boolean check=note.check();
        if(!check){
            note.add();
            
        }else{
            if(req.getParameter("diary-btn-save")!=null)
                note.update(u.getAccount());
        }
        note.getInfor();
        req.setAttribute("note", note);
        req.getRequestDispatcher("diary.jsp").forward(req, resp);
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
        req.getRequestDispatcher("diary.jsp").forward(req, resp);
    }

}
