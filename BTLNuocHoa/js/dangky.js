
function checkdangky() {
    email= document.getElementById("email").value;
    hoten= document.getElementById("hoten").value;
    pass= document.getElementById("pass").value;
    repass= document.getElementById("repass").value;
    loi_email= document.getElementById("loi_email");
    loi_ht= document.getElementById("loi_ht");
    loi_pass= document.getElementById("loi_pass");
    loi_repass= document.getElementById("loi_repass");
    checkloi=true;
    //email
    if(email==""){
        loi_email.style.display = "block";
        loi_email.innerHTML="Chưa nhập";
        checkloi=false;
    }
    else {
        if (email.indexOf("@") > 0 && email.lastIndexOf(".") - email.indexOf("@") > 0) {
            loi_email.innerHTML = "";
            loi_email.style.display = "none";
        }
        else {
        loi_email.innerHTML="không đúng định dạng";
        loi_email.style.display = "block";
            checkloi = false;
        }
    }

    //hoten
    var namecheck = /^[A-Za-z\s]{3,16}$/;
    if (hoten == "") {
        loi_ht.style.display = "block";
        loi_ht.innerHTML = "Chưa nhập";
        checkloi = false;
    }
    else {
        if (namecheck.test(hoten)) {
            loi_ht.style.display = "none";
            loi_ht.innerHTML = "";            
        }
        else {
            loi_ht.innerHTML = "tên không chứa số và kí tự đặc biệt";
            loi_ht.style.display = "block";
            checkloi = false;
        }
    }
    //pass
    /*var checkpass = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$/;
    if(pass==""){
        loi_pass.style.display = "block";
        loi_pass.innerHTML="Chưa nhập";
        checkloi=false;
    }
    else {
        if (checkpass.test(pass)) {
            loi_pass.innerHTML = "";
            loi_pass.style.display = "none";
        }
        else {
            loi_pass.innerHTML = "ko";
            loi_pass.style.display = "block";
            checkloi = false;
        }
    }*/
    var chuhoa = /[A-Z]/g;
    var chuthuong = /[a-z]/g;
    var number = /[0-9]/g;
    var ktdacbiet = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/g;
    var arraypwd = pass.length;
    if (pass == "") {
        loi_pass.style.display = "block";
        loi_pass.innerHTML = "Chưa nhập";
        checkloi = false;
    }
    else if (pass.match(chuhoa) == null || pass.match(chuthuong) == null
        || pass.match(number) == null || pass.match(ktdacbiet) == null) {
        loi_pass.style.display = "block";
        loi_pass.innerHTML = "sai định dạng";
        ketqua = false;
    }
    else if (arraypwd < 7) {
        loi_pass.style.display = "block";
        loi_pass.innerHTML = "Mật khẩu hơn 7 kí tự";
        ketqua = false;
    }
    else {
        loi_pass.innerHTML = "";
        loi_pass.style.display = "none";
    }


    //repass
    if (repass == ""){
        loi_repass.style.display = "block";
        loi_repass.innerHTML="Chưa nhập";
        checkloi=false;
    }
    else {
        if (repass != pass) {
            loi_repass.innerHTML = "mật khẩu chưa khớp";
            loi_repass.style.display = "block";
            checkloi = false;
        } else {
        loi_repass.innerHTML="";
            loi_repass.style.display = "none";
        }
    }
     return checkloi;
}