using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLNuocHoa
{
    public partial class trangconchitiet : System.Web.UI.Page
    {
        protected void  btnthem_Click(object sender,EventArgs e)
        {
            string request = Request.QueryString["id"];
            List<Product> listSPan = (List<Product> )Session["giohang"];
            List<Product> dsach = (List<Product>)Application["product"];
            
            if (listSPan == null)
            {
                
                listSPan = new List<Product>();
            }
            foreach (Product p in dsach)
            {
                
                if (p.Id == request)
                {
                    
                    listSPan.Add(p);
                    break;
                   
                }
              
            }
            Session["giohang"] = listSPan;
       
         Response.Redirect(Request.Url.ToString(),true);


        }
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
              
                Response.Redirect("dangnhap.aspx");
            }


            string request = Request.QueryString["id"];
            List<Product> dsach = new List<Product>();
            dsach = (List<Product>)Application["product"];
            foreach(Product p in dsach)
            {
                if(p.Id == request)
                {
                    anh_Pro.InnerHtml = "<img src ='" + p.Img + "'id = 'img-feature' alt = '" + p.Id + "' >";
                    anh1.InnerHtml = "<img src ='" + p.Img + "'class = 'img-product' alt = '" + p.Id + "'>";
                    anh2.InnerHtml = "<img src ='" + p.Img1 + "'class = 'img-product' alt = '" + p.Id + "'>";
                    tenSP.InnerText = p.Name;
                    priceSP.InnerHtml = "<p>" + p.Price + "đ<p>";
                    motaSP.InnerText = p.Detail;
                   
                }
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