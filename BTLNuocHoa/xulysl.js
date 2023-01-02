function giamsoLuong(i) {
   
    value = parseInt(document.getElementById("index${"+i+"}").value);
    value--;
    
    document.getElementById("index${"+i+"}").value = value;
    a = document.getElementById("price${"+i+"}").value;
    b = parseInt(value) * a;
   
  /*  console.log(index${i});*/
    document.getElementById("thanhtien${"+i+"}").innerHTML = b;
    document.getElementById("thanhtien${"+i+"}").value = b;
  
    
}
function tangSL(i) {
  
    value = parseInt(document.getElementById("index${" + i + "}").value);
    value++;
    document.getElementById("index${"+i+"}").value = value;
    a = document.getElementById("price${"+i+"}").value;
    b = parseInt(value) * a;

    /*  console.log(index${i});*/
    document.getElementById("thanhtien${"+i+"}").innerHTML = b;
    document.getElementById("thanhtien${"+i+"}").value = b;
    
}


