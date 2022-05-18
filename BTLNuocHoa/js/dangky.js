function checkdangky(){
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
    else{
        loi_email.innerHTML="";
        loi_email.style.display = "none";
    }

    //hoten
    if(hoten==""){
        loi_ht.style.display = "block";
        loi_ht.innerHTML="Chưa nhập";
        checkloi=false;
    }
    else{
        loi_ht.innerHTML="";
        loi_ht.style.display = "none";
    }

    //pass
    if(pass==""){
        loi_pass.style.display = "block";
        loi_pass.innerHTML="Chưa nhập";
        checkloi=false;
    }
    else{
        loi_pass.innerHTML="";
        loi_pass.style.display = "none";
    }

    //repass
    if(repass==""){
        loi_repass.style.display = "block";
        loi_repass.innerHTML="Chưa nhập";
        checkloi=false;
    }
    else{
        loi_repass.innerHTML="";
        loi_repass.style.display = "none";
    }
     return checkloi;
}