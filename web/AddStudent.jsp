<%-- 
    Document   : AddStudent
    Created on : May 7, 2015, 4:07:40 PM
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #header2 {
                background-image:url("3_1.jpg");
                color:black;
                text-align:left;
                padding:70px;
            }
            #header3 {
                background-color:#BC3C2E;
                color: #F5FFFA;
                text-align:left;
                padding:1px;
            }
            #nav {
                line-height:30px;
                background-color:#eeeeee;
                height:1000px;
                width:400px;
                float:left;
                padding:5px;	      
            }
            #nav2 {
                line-height:30px;
                background-color:#eeeeee;
                height:1000px;
                width:400px;
                float:right;
                padding:5px;	 
            }
            #nav3 {
                line-height:30px;
                background-color:#F5FFFA;
                height:1000px;
                width:580px;
                float:center;
                padding:5px;	 
            }

        </style>
    </head>
    <body>
        <jsp:useBean class="com.sample.StudentBean" id="bb" scope="session"/> 
        <div id="header2">  
            <a href="Home.jsp"><img  width="414" height="143" src="logo.jpg">                       
        </div>

         <div id="header3">                
                <table  id="01" style="width: 100%"">
                    <tr>
                        <td style="text-align:left" ><p style="color: #8B4726"><a href='Home.jsp'><b style="color: #ffffff">Home</b></a></td> 
                        <td style="text-align:left" ><a href='AddStudent.jsp'><b  style="color: #ffffff">Add New Student</a></td>

                        <td style="text-align:left" ><a href='showData.jsp'><b  style="color: #ffffff">Search Student</b></a></td>
                        <td style="text-align:left" ><a href='About.jsp'><b  style="color: #ffffff">About</a></td>
                        <td style="text-align:left" ><a href='Logout.jsp'><b  style="color: #ffffff">Logout</a></td>

                    </tr>       

                </table>   

            </div>

        <div id="nav">
            <strong><h2>TOP CÁC TRƯỜNG ĐẠI HỌC DANH TIẾNG TRÊN THẾ GIỚI </h2></strong>
            <p></p>
            <p><b>1 . Đại học Harvard </b>
            <p><img src="4_Harvard_University.jpg" width="300px" height="200px" border="1" >
            <p><b>2 . Đại học Cambridge</b>
            <p><img src="5_Cambridge.jpg" width="300px" height="200px" border="1" >
            <p><b>3 . Đại học YALE</b>
            <p><img src="6_YALE.jpg" width="300px" height="200px" border="1" >

        </div>
        <div id="nav2">
            <strong><h2>GIỚI THIỆU VỀ TRƯỜNG ĐẠI HỌC FPT</h2></strong>
            <iframe width="450" height="200" src="https://www.youtube.com/embed/f2NlRi8_3s0" frameborder="1" allowfullscreen></iframe>
            <iframe width="450" height="200" src="https://www.youtube.com/embed/X5YwIfrT9Tc" frameborder="1" allowfullscreen></iframe>
            <iframe width="450" height="200" src="https://www.youtube.com/embed/bfhcBXtY9NU" frameborder="1" allowfullscreen></iframe>
            <iframe width="450" height="200" src="https://www.youtube.com/embed/Hzj0345wo4E" frameborder="1" allowfullscreen></iframe>



        </div>
        <form>
            <center>
                <div id="nav3">
                    <table cellspacing="20px" bgcolor="#B0E0E6" style="width:685px">

                        <tr>
                            <td style="text-align: left"><b>Student Name</b><span style="color:red">*</span>:</td>
                            <td> <input type="text" name="txtStudentName" value="" /></td>

                        </tr>

                        <tr>
                            <td style="text-align: left"><b>DOB  </b><span style="color:red">*</span>:</td>
                            <td><input type="date" name="txtDOB" value="" /></td>
                        </tr>

                        <tr>
                            <td style="text-align: left"><b>Gender</b></td>
                            <td>

                                <input type="radio" name="1" value="Male" /> Male
                                <input type="radio" name="1" value="Female" /> Female
                            </td>
                        </tr>
                        <tr>
                            <td td style="text-align: left"><b>Home Town </b></td>
                            <td>
                                <input type="text" name="txtHomeTown"></input>                         
                            </td>                 
                        </tr>
                        <tr>
                            <td style="text-align: left"><b>Phone</b></td>
                            <td><input type="text" name="txtPhone"></td></input>   
                        </tr>
                        <%
                            String nameError = "";
                            String dobError = "";
                            String genderError = "";
                            String hometownError = "";
                            String phoneError = "";

                            String btnSave = request.getParameter("btnSave");

                            if (btnSave != null && btnSave.length() > 0) {
                                String name = request.getParameter("txtStudentName");
                                String dob = request.getParameter("txtDOB");
                                String gender = request.getParameter("1");
                                String hometown = request.getParameter("txtHomeTown");
                                String phone = request.getParameter("txtPhone");

                                boolean isPass = true;
                                if (name == null || name.trim().equals("") || name.length() > 50) {
                                    nameError = "<p>Name cannot be null or blank, "
                                            + "not longer than 50 characters";
                                    isPass = false;
                                }

                                if (dob == null || dob.trim().equals("")) {
                                    dobError = "<p>DOB cannot be null or blank";
                                }
                                if (gender == null) {
                                    genderError = "<p>Gender must be pick";
                                }

                                if (hometown == null || hometown.trim().equals("") || hometown.length() > 100) {
                                    hometownError = "<p>Home Town  cannot be null or blank, "
                                            + "not longer than 100 characters";
                                }

                                if (phone == null || phone.trim().equals("") || phone.length() > 11) {
                                    phoneError = "<p>Phone  cannot be null or blank, "
                                            + "not longer than 11 characters";
                                }
                                try {
                                    int phone1 = Integer.parseInt(phone);
                                } catch (Exception ex) {
                                    phoneError = "Phone need is number";
                                    isPass = false;
                                }

                                if (isPass) {
                                    bb.setName(name);
                                    bb.setDoB(dob);
                                    bb.setGender(gender);
                                    bb.setHomeTown(hometown);
                                    bb.setPhone(phone);
                                    bb.AddStudent();
                                    out.println("Add new student successful");
                                    response.sendRedirect("./Home.jsp");
                                }
                            }
                        %>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" value="Save" name="btnSave" />
                                <input type="button" value="Go to Home" name="btnHome" onclick="window.location = 'Home.jsp'"/>
                            </td>
                        </tr>
                    </table> 
                </div>

                <p><%=nameError%></p>
                <p><%=dobError%></p>
                <p><%=genderError%></p>
                <p><%=hometownError%></p>
                <p><%=phoneError%></p>

            </center>
        </form>
    </body>
</html>
