using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLNuocHoa
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dangnhap"].ToString() == "1")
            {
                changepass.Visible = true;
                dangnhapdangky.InnerHtml =
                   "<span style='color:white;'> Xin chào,  " + Session["hoten"].ToString() + "</span>"
                    + "<span> | </span> <a href=\"dangxuat.aspx\" >Đăng xuất</a>"; ;
            }
            else
            {
                changepass.Visible = false;
                dangnhapdangky.InnerHtml = "<a href=\"dangnhap.aspx\">Đăng nhập</a><span> | </span>" +
                           "<a href=\"dangky.aspx\">Đăng ký</a> ";
            }
            if (Request.Form["dangxuat"] == "Đăng xuất")
            {
                Session.Remove("email");
                Session.Abandon();
                Response.Redirect("dangnhap.aspx");
            }
            List<Product> listSPan = (List<Product>)Session["giohang"];
            int i = 0;
            foreach (Product p in listSPan)
            {
                i++;
            }
            countproduct.InnerHtml = "<p style='font-size:16px;'>" + i + "</p>";
        }
    }
}