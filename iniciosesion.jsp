<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link href="styleeee.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="IMG/logo2.png">
        <title>Iniciar Sesión</title>
    </head>
 <body>
        <div class="head">

    <div class="Logo">
              <a href="#"><img src="IMG/logo2.png" alt=""/></a>
    </div>
    <nav class="navbar">
        <a href="index.html">Inicio</a>
        <a href="nosotros.html">Nosotros</a>
        <a href="contactos.html">Contacto</a>
        <a href="iniciosesion.jsp">Iniciar Sesión</a>
    </nav>

    </div>

     
 <div class="wrapper">
  
<!----------------------------- Box ----------------------------------->    
    <div class="form-box">
        <!------------------- Inicio Sesión -------------------------->
        <div class="login-container" id="login">
            <div class="top">
                <span>¿No tienes cuenta? <a href="#" onclick="register()">Registrarse</a></span>
                <header>Iniciar Sesión</header>
            </div>
            <form action="login" method="post">
            <div class="input-box">
                <input id="identificador" name="identificador" required type="text" class="input-field" placeholder="Usuario o email" >
                <i class="bx bx-user"></i>
            </div>
            <div class="input-box">
                <input type="password" id="password" name="password" minlength="5" maxlength="15" required class="input-field" placeholder="Contraseña(5 a 15 caracteres)">
                <i class="bx bx-lock-alt"></i>
            </div>
            <div class="input-box">
                <input type="submit" class="submit" value="Iniciar Sesión">
                     <%
            String error = request.getParameter("error");
                if ("1".equals(error)) {
            %>
                                <p class="error">Usuario/Email o contraseña incorrectos.</p>
            <%
                }
            %>   
            </div>
                </form>
            <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
            <p class="error"><%= errorMessage %></p>
        <%
            }
        %>
            <div class="two-col">
                <div class="one">
                    <input type="checkbox" id="login-check">
                    <label for="login-check">Recordarme</label>
                </div>
                <div class="two">
                    <label><a href="forgotPassword.jsp">¿Olvidaste tu contraseña?</a></label>
                </div>
            </div>
        </div>
    </div>
</div>   
<script>
   
   function myMenuFunction() {
    var i = document.getElementById("navMenu");
    if(i.className === "nav-menu") {
        i.className += " responsive";
    } else {
        i.className = "nav-menu";
    }
   }
 
</script>
<script>
    var a = document.getElementById("loginBtn");
    var b = document.getElementById("registerBtn");
    var x = document.getElementById("login");
    var y = document.getElementById("register");
    function login() {
        x.style.left = "4px";
        y.style.right = "-520px";
        a.className += " white-btn";
        b.className = "btn";
        x.style.opacity = 1;
        y.style.opacity = 0;
    }
    function register() {
        x.style.left = "-510px";
        y.style.right = "5px";
        a.className = "btn";
        b.className += " white-btn";
        x.style.opacity = 0;
        y.style.opacity = 1;
    }
</script>
</body>
</html>
