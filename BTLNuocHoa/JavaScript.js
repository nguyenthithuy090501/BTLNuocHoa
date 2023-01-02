function checkdulieu() {
    /* Tên:
     * không để trống ""
     * Bắt đầu (a-z) (0-9), dấu gạc dưới hoặc gạch nối, 3-16 ký tự 
     * --> /^[a-z0-9_-]{3,16}$/ 
     * Chỉ gồm ký tự viết hoa, thường, số
     * --> /^[a-zA-Z0-9]+$/
     * */
    fullname = document.getElementById("fullnameDK").value;
    ten_loi = document.getElementById("tenDK_loi");
    checkloi = true;
    if (fullname == "") {
        ten_loi.innerHTML = "Vui lòng điền thông tin";
        checkloi = false;
    } else {
        if (fullname != /^[a-z0-9_-]{3,16}$/.test(fullname)) {
            ten_loi.innerHTML = "kooo";
            checkloi = false;
        } else {
            ten_loi.innerHTML = "ok"
        }
    }

    /* Email:
     * không để trống
     
        mysite.ourearth.com [@ không có mặt]
        mysite @ .com.my [tld (Miền cấp cao nhất) không thể bắt đầu bằng dấu chấm "." ]
        @ you.me.net [Không có ký tự nào trước @]
        mysite123@gmail.b [".b" không phải là tld hợp lệ]
        mysite @ .org.org [tld không thể bắt đầu bằng dấu chấm "." ]
        .mysite @ mysite.org [email không được bắt đầu bằng "." ]
        mysite () * @ gmail.com [ở đây biểu thức chính quy chỉ cho phép ký tự, chữ số, dấu gạch dưới và dấu gạch ngang]
        mysite..1234 @ yahoo.com [không được phép có dấu chấm kép]
      */
    var
        email = document.getElementById("emailDK").value;
    email_loi = document.getElementById("emailDK_loi");
    if (email == "") {
        email_loi.innerHTML = "vui lòng điền thông tin";
        checkloi = false;
    } else {
        if (email == /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)) {
            email_loi.innerHTML = "ok";
        } else {
            email_loi.innerHTML = "kooo";
            checkloi = false;
        }
        /*if (email.indexOf("@gmail.com") >= 0) {
            email_loi.innerHTML = "ok";
        } else {
            email_loi.innerHTML = "email không đúng định dạng";
            checkloi = false;
        }*/
    }

    /* Số điện thoại
     * không để trống
     * là số 0-9 : 10 số, bắt đầu bằng 0
     */
    sdt = document.getElementById("sdtDK").value;
    sdt_loi = document.getElementById("sdt_loi");
    if (sdt == "") {
        sdt_loi.innerHTML = "vui lòng điền thông tin";
        checkloi = false;
    } else {
        if (sdt.charAt(0) == "0" && sdt.length == 10) {
            sdt_loi.innerHTML = "ok";
        } else {
            sdt_loi.innerHTML = "Số 0 phải ở đầu và gồm 10 kí tự";
            checkloi = false;
        }
    }

    /* Passwword
    * không để trống
    * Tối thiểu tám ký tự, ít nhất một chữ cái và một số
    * --> ^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$
    * Tối thiểu tám ký tự, ít nhất một chữ cái, một số và một ký tự đặc biệt
    * --> ^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$
    * Tối thiểu tám ký tự, ít nhất một chữ cái viết hoa, một chữ cái viết thường và một số
    * --> ^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$
    * Tối thiểu tám ký tự, ít nhất một chữ cái viết hoa, một chữ cái viết thường, một số và một ký tự đặc biệt
    * --> ^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$
    * Tối thiểu tám và tối đa 10 ký tự, ít nhất một chữ cái viết hoa, một chữ cái viết thường, một số và một ký tự đặc biệt
    * --> ^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$
    * password = document.getElementById("passwordDK").value;
       mk_loi = document.getElementById("mkDK_loi");

       //passwordManh = new RegExp("^(?=.{14,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
       const passwordManh = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*]).{8,}$/;
       passwordTB = new RegExp("^(?=.{10,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
       passwordYeu = new RegExp("(?=.{8,}).*", "g");
        */

    //password = document.getElementById("passwordDK").value;
    //mk_loi = document.getElementById("mkDK_loi");
    //if (password == "") {
    //    mk_loi.innerHTML = "Vui lòng điền thông tin";
    //    checkloi = false;
    //}
    return checkloi;
}