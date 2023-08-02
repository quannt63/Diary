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
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Trung Quan
 */
public class registerController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Check đã login hay chưa
        HttpSession session = req.getSession();
        User u = (User) session.getAttribute("account");
        if (session.getAttribute("account") == null) {
            req.setAttribute("error", "<script>alert('Login to continue!!!');</script>");
            req.setAttribute("checkLogin", true);
            req.getRequestDispatcher("coverPage.jsp").forward(req, resp);
        }
//        resp.sendRedirect("register.jsp");

        //Change PassWord
        if (req.getParameter("mod") != null && req.getParameter("mod").equals("2")) {
            String account = req.getParameter("account");
            String oldPass = req.getParameter("oldPass");
            String newPass = req.getParameter("newPass");
            String confirm = req.getParameter("confirm");
            u = new User(account, oldPass);
            if (req.getParameter("btn-change").equals("Save")) {
                if (u.checkUser() && newPass.equals(confirm)) {
                    u.changePass(newPass);
                } else {
                    req.setAttribute("error", "<script>alert('Re-Password incorrect!!!');</script>");
                }
            }
            req.getRequestDispatcher("account.jsp").forward(req, resp);
        }

        //Register
        String account = req.getParameter("account");
//        String password = req.getParameter("pass");
        String fistName = req.getParameter("fistName");
        String lastName = req.getParameter("lastName");
//        String gender = req.getParameter("gender");
        String phone = req.getParameter("phone");
//        String address = req.getParameter("address");
//        String dob = req.getParameter("dob");
        if (req.getParameter("mod") != null && req.getParameter("mod").equals("1")) {
            String password = req.getParameter("pass");
            String rePassword = req.getParameter("re-pass");
            u = new User(account, password, fistName, lastName, phone);
            if (req.getParameter("register").equals("Submit")) {
                if (account.isEmpty() || password.isEmpty() || rePassword.isEmpty()
                        || fistName.isEmpty() || lastName.isEmpty() || phone.isEmpty()) {
                    req.setAttribute("error", "<script>alert('Have attribute empty!!!');</script>");
                } else {
                    if (!password.equals(rePassword)) {
                        req.setAttribute("error", "<script>alert('Re-Password incorrect!!!');</script>");
                    } else {
                        if (!u.checkUser()) {
                            u.addUser();
                            req.getRequestDispatcher("coverPage.jsp").forward(req, resp);
                        } else {
                            req.setAttribute("error", "<script>alert('Account already exist!!!');</script>");
                        }
                    }
                }
                req.setAttribute("checkLogin", false);
                req.getRequestDispatcher("coverPage.jsp").forward(req, resp);
            }
            req.getRequestDispatcher("coverPage.jsp").forward(req, resp);
        }
        String disProfile = "";
        String disChangePass = "";

        //Update information
        if (req.getParameter("btn-change").equals("Update")) {

            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();
            String currentDate = formatter.format(date);
            String gender = req.getParameter("gender");
            String mail = req.getParameter("mail");
//            System.out.println(mail.matches("^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\\\.[A-Za-z0-9]+)$"));
            String address = req.getParameter("address");
            String dob = req.getParameter("dob");
            u = new User(account, u.getPassword(), fistName, lastName, gender, phone, mail, address, dob);
            if (fistName.isEmpty() || lastName.isEmpty() || phone.isEmpty()
                    || gender.isEmpty() || mail.isEmpty() || address.isEmpty() || dob.isEmpty()) {
                req.setAttribute("error", "<script>alert('Have attribute empty!!!');</script>");
            } else {
//                if (!mail.matches("^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\\\.[A-Za-z0-9]+)$")) {
//                    req.setAttribute("error", "<script>alert('Mail incorrect format!!!');</script>");
//                } else {
                    if (currentDate.compareTo(dob) < 0) {
                        req.setAttribute("error", "<script>alert('Birthdate must less than now!!!');</script>");
                    } else {
                        u.updateUser();
                    }
                }
//            }

            req.setAttribute("disProfile", "block");
            req.setAttribute("disChangePass", "none");
        }
        if (req.getParameter("btn-change").equals("Change Password")) {
            req.setAttribute("disProfile", "none");
            req.setAttribute("disChangePass", "block");
        }
        req.getRequestDispatcher("account.jsp").forward(req, resp);
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
        resp.sendRedirect("register.jsp");
    }

}
