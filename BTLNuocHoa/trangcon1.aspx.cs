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
                    + "<span>  |</span> <a href=\"dangxuat.aspx\" >Đăng xuất</a>"; ;
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
            List<Product> listSP;
            listSP = (List<Product>)Application["product"];
            string s = "";
            string loai = Request.QueryString["idtype"];
            // noibat = 1,2,3
            /*  string html = "";*/

           
                foreach (Product p in listSP)
                {
                    if (String.Equals(p.Idtype, loai))
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
