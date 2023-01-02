using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLNuocHoa
{
    public partial class nam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dangnhap"].ToString() == "1")
            {
                dangnhapdangky.InnerHtml =
                     "<span style='color:white;'> Xin chào,  " + Session["hoten"].ToString() + "</span>"
                    + "<span> | </span> <a href=\"dangxuat.aspx\" >Đăng xuất</a>"; ;
            }
            else
            {
                dangnhapdangky.InnerHtml = "<a href=\"dangnhap.aspx\">Đăng nhập</a><span> | </span>" +
                           "<a href=\"dangky.aspx\">Đăng ký</a> ";
            }
            if (Request.Form["dangxuat"] == "Đăng xuất")
            {
                Session.Remove("email");
                Session.Abandon();
                Response.Redirect("dangnhap.aspx");
            }
            string loai = Request.QueryString["idtype"];
            if (loai == "1")
            {
                ddanh.InnerText = "/Nước hoa nam";
                
            }
            if (loai == "2")
            {
                ddanh.InnerText = "/Nước hoa nữ";

            }
            if (loai=="3") 
            {
                ddanh.InnerText = "/Nước hoa unisex";

            }
            ddanh.Attributes.Add("href", "/trangcon1.aspx?idtype=" + loai);
            List<Product> listSP;
            listSP = (List<Product>)Application["product"];
            string s = "";
            /*string loai = Request.QueryString["idtype"];*/
            // noibat = 1,2,3
            /*  string html = "";*/

            if (IsPostBack)
            {
                if (Request.Form["filter01"] == "< 500.000đ")
                {
                    var a = "";
                    foreach (Product p in listSP)
                    {
                        if (String.Equals(p.Idtype, loai) && (decimal.Parse(p.Price) <500000))
                        {
                            a += "<div class='col l-2-4 c-6 m-4 nuochoanam'>";

                            a += "<div class='nuochoanam-img'>";
                            a+= "<a href='trangconchitiet.aspx?id=" + p.Id + "'>";
                            a+= "<img src='" + p.Img + "' alt='' width: 270px;/>";
                            a+= "</a>";
                            a+= "</div>";

                            a+= "<div class='nuochoanam-infor'>";
                            a+= "<a href='trangconchitiet.aspx?id=" + p.Id + "'>";
                            a+= "<p class='line-clamp' >" + p.Name + "</p>";

                            a+= "</a>";
                            a+= "<div class='nuochoanam-price' >" + p.Price + "đ</div>";
                            a+= "</div>";

                            a+= "<div class='icon'>";
                            a+= "<button title = 'Chọn sản phẩm' type = 'button' >";
                            a+= "<i class='fa fa-eye'></i>";
                            a+= "</button>";
                            a+= "</div>";

                            a+= "</div>";
                        }
                    }
                    productmale.InnerHtml = a;
                }

                if (Request.Form["filter02"] == "500.000đ - 1.000.000đ")
                {
                    var b = "";
                    foreach (Product p in listSP)
                    {
                        if (String.Equals(p.Idtype, loai) && (decimal.Parse(p.Price) > 500000)&&(decimal.Parse(p.Price) < 1000000))
                        {
                            b+= "<div class='col l-2-4 c-6 m-4 nuochoanam'>";

                            b+= "<div class='nuochoanam-img'>";
                            b+= "<a href='trangconchitiet.aspx?id=" + p.Id + "' width='100%'>";
                            b+= "<img src='" + p.Img + "' alt='' width: 270px;/>";
                            b+= "</a>";
                            b+= "</div>";

                            b+= "<div class='nuochoanam-infor'>";
                            b+= "<a href='trangconchitiet.aspx?id=" + p.Id + "'>";
                            b+= "<p class='line-clamp' >" + p.Name + "</p>";

                            b+= "</a>";
                            b+= "<div class='nuochoanam-price' >" + p.Price + "đ</div>";
                            b+= "</div>";

                            b+= "<div class='icon'>";
                            b+= "<button title = 'Chọn sản phẩm' type = 'button' >";
                            b+= "<i class='fa fa-eye'></i>";
                            b+= "</button>";
                            b+= "</div>";

                            b+= "</div>";
                        }
                    }
                    productmale.InnerHtml = b;
                }

                if (Request.Form["filter03"] == "> 1.000.000đ")
                {
                    var c = "";
                    foreach (Product p in listSP)
                    {
                        if (String.Equals(p.Idtype, loai) && (decimal.Parse(p.Price) > 1000000))
                        {                           
                                c+= "<div class='col l-2-4 c-6 m-4 nuochoanam'>";

                                c+= "<div class='nuochoanam-img'>";
                                c+= "<a href='trangconchitiet.aspx?id=" + p.Id + "' width='100%'>";
                                c+= "<img src='" + p.Img + "' alt='' width: 270px;/>";
                                c+= "</a>";
                                c+= "</div>";

                                c+= "<div class='nuochoanam-infor'>";
                                c+= "<a href='trangconchitiet.aspx?id=" + p.Id + "'>";
                                c+= "<p class='line-clamp' >" + p.Name + "</p>";

                                c+= "</a>";
                                c+= "<div class='nuochoanam-price' >" + p.Price + "đ</div>";
                                c+= "</div>";

                            c += "<div class='icon'>";
                            c += "<button title = 'Chọn sản phẩm' type = 'button' >";
                            c += "<i class='fa fa-eye'></i>";
                            c += "</button>";
                            c += "</div>";

                            c += "</div>";  
                        }
                    }
                    productmale.InnerHtml = c;
                }
            
                if (Request.Form["filter04"] == "Tất cả")
                {
                var d = "";
                foreach (Product p in listSP)
                {
                    if (String.Equals(p.Idtype, loai))
                    {
                        d += "<div class='col l-2-4 c-6 m-4 nuochoanam'>";

                        d += "<div class='nuochoanam-img'>";
                        d += "<a href='trangconchitiet.aspx?id=" + p.Id + "' width='100%'>";
                        d += "<img src='" + p.Img + "' alt='' width: 270px;/>";
                        d+= "</a>";
                        d+= "</div>";

                        d+= "<div class='nuochoanam-infor'>";
                        d+= "<a href='trangconchitiet.aspx?id=" + p.Id + "'>";
                        d+= "<p class='line-clamp' >" + p.Name + "</p>";

                        d+= "</a>";
                        d+= "<div class='nuochoanam-price' >" + p.Price + "đ</div>";
                        d+= "</div>";

                        d+= "<div class='icon'>";
                        d+= "<button title = 'Chọn sản phẩm' type = 'button' >";
                        d+= "<i class='fa fa-eye'></i>";
                        d+= "</button>";
                        d+= "</div>";

                        d+= "</div>";
                    }
                }
                productmale.InnerHtml = d;
            }
        }
            else
            {
                foreach (Product p in listSP)
                {
                    if (String.Equals(p.Idtype, loai) )
                    {
                        s += "<div class='col l-2-4 c-6 m-4 nuochoanam'>";

                        s += "<div class='nuochoanam-img'>";
                        s += "<a href='trangconchitiet.aspx?id=" + p.Id + "' width='100%'>";
                        s += "<img src='" + p.Img + "' alt='' width: 270px;/>";
                        s += "</a>";
                        s += "</div>";

                        s += "<div class='nuochoanam-infor'>";
                        s += "<a href='trangconchitiet.aspx?id=" + p.Id + "'>";
                        s += "<p class='line-clamp' >" + p.Name + "</p>";

                        s += "</a>";
                        s += "<div class='nuochoanam-price' >" + p.Price + "đ</div>";
                        s += "</div>";

                        s += "<div class='icon'>";
                        s += "<button title = 'Chọn sản phẩm' type = 'button' >";
                        s += "<i class='fa fa-eye'></i>";
                        s += "</button>";
                        s += "</div>";

                        s += "</div>";


                    }
                    productmale.InnerHtml = s;
                }
            }
          

        }
    }
}