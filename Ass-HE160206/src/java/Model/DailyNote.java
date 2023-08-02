/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Trung Quan
 */
public class DailyNote {
    private String account, date, weather, energy, feeling, highlight;
    private String memories, achiverment, problem, gratefull, nextDay;

    public DailyNote() {
        connect();
    }

    public DailyNote(String account, String date) {
        this.account = account;
        this.date = date;
        connect();
    }

    public DailyNote(String account, String date, String weather, String energy, 
            String feeling, String highlight, String memories, 
            String achiverment, String problem, String gratefull, String nextDay) {
        this.account = account;
        this.date = date;
        this.weather = weather;
        this.energy = energy;
        this.feeling = feeling;
        this.highlight = highlight;
        this.memories = memories;
        this.achiverment = achiverment;
        this.problem = problem;
        this.gratefull = gratefull;
        this.nextDay = nextDay;
        connect();
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getWeather() {
        return weather;
    }

    public void setWeather(String weather) {
        this.weather = weather;
    }

    public String getEnergy() {
        return energy;
    }

    public void setEnergy(String energy) {
        this.energy = energy;
    }

    public String getFeeling() {
        return feeling;
    }

    public void setFeeling(String feeling) {
        this.feeling = feeling;
    }

    public String getHighlight() {
        return highlight;
    }

    public void setHighlight(String highlight) {
        this.highlight = highlight;
    }

    public String getMemories() {
        return memories;
    }

    public void setMemories(String memories) {
        this.memories = memories;
    }

    public String getAchiverment() {
        return achiverment;
    }

    public void setAchiverment(String achiverment) {
        this.achiverment = achiverment;
    }

    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }

    public String getGratefull() {
        return gratefull;
    }

    public void setGratefull(String gratefull) {
        this.gratefull = gratefull;
    }

    public String getNextDay() {
        return nextDay;
    }

    public void setNextDay(String nextDay) {
        this.nextDay = nextDay;
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

    public void getInfor() {
        try {
            String strSelect = "select * from DailyNote\n" +
                            "where account=? and [date]=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, account);
            pstm.setString(2, date);
            rs=pstm.executeQuery();
            while (rs.next()) {
                account = rs.getString(1);
                date = rs.getString(2);
                weather = rs.getString(3);
                energy = rs.getString(4);
                feeling = rs.getString(5);
                highlight = rs.getString(6);
                memories = rs.getString(7);
                achiverment = rs.getString(8);
                problem = rs.getString(9);
                gratefull = rs.getString(10);
                nextDay = rs.getString(11);
            }
        } catch (Exception e) {
            System.err.println("getUser: " + e.getMessage());
        }
    }

    public void add() {
        try {
            String strAdd = "insert into [DailyNote]\n"
                    + "values (?,?,?,?,?,?,?,?,?,?,?)";
            pstm = cnn.prepareStatement(strAdd);
            pstm.setString(1, account);
            pstm.setString(2, date);
            pstm.setString(3, weather);
            pstm.setString(4, energy);
            pstm.setString(5, feeling);
            pstm.setString(6, highlight);
            pstm.setString(7, memories);
            pstm.setString(8, achiverment);
            pstm.setString(9, problem);
            pstm.setString(10, gratefull);
            pstm.setString(11, nextDay);
            pstm.execute();
        } catch (Exception e) {
            System.err.println("add: " + e.getMessage());
        }
    }

    public boolean check() {
        try {
            String strSelect = "select * from [DailyNote] \n"
                    + "where account=? "
                    + "and [date]=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, account);
            pstm.setString(2, date);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.err.println("check: " + e.getMessage());
        }
        return false;
    }

    public void update(String account) {
        try {
            String strUpdate = "update DailyNote\n" +
                                "set weather=?, energy=?, feeling=?,\n" +
                                "	highlight=?, memorise=?, achiverment=?, problem=?, \n" +
                                "	gratefull=?, nextDay=?\n" +
                                "where account=? and [date]=?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(10, account);
            pstm.setString(11, date);
            pstm.setString(1, weather);
            pstm.setString(2, energy);
            pstm.setString(3, feeling);
            pstm.setString(4, highlight);
            pstm.setString(5, memories);
            pstm.setString(6, achiverment);
            pstm.setString(7, problem);
            pstm.setString(8, gratefull);
            pstm.setString(9, nextDay);
            pstm.execute();
        } catch (Exception e) {
            System.err.println("update: " + e.getMessage());
        }
    }
}
