<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="BTLNuocHoa.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Trang chủ</title>
    <link rel="stylesheet" href="./css/trangchu.css"/>
    <link rel="stylesheet" href="./css/grid.css"/>
    <link href="trangconchitiet.aspx" rel="stylesheet" />

    <link href="font/fontawesome-free-6.1.1-web/css/all.min.css" rel="stylesheet" />
   <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity=
          "sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />-->
    
</head>
<body>
    
        <!-- Header -->
       <header class="header">      
           <div class="general header-container">
               <div class="row" style="height: 100px;">
                   <form  class="col l-4" runat="server" method="get" action="timkiem.aspx">
                    <div  style="height: 100px;">
                        <div class="search-box">
                        <input  name="search" type="text" placeholder="Tìm Kiếm..."/>
                        <div class="search--icon">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </div>
                        </div>
                       
                    </div>
                       </form>
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
                            <%-- đổi mật khẩu --%>
                            <div class="chanpassword" id="changepass" runat="server">
                                <a href="doimk.aspx">|Đổi mật khẩu </a>
                            </div>
                            <%--  --%>
                            <!-- gio hang -->
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
        
       <!-- Menu -->
       <nav>
            <ul id="menu1">
                <li>
                    <a href="#">TRANG CHỦ</a>
                </li>
                <li>
                    <a href="trangchu.aspx">GIỚI THIỆU</a>
                </li>
                <li>
                   <span class="drop--down"> <a href="">NƯỚC HOA</a></span>
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

       <!-- Banner -->
       <div>
           <a href="#"><img src="anh/banner.jpg" alt="" width="100%"/></a>
        </div>
   
    <!-- Nội Dung -->
       <!-- List Product NAM-->
        <div class="listproduct generate" id="listproduct-nam">
            <!-- Title -->
            <div class="title">
               <a href="#"><h3 >NƯỚC HOA NAM</h3></a>
            </div>

           <div class="">
               <div class="listproduct-content row  grid wide" >
                   <div class="col l-2" style="background-color: #f5f5f5;">
                        
                   </div>
                   <div class="col l-10">
                       <!-- Banner -->
                       <div class="listproduct-banner row" >
                          <img src="anh/nuochoanam/banner.jpg" alt=""/>
                       </div>

                       <!-- List body -->
                       <div class="row listproduct-body">
                            <div class="col l-2-4 c-6 m-4 nuochoanam">
                                <div class="nuochoanam-img">
                                    <a href="trangconchitiet.aspx?id=1.1"><img src="anh/nuochoanam/anh1.jpg" alt="" height="200"/></a>
                                </div>
                                <div class="nuochoanam-infor">
                                <h3>
                                    <a class="line-clamp" href="#">Dolce & Gabbana Light Blue Forever</a>
                                </h3>
                                <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                                   <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                                   </div>
                                </div>
                                <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                    645.000₫ - 6.450.000₫
                                </div>
                                </div>
                                <div class="icon">
                                    <button title="Chọn sản phẩm" type="button">
                                        <i class="fa fa-cart-plus"></i>
                                    </button>
                                    <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                    <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="col l-2-4 c-6 m-4 nuochoanam">
                                <div class="nuochoanam-img">
                                    <a href="trangconchitiet.aspx?id=1.2"><img src="anh/nuochoanam/anh2.png" alt="" height="200px"/></a>
                                </div>
                                <div class="nuochoanam-infor">
                                <h3>
                                    <a class="line-clamp" href="#">Nishane Ani Extrait De Parfum</a>
                                </h3>
                                <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                                   <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                                   </div>
                                </div>
                                <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                    645.000₫ - 6.450.000₫
                                </div>
                                </div>
                                <div class="icon">
                                    <button title="Chọn sản phẩm" type="button">
                                        <i class="fa fa-cart-plus"></i>
                                    </button>
                                    <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                    <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="col l-2-4 c-6 m-4 nuochoanam">
                                <div class="nuochoanam-img">
                                    <a href="trangconchitiet.aspx?id=1.3"><img src="anh/nuochoanam/anh3.jpg" alt="" height="200px"/></a>
                                </div>
                                <div class="nuochoanam-infor">
                                <h3>
                                    <a class="line-clamp" href="#">Maison Marginela Replica Coffee Break EDT</a>
                                </h3>
                                <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                                   <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                                   </div>
                                </div>
                                <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                    645.000₫ - 6.450.000₫
                                </div>
                                </div>
                                <div class="icon">
                                    <button title="Chọn sản phẩm" type="button">
                                        <i class="fa fa-cart-plus"></i>
                                    </button>
                                    <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                    <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="col l-2-4 c-6 m-4 nuochoanam">
                                <div class="nuochoanam-img">
                                    <a href="trangconchitiet.aspx?id=1.4"><img src="anh/nuochoanam/anh4.jpg" alt="" height="200px"/></a>
                                </div>
                                <div class="nuochoanam-infor">
                                <h3>
                                    <a class="line-clamp" href="#">Narciso Rodgriuez For Him Bleu Nori EDT Extreme</a>
                                </h3>
                                <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                                   <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                                   </div>
                                </div>
                                <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                    645.000₫ - 6.450.000₫
                                </div>
                                </div>
                                <div class="icon">
                                    <button title="Chọn sản phẩm" type="button">
                                        <i class="fa fa-cart-plus"></i>
                                    </button>
                                    <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                    <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="col l-2-4 c-6 m-4 nuochoanam">
                                <div class="nuochoanam-img">
                                    <a href="trangconchitiet.aspx?id=1.5"><img src="anh/nuochoanam/anh5.jpg" alt="" height="200px"/></a>
                                </div>
                                <div class="nuochoanam-infor">
                                <h3>
                                    <a class="line-clamp" href="#">
Le Labo Bergamote 22 EDP</a>
                                </h3>
                                <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                                   <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                                   </div>
                                </div>
                                <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                    645.000₫ - 6.450.000₫
                                </div>
                                </div>
                                <div class="icon">
                                    <button title="Chọn sản phẩm" type="button">
                                        <i class="fa fa-cart-plus"></i>
                                    </button>
                                    <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                    <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="col l-2-4 c-6 m-4 nuochoanam">
                                <div class="nuochoanam-img">
                                    <a href="trangconchitiet.aspx?id=1.6"><img src="anh/nuochoanam/anh6.jpg" alt="" height="200px"/></a>
                                </div>
                                <div class="nuochoanam-infor">
                                <h3>
                                    <a class="line-clamp" href="#">
Kilian L'heureu Verte EDT</a>
                                </h3>
                                <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                                   <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                                   </div>
                                </div>
                                <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                    645.000₫ - 6.450.000₫
                                </div>
                                </div>
                                <div class="icon">
                                    <button title="Chọn sản phẩm" type="button">
                                        <i class="fa fa-cart-plus"></i>
                                    </button>
                                    <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                    <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="col l-2-4 c-6 m-4 nuochoanam">
                                <div class="nuochoanam-img">
                                    <a href="trangconchitiet.aspx?id=1.7"><img src="anh/nuochoanam/anh7.jpg" alt="" height="200px"/></a>
                                </div>
                                <div class="nuochoanam-infor">
                                <h3>
                                    <a class="line-clamp" href="#">Maison Margiela Replica Matcha Meditation EDT</a>
                                </h3>
                                <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                                   <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                                   </div>
                                </div>
                                <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                    645.000₫ - 6.450.000₫
                                </div>
                                </div>
                                <div class="icon">
                                    <button title="Chọn sản phẩm" type="button">
                                        <i class="fa fa-cart-plus"></i>
                                    </button>
                                    <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                    <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="col l-2-4 c-6 m-4 nuochoanam">
                                <div class="nuochoanam-img">
                                    <a href="trangconchitiet.aspx?id=1.8"><img src="anh/nuochoanam/anh8.jpg" alt="" height="200px"/></a>
                                </div>
                                <div class="nuochoanam-infor">
                                <h3>
                                    <a class="line-clamp" href="#">Roar Dove Enigma Pour Homme Parfum Cologne</a>
                                </h3>
                                <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                                   <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                                   </div>
                                </div>
                                <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                    645.000₫ - 6.450.000₫
                                </div>
                                </div>
                                <div class="icon">
                                    <button title="Chọn sản phẩm" type="button">
                                        <i class="fa fa-cart-plus"></i>
                                    </button>
                                    <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                    <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="col l-2-4 c-6 m-4 nuochoanam">
                                <div class="nuochoanam-img">
                                    <a href="trangconchitiet.aspx?id=1.9"><img src="anh/nuochoanam/anh9.jpg" alt="" height="200px"/></a>
                                </div>
                                <div class="nuochoanam-infor">
                                <h3>
                                    <a class="line-clamp" href="#">Armaf Club De Nuit Intense Woman EDF</a>
                                </h3>
                                <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                                   <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                                   </div>
                                </div>
                                <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                    645.000₫ - 6.450.000₫
                                </div>
                                </div>
                                <div class="icon">
                                    <button title="Chọn sản phẩm" type="button">
                                        <i class="fa fa-cart-plus"></i>
                                    </button>
                                    <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                    <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="col l-2-4 c-6 m-4 nuochoanam">
                                <div class="nuochoanam-img">
                                    <a href="trangconchitiet.aspx?id=1.10"><img src="anh/nuochoanam/anh10.jpg" alt="" height="200px"/></a>
                                </div>
                                <div class="nuochoanam-infor">
                                <h3>
                                    <a class="line-clamp" href="#">Franck Boclet Cocaine</a>
                                </h3>
                                <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                                   <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa fa-star" style="font-size: 14px;"></i>
                                    <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                                   </div>
                                </div>
                                <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                    645.000₫ - 6.450.000₫
                                </div>
                                </div>
                                <div class="icon">
                                    <button title="Chọn sản phẩm" type="button">
                                        <i class="fa fa-cart-plus"></i>
                                    </button>
                                    <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                    <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                       </div>
                    </div>
                  
               </div>
           </div>
        </div>
       <!-- List Product NU-->
       <div class="listproduct generate" id="listproduct-nu">
        <!-- Title -->
        <div class="title">
           <a href="#"><h3 >NƯỚC HOA NỮ</h3></a>
        </div>

       <div class="">
           <div class="listproduct-content row  grid wide" >
               <div class="col l-2" style="background-color: #f5f5f5;">
                    
               </div>
               <div class="col l-10">
                   <!-- Banner -->
                   <div class="listproduct-banner row" >
                      <img src="anh/NuochoaNu/banner.jpg" alt="">
                   </div>

                   <!-- List body -->
                   <div class="row listproduct-body">
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=2.1"><img src="anh/nuochoanu/anh1.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">Chloé Love Story EDP</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=2.2"><img src="anh/nuochoanu/anh2.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">Maison Marginela Replica Coffee Break EDT</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=2.3"><img src="anh/nuochoanu/anh3.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">
Narciso Rodgriuez For Him Bleu Nori EDT Extreme</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=2.4"><img src="anh/nuochoanu/anh4.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">
Parfums De Marly Delina</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                               <a href="trangconchitiet.aspx?id=2.5"><img src="anh/nuochoanu/anh5.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">Louis Vuitton California Dream EDT</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=2.6"><img src="anh/nuochoanu/anh6.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">

Victoria's Secret Very Sexy EDP</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=2.7"><img src="anh/nuochoanu/anh7.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">
My Burberry Black Parfum</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=2.8"><img src="anh/nuochoanu/anh8.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">Calvin Klein CK One Shock For Her EDT</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=2.9"><img src="anh/nuochoanu/anh9.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">Dolce & Gabbana Light Blue Forever</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=2.10"><img src="anh/nuochoanu/anh10.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">Kenzo Flower EDTP</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                   </div>
                </div>
              
           </div>
       </div>
    </div>
       <!-- List Product UNISEX-->
       <div class="listproduct generate" id="listproduct-unisex">
        <!-- Title -->
        <div class="title">
           <a href="#"><h3 >NƯỚC HOA UNISEX</h3></a>
        </div>
       <div class="">
           <div class="listproduct-content row grid wide" >
               <div class="col l-2" style="background-color: #f5f5f5;">
                    
               </div>
               <div class="col l-10">
                   <!-- Banner -->
                   <div class="listproduct-banner row" >
                      <img src="anh/NuocHoaUniSex/sec_group_product_banner_3.jpg" alt="">
                   </div>

                   <!-- List body -->
                   <div class="row listproduct-body">
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=3.1"><img src="anh/nuochoaunisex/anh1.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">Tom Ford Lost Cherry EDP</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=3.2"><img src="anh/nuochoaunisex/anh2.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">
Maison Marginela Replica Coffee Break EDT</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=3.3"><img src="anh/nuochoaunisex/anh3.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">Narciso Rodgriuez For Him Bleu Nori EDT Extreme</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=3.4"><img src="anh/nuochoaunisex/anh4.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">Dolce & Gabbana Light Blue Forever</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=3.5"><img src="anh/nuochoaunisex/anh5.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">
Louis Vuitton California Dream EDT</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=3.6"><img src="anh/nuochoaunisex/anh6.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">
Kilian L'heureu Verte EDT</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=3.7"><img src="anh/nuochoaunisex/anh7.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">My Burberry Black Parfum</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=3.8"><img src="anh/nuochoaunisex/anh8.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">Atelier Des Ors Rose Omeyyade</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=3.9"><img src="anh/nuochoaunisex/anh9.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">
Franck Boclet Cocaine</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="col l-2-4 c-6 m-4 nuochoanam">
                            <div class="nuochoanam-img">
                                <a href="trangconchitiet.aspx?id=3.10"><img src="anh/nuochoaunisex/anh10.jpg" alt="" height="200px"/></a>
                            </div>
                            <div class="nuochoanam-infor">
                            <h3>
                                <a class="line-clamp" href="#">
Kenzo Flower EDTP</a>
                            </h3>
                            <div class="nuochoanam-rate" style="display: flex; align-items:center;">
                               <div class="star" style="display: flex; align-items: center;  line-height: 1;">
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa fa-star" style="font-size: 14px;"></i>
                                <i class="fa-solid fa-star-half" style="font-size: 14px;"></i>
                               </div>
                            </div>
                            <div class="nuochoanam-price" style="font-size: 14px; line-height: 1.1; font-weight: 600; color: #07053d;">
                                645.000₫ - 6.450.000₫
                            </div>
                            </div>
                            <div class="icon">
                                <button title="Chọn sản phẩm" type="button">
                                    <i class="fa fa-cart-plus"></i>
                                </button>
                                <a href="#" title="Xem nhanh"><i class="fa fa-eye"></i></a>
                                <a href="#" title="Yêu thích"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                   </div>
                </div>
              
           </div>
       </div>
    </div>

        <!-- Footer  -->
       <footer class="footer">
        <div class="general footer-container">
            <div class="row" style="height: 300px;" >

                <div class="col l-4" >
                    <div class="noi-dung about">
                        <h2>Về Chúng Tôi</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus odit magni excepturi, animi in porro laboriosam a ipsum aliquam expedita tempora omnis eos nam consequatur obcaecati tenetur eveniet? Id, qui!</p>
                        <ul class="social-icon">
                            <li><a href="#"><i class="social_icon-i fa-brands fa-facebook"></i></a></li>
                            <li><a href="#"><i class="social_icon-i fa-brands fa-twitter"></i></i></a></li>
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
                                <span class="address">+84 971 301 138 <br>
                                                     +84 971 520 520</span> 
                            </li>

                            <li>
                                 <i class="fa fa-envelope"></i> <span class="address">diachiemail@gmail.com</span>
                           </li>
                        </ul>
                    </div>
                </div>
       </footer>
         <script>
        //    var item=document.querySelector(".nuochoanam");
        //    var price=document.querySelector(".nuochoanam-price");
        //    var icon=document.querySelector(".icon")
        //    icon.style.display="none";
        //    item.onmouseover=function(){
        //         price.style.display="none";
        //         icon.style.display="block";
        //    }
        //    item.onmouseout=function(){
        //         price.style.display="block";
        //         icon.style.display="none";
        //    }
         </script> 
       <!--
            <script>
           var star=document.querySelector(".star");
           var price=document.querySelector(".price");
           price.style.display="none";
           star.onmouseover=function(){
                star.style.display="none";
                price.style.display="block";
           }
           star.onmouseout=function(){
                star.style.display="block";
                price.style.display="none";
           }
    
       </script>
       -->
</body>
</html>
