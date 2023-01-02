<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doimk.aspx.cs" Inherits="BTLNuocHoa.doimk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form class="form_login" runat="server" method="post" onsubmit="return checkdoimk()">
        <div class="content_main">
           <h2 class="title">Đổi mật khẩu</h2>
           <div class="content">
                <div class="content_input">
                    <input type="text" id="passold" name="passold" placeholder="Mật khẩu cũ" value="" runat="server" />
                    <span id="loi_old"></span>
                    <input type="password" id="passnew" name="passnew" placeholder="Mật khẩu mới" value="" runat="server" />
                    <span id="loi_new"></span>
                    <input type="password" id="repassnew" name="repassnew" placeholder="Nhập lại mật khẩu" value="" runat="server" />
                    <span id="loi_renew"></span>
                </div>
                <div class="moved_on">
                    <span class="right">Chưa có tài khoản? <a href="dangky.aspx">Đăng ký ngay</a></span>
                </div>
                <input type="submit" name="doimk" class="doimk" value="Đổi mật khẩu"/>
        </div>
           <br />
           <div class="notice_policy">Chúng tôi không sử dụng thông tin của bạn với bất kỳ mục đích nào. Bằng cách đăng nhập hoặc đăng ký, bạn đồng ý với <a style="color: #0495ba; border-bottom: 2px solid; text-decoration: none !important;" target="_blank" href="https://parfumerie.vn/chinh-sach-bao-mat-thong-tin">Chính sách quy định của Amelinda</a></div>
       </div> 
    </form>

    
</body>
</html>
