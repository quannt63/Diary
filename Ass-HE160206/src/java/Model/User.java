/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

/**
 *
 * @author Trung Quan
 */
public class User {

    private String account, password, fistName, lastName, gender, phone, mail, address, dob;

    public User() {
        connect();
    }

    public User(String account, String password) {
        this.account = account;
        this.password = password;
        connect();
    }

    public User(String account, String password, String fistName, String lastName, String phone) {
        this.account = account;
        this.password = password;
        this.fistName = fistName;
        this.lastName = lastName;
        this.phone = phone;
        connect();
    }

    public User(String account, String password, String fistName, String lastName, String gender, String phone, String address, String dob) {
        this.account = account;
        this.password = password;
        this.fistName = fistName;
        this.lastName = lastName;
        this.gender = gender;
        this.phone = phone;
        this.address = address;
        this.dob = dob;
        connect();
    }

    public User(String account, String password, String fistName, String lastName, String gender, String phone, String mail, String address, String dob) {
        this.account = account;
        this.password = password;
        this.fistName = fistName;
        this.lastName = lastName;
        this.gender = gender;
        this.phone = phone;
        this.mail = mail;
        this.address = address;
        this.dob = dob;
        connect();
    }

    public User(String account) {
        this.account = account;
        connect();
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFistName() {
        return fistName;
    }

    public void setFistName(String fistName) {
        this.fistName = fistName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public boolean checkUser() {
        try {
            String strSelect = "select * from [User] "
                    + "where account=? "
                    + "and password=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, account);
            pstm.setString(2, password);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.err.println("checkUser: " + e.getMessage());
        }
        return false;
    }

    //Khai báo các thành phần xử lý DB
    Connection cnn;//kết nối DB
    Statement stm;//thực thi câu lệnh sql
    PreparedStatement pstm;
    ResultSet rs; //Lưu trữ và xử lý dữ liệu

    private void connect() {
        try {
            cnn = (new DBContext()).connection;
            if (cnn != null) {
                System.out.println("Connect success");
            } else {
                System.out.println("Connect fail");
            }
        } catch (Exception e) {

        }
    }

    public void addUser() {
        try {
            String strAdd = "insert into [User](account, password, fistName, lastName, gender, phone, address, dob)\n"
                    + "values (?,?,?,?,?,?,?,?)";
            pstm = cnn.prepareStatement(strAdd);
            pstm.setString(1, account);
            pstm.setString(2, password);
            pstm.setString(3, fistName);
            pstm.setString(4, lastName);
            pstm.setString(5, gender);
            pstm.setString(6, phone);
            pstm.setString(7, address);
            pstm.setString(8, dob);
            pstm.execute();
        } catch (Exception e) {
            System.err.println("addUser: " + e.getMessage());
        }
    }

    public void getProfile() {
        try {
            String strSelect = "select * from [User] "
                    + "where account='" + account + "' ";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                account = rs.getString(1);
                password = rs.getString(2);
                fistName = rs.getString(3);
                lastName = rs.getString(4);
                gender = rs.getString(5);
                phone = rs.getString(6);
                mail = rs.getString(7);
                address = rs.getString(8);
                dob = rs.getString(9);
            }
        } catch (Exception e) {
            System.err.println("getUser: " + e.getMessage());
        }
    }

    public void updateUser() {
        try {
            String strUpdate = "update [User] \n" +
                                "set fistName=?, lastName=?, gender=?, phone=?, mail=?, address=?, dob=?\n" +
                                "where account=?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, fistName);
            pstm.setString(2, lastName);
            pstm.setString(3, gender);
            pstm.setString(4, phone);
            pstm.setString(5, mail);
            pstm.setString(6, address);
            pstm.setString(7, dob);
            pstm.setString(8, account);
            pstm.execute();
        } catch (Exception e) {
            System.err.println("updateUser: " + e.getMessage());
        }
    }

    public void changePass( String newPass) {
        try {
            String strUpdate = "update [User] \n" +
                                "set password=?\n" +
                                "where account=?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, newPass);
            pstm.setString(2, account);
            pstm.execute();
        } catch (Exception e) {
            System.err.println("changePass: " + e.getMessage());
        }
    }

}
