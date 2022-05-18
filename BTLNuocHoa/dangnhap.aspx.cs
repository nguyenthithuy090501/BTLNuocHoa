using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLNuocHoa
{
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<user> danhsach;
            danhsach = (List<user>)Application["danhsach_us"];
            string email = Request.Form["email"];
            string hoten = Request.Form["hoten"];
            string pass = Request.Form["pass"];
            if (danhsach.Count == 0)
            {

            }
            else
            {
                foreach (user us in danhsach)
                {
                    if (us.Email == email && us.Pass == pass)
                    {
                        Session["dangnhap"] = 1;
                        Session["email"] = us.Email;
                        Session["hoten"] = us.HoTen;
                        Session["pass"] = us.Pass;
                        Response.Redirect("trangchu.aspx");
                    }
                }
            }
        }
    }
}