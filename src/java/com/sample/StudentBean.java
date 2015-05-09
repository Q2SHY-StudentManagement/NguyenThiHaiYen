/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author abc
 */
public class StudentBean {
    
    private int StuID;

    private String Name;

    private String DoB;

    private String Gender;
    
    private String HomeTown;
    
    private String Phone;

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }


    public String getHomeTown() {
        return HomeTown;
    }

    public void setHomeTown(String HomeTown) {
        this.HomeTown = HomeTown;
    }


    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getDoB() {
        return DoB;
    }

    public void setDoB(String DoB) {
        this.DoB = DoB;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getStuID() {
        return StuID;
    }

    public void setStuID(int StuID) {
        this.StuID = StuID;
    }
    
    public void AddStudent(){
         try {
            String sql = "INSERT INTO Student (Name,DoB,Gender,HomeTown,Phone) VALUES (?,?,?,?,?)";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection conn = DriverManager.getConnection("jdbc:odbc:StudentManagement");
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, Name);
            ps.setString(2, DoB);
            ps.setString(3, Gender);
            ps.setString(4, HomeTown);
            ps.setString(5, Phone);
           
            ps.executeUpdate();
            conn.close();
        } catch (Exception ex) {
            Logger.getLogger(StudentBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    

}
