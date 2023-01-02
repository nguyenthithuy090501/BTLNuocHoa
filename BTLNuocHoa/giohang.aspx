<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giohang.aspx.cs" Inherits="BTLNuocHoa.giohang" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>GioHang</title>
    <link rel="stylesheet" href="./css/giohang.css"/>
    <link rel="stylesheet" href="./css/nam.css"/>
    <link rel="stylesheet" href="./css/grid.css"/>
    <link href="font/fontawesome-free-6.1.1-web/css/all.min.css" rel="stylesheet" />
    <script src="xulysl.js?v=123"></script>
</head>
<body>

    
        <!-- Header -->
       <header class="header">      
           <div class="general header-container">
               <div class="row" style="height: 100px;">
                    <div class="col l-4 " style="height: 100px;">
                        <div class="search-box">
                        <input type="text" placeholder="Tìm Kiếm..."/>
                        <div class="search--icon">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </div>
                        </div>
                       
                    </div>

                   <div class="col l-4" >
                        <h1 class="headerlogo">AMENLINDA</h1>
                    </div>

                   <div class="col l-4">
                        <div class="header-dndk">
                             <!-- Dang Nhap -->
                              <div class="dkdn ">
                                <div id="dangnhapdangky" runat="server">
                                   
                                </div>
                            </div>
                            <%--<div class="chanpassword" id="changepass" runat="server">
                                <a href="doimk.aspx">|Đổi mật khẩu </a>
                            </div>--%>
                            <!-- Gio Hang -->
                            <div class="cart">
                              <a href="giohang.aspx"> <i class="icon-cart fa-solid fa-cart-plus"></i></a>
                                <div class="cart-number list-parent"  >
                                    <span class="cart--listnumber" id="countproduct" runat="server"></span>
                                </div>
                            </div>
                        </div>
                   
                    </div>
                   </div>
               </div>
         
       </header>
    
     <nav>
            <ul id="menu1">
                <li>
                    <a href="trangchu.aspx">TRANG CHỦ</a>
                </li>
                <li>
                    <a href="#">GIỚI THIỆU</a>
                </li>
                <li>
                   <span class="drop--down"> <a href="#">NƯỚC HOA</a></span>
                    <ul class="menu2">
                    <div class="menu2--dropdown">
                        <li class="menu2-list">
                            <a href="/trangcon1.aspx?idtype=1">Nước hoa Nam</a>
                         </li>
                         <li>
                             <a href="/trangcon1.aspx?idtype=2">Nước hoa Nữ</a>
                         </li>
                         <li>
                             <a href="/trangcon1.aspx?idtype=3">Nước hoa Unisex</a>
                         </li>
                      </div>
                    </ul>
                </li>
                <li>
                    <a href="#">LIÊN HỆ</a>
                </li>
            </ul>
       </nav>
    <br />
    <!--content----->
    <div class="td"><h3><u>Giỏ Hàng Của Bạn</u></h3></div>
    <form id="form1"  method="post" runat="server"  onsubmit="tongdh()">
         <div id="bang" name="bang" runat="server">
        </div>
   
        </form>


    
    <!--footer-->
     <footer class="footer">
        <div class="general footer-container">
            <div class="row" style="height: 300px;" >

                <div class="col l-4" >
                    <div class="noi-dung about">
                        <h2>Về Chúng Tôi</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus odit magni excepturi, animi in porro laboriosam a ipsum aliquam expedita tempora omnis eos nam consequatur obcaecati tenetur eveniet? Id, qui!</p>
                        <ul class="social-icon">
                            <li><a href="#"><i class="social_icon-i fa-brands fa-facebook"></i></a></li>
                            <li><a href="#"><i class="social_icon-i fa-brands fa-twitter"></i></a></li>
                            <li><a href="#"><i class="social_icon-i fa-brands fa-instagram"></i></a></li>
                            <li><a href="#"><i class="social_icon-i fa-brands fa-youtube"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col l-4">
                    <div class="noi-dung links">
                        <h2>Đường Dẫn</h2>
                        <ul>
                            <li><a href="#"><i class="fa-solid fa-angles-right"></i>Trang Chủ</a></li>
                            <li><a href="#"><i class="fa-solid fa-angles-right"></i>Về Chúng Tôi</a></li>
                            <li><a href="#"><i class="fa-solid fa-angles-right"></i>Thông Tin Liên Lạc</a></li>
                            <li><a href="#"><i class="fa-solid fa-angles-right"></i>Dịch Vụ</a></li>
                            <li><a href="#"><i class="fa-solid fa-angles-right"></i>Điều Kiện Chính Sách</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col l-4">
                    <div class="noi-dung contact">
                        <h2>Thông Tin Liên Hệ</h2>
                        <ul class="info">
                            <li>
                                <i class="fa fa-map-marker"></i>
                                <span class="address">96 Định Công  <br />
                                    Hoàng Mai, Thành Phố Hà Nội<br />
                                    Việt Nam
                                </span>
                            </li>

                            <li>
                                <i class="fa fa-phone"></i>
                                <span class="address">+84 971 301 138 <br/>
                                                     +84 971 520 520</span> 
                            </li>

                            <li>
                                 <i class="fa fa-envelope"></i> <span class="address">diachiemail@gmail.com</span>
                           </li>
                        </ul>
                    </div>
                </div>
                </div>
    </div>
       </footer>

     
</body>
</html>

