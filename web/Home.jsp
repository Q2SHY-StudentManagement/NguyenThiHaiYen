<%-- 
    Document   : Home
    Created on : May 7, 2015, 2:12:57 PM
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                height:1500px;
                width:440px;
                float:left;
                padding:5px;	      
            }
            #nav2 {
                line-height:30px;
                background-color:#eeeeee;
                height:1500px;
                width:440px;
                float:right;
                text-align:right;
                padding:5px;	 
            }
            #nav3 {
                line-height:30px;
                background-color:#F5FFFA;
                height:1500px;
                width:440px;
                float:center;
                padding:5px;	 
            }
        </style>


    </head>
    <body style="background-color:#F9F9F9">
        <div id="header2" style="float:bottom">  
            
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
        <h1 style="color:red"><MARQUEE>Thông tin về các thành viên trong nhóm Q2SHY</MARQUEE></h1>   
        <div id="nav">
            <p><a href='InforStudent.jsp'><img src="ThuHa.jpg" width="360px" height="480px" border="1" ></a>
                <b>
                    <p> 1 . NGUYỄN THU HÀ
                    <p>    Địa chỉ  : Hà Nội
                    <p>    Sở thích : Mua sắm, ăn ngủ nghỉ, du lịch .
                </b>
            <p><a href='AddStudent.jsp'><img src="Yen.jpg" width="360px" height="480px" border="1" ></a>
                <b>
                    <p> 4 . NGUYỄN THỊ HẢI YẾN
                    <p>    Địa chỉ  : Hà Nội
                    <p>    Sở thích : Ngắm xe mô tô , đọc sách , nghe nhạc .
                </b>

        </div>
    <right>
         <div id="nav2">

             <p><a href='showData.jsp'><img src="Hieu.jpg" width="360px" height="480px" border="1" ></a>
                <b>
                    <p> 3 . VŨ HOÀNG HIẾU
                    <p>    Địa chỉ  : Thái Nguyên
                    <p>    Sở thích : Bánh Giầy (Nike).
                </b>
                
             <p><a href='Login.jsp'><img src="Son.jpg" width="360px" height="480px" border="1" ></a>
                <b>
                    <p> 5 . LƯU NGỌC VIỆT SƠN
                    <p>    Địa chỉ  : Nam Định
                    <p>    Sở thích : Đá bóng.
                </b>

        </div>
    </right>
       
    <center>
         <div id="nav3">

             <p><a href='editStudent.jsp'><img src="Quyen.jpg" width="360px" height="480px" border="1" ></a>
                <b>
                    <p> 2 . VŨ QUANG QUYỀN
                    <p>    Địa chỉ  : Hà Nội
                    <p>    Sở thích : Phơi nắng, tắm đen, bơi giữa hồ Tây.
                </b>

        </div>
    </center>
       
    </body>
</html>
