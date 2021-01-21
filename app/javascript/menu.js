function menu() {
  const menu_btn1 = document.getElementById("menu_btn1");
  const pullDown1 = document.getElementById("menu1")

  menu_btn1.addEventListener("mouseover", function(){
    this.setAttribute("style", "border-bottom:1px solid #339933;;")
  })

  menu_btn1.addEventListener('mouseout', function(){
    this.removeAttribute("style", "border-bottom:1px solid #339933;;")
  })
  
  menu_btn1.addEventListener('click', function() {
    if (pullDown1.getAttribute("style") == "display:block;") {
      pullDown1.removeAttribute("style", "display:block;")
    } else {
      pullDown1.setAttribute("style", "display:block;")
    }
  })

  const menu_btn2 = document.getElementById("menu_btn2");
  const pullDown2 = document.getElementById("menu2")

  menu_btn2.addEventListener("mouseover", function(){
    this.setAttribute("style", "border-bottom:1px solid #339933;;")
  })

  menu_btn2.addEventListener('mouseout', function(){
    this.removeAttribute("style", "border-bottom:1px solid #339933;;")
  })
  
  menu_btn2.addEventListener('click', function() {
    if (pullDown2.getAttribute("style") == "display:block;") {
      pullDown2.removeAttribute("style", "display:block;")
    } else {
      pullDown2.setAttribute("style", "display:block;")
    }
  })

  const menu_btn3 = document.getElementById("menu_btn3");
  const pullDown3 = document.getElementById("menu3")

  menu_btn3.addEventListener("mouseover", function(){
    this.setAttribute("style", "border-bottom:1px solid #339933;;")
  })

  menu_btn3.addEventListener('mouseout', function(){
    this.removeAttribute("style", "border-bottom:1px solid #339933;;")
  })
  
  menu_btn3.addEventListener('click', function() {
    if (pullDown3.getAttribute("style") == "display:block;") {
      pullDown3.removeAttribute("style", "display:block;")
    } else {
      pullDown3.setAttribute("style", "display:block;")
    }
  })

  const menu_btn4 = document.getElementById("menu_btn4");
  const pullDown4 = document.getElementById("menu4")

  menu_btn4.addEventListener("mouseover", function(){
    this.setAttribute("style", "border-bottom:1px solid #339933;;")
  })

  menu_btn4.addEventListener('mouseout', function(){
    this.removeAttribute("style", "border-bottom:1px solid #339933;;")
  })
  
  menu_btn4.addEventListener('click', function() {
    if (pullDown4.getAttribute("style") == "display:block;") {
      pullDown4.removeAttribute("style", "display:block;")
    } else {
      pullDown4.setAttribute("style", "display:block;")
    }
  })

  const menu_btn5 = document.getElementById("menu_btn5");
  const pullDown5 = document.getElementById("menu5")

  menu_btn5.addEventListener("mouseover", function(){
    this.setAttribute("style", "border-bottom:1px solid #339933;;")
  })

  menu_btn5.addEventListener('mouseout', function(){
    this.removeAttribute("style", "border-bottom:1px solid #339933;;")
  })
  
  menu_btn5.addEventListener('click', function() {
    if (pullDown5.getAttribute("style") == "display:block;") {
      pullDown5.removeAttribute("style", "display:block;")
    } else {
      pullDown5.setAttribute("style", "display:block;")
    }
  })

  const menu_btn6 = document.getElementById("menu_btn6");
  const pullDown6 = document.getElementById("menu6")

  menu_btn6.addEventListener("mouseover", function(){
    this.setAttribute("style", "border-bottom:1px solid #339933;;")
  })

  menu_btn6.addEventListener('mouseout', function(){
    this.removeAttribute("style", "border-bottom:1px solid #339933;;")
  })
  
  menu_btn6.addEventListener('click', function() {
    if (pullDown6.getAttribute("style") == "display:block;") {
      pullDown6.removeAttribute("style", "display:block;")
    } else {
      pullDown6.setAttribute("style", "display:block;")
    }
  })

  const menu_btn7 = document.getElementById("menu_btn7");
  const pullDown7 = document.getElementById("menu7")

  menu_btn7.addEventListener("mouseover", function(){
    this.setAttribute("style", "border-bottom:1px solid #339933;;")
  })

  menu_btn7.addEventListener('mouseout', function(){
    this.removeAttribute("style", "border-bottom:1px solid #339933;;")
  })
  
  menu_btn7.addEventListener('click', function() {
    if (pullDown7.getAttribute("style") == "display:block;") {
      pullDown7.removeAttribute("style", "display:block;")
    } else {
      pullDown7.setAttribute("style", "display:block;")
    }
  })

  const menu_btn8 = document.getElementById("menu_btn8");
  const pullDown8 = document.getElementById("menu8")

  menu_btn8.addEventListener("mouseover", function(){
    this.setAttribute("style", "border-bottom:1px solid #339933;;")
  })

  menu_btn8.addEventListener('mouseout', function(){
    this.removeAttribute("style", "border-bottom:1px solid #339933;;")
  })
  
  menu_btn8.addEventListener('click', function() {
    if (pullDown8.getAttribute("style") == "display:block;") {
      pullDown8.removeAttribute("style", "display:block;")
    } else {
      pullDown8.setAttribute("style", "display:block;")
    }
  })

  const menu_btn9 = document.getElementById("menu_btn9");
  const pullDown9 = document.getElementById("menu9")

  menu_btn9.addEventListener("mouseover", function(){
    this.setAttribute("style", "border-bottom:1px solid #339933;;")
  })

  menu_btn9.addEventListener('mouseout', function(){
    this.removeAttribute("style", "border-bottom:1px solid #339933;;")
  })
  
  menu_btn9.addEventListener('click', function() {
    if (pullDown9.getAttribute("style") == "display:block;") {
      pullDown9.removeAttribute("style", "display:block;")
    } else {
      pullDown9.setAttribute("style", "display:block;")
    }
  })

  const menu_btn10 = document.getElementById("menu_btn10");
  const pullDown10 = document.getElementById("menu10")

  menu_btn10.addEventListener("mouseover", function(){
    this.setAttribute("style", "border-bottom:1px solid #339933;;")
  })

  menu_btn10.addEventListener('mouseout', function(){
    this.removeAttribute("style", "border-bottom:1px solid #339933;;")
  })
  
  menu_btn10.addEventListener('click', function() {
    if (pullDown10.getAttribute("style") == "display:block;") {
      pullDown10.removeAttribute("style", "display:block;")
    } else {
      pullDown10.setAttribute("style", "display:block;")
    }
  })

}
window.addEventListener("turbolinks:load", menu);