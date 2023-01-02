using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLNuocHoa
{
    public partial class dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<user> danhsach;
            danhsach = (List<user>)Application["danhsach_us"];
            string email = Request.Form["email"];
            string hoten = Request.Form["hoten"];
            string pass = Request.Form["pass"];
            if (IsPostBack)
            {
                if (Request.Form["dangky"] == "Đăng ký")
                {
                    user us = new user();
                    us.Email = email;
                    us.HoTen = hoten;
                    us.Pass = pass;
                    danhsach.Add(us);
                    Application["danhsach_us"] = danhsach;
                    Session["dangnhap"] = 1;
                    Session["email"] = email;
                    Session["hoten"] = hoten;
                    Session["pass"] = pass;
                    Response.Redirect("trangchu.aspx");
                }
            }
        }
    }
}