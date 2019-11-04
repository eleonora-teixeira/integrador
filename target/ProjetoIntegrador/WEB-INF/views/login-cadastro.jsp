<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="generator" content="Mobirise v4.11.2, mobirise.com">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <link rel="shortcut icon" href="assets/images/gamepad-1.svg" type="image/x-icon">
    <meta name="description" content="">

    <title>Login/Cadastro</title>
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="assets/dropdown/css/style.css">
    <link rel="stylesheet" href="assets/tether/tether.min.css">
    <link rel="stylesheet" href="assets/socicon/css/styles.css">
    <link rel="stylesheet" href="assets/theme/css/style.css">
    <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css">
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
</head>

<body>
<c:out value="${requestScope.usuario}" />
    <section class="menu cid-rFyJa1Kz3d" once="menu" id="menu1-a">
        <nav
            class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <div class="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </button>
            <form action="redirect" method="post">
                            <div class="menu-logo">
                                <div class="navbar-brand">
                                    <span class="navbar-logo">
                                        <button name="butao" value="logo" style="background-color: transparent; border-color: transparent">
                                            <img src="assets/images/gamepad-1.svg" alt="Mobirise" title="" style="height: 3.8rem;">
                                        </button>
                                    </span>
                                    <span class="navbar-caption-wrap">
                                        <button name="butao" value="logo" class="navbar-caption text-white display-4" style="background-color: transparent; border-color: transparent">GAMESTATION</button>
                                    </span>
                                </div>
                            </div>
                        </form>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                    <li class="nav-item dropdown">
                        <a class="nav-link link text-white dropdown-toggle display-4" href="https://mobirise.com"
                            data-toggle="dropdown-submenu" aria-expanded="false">PLAYSTATION</a>
                        <div class="dropdown-menu">
                            <a class="text-white dropdown-item display-4" href="#" aria-expanded="false">PLAYSTATION
                                3</a>
                            <form action="redirect" method="post">
                                <button class="text-white dropdown-item display-4" name="butao" value="pesquisa" aria-expanded="false">PLAYSTATION 4</button>
                            </form>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link link text-white dropdown-toggle display-4" href="#"
                            data-toggle="dropdown-submenu" aria-expanded="false">XBOX</a>
                        <div class="dropdown-menu">
                            <a class="text-white dropdown-item display-4" href="#">XBOX 360</a>
                            <a class="text-white dropdown-item display-4" href="#" aria-expanded="false">XBOX ONE</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link link text-white dropdown-toggle display-4" href="#"
                            data-toggle="dropdown-submenu" aria-expanded="false">NINTENDO</a>
                        <div class="dropdown-menu">
                            <a class="text-white dropdown-item display-4" href="#">NINTENDO WII</a>
                            <a class="text-white dropdown-item display-4" href="#" aria-expanded="false">NINTENDO WII
                                U</a>
                            <a class="text-white dropdown-item display-4" href="#" aria-expanded="false">NINTENDO
                                SWITCH</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link link text-white display-4" href="WEB-INF/views/carrinhi.jsp" aria-expanded="false">
                            <span class="mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </section>
    <!--LOGIN-->

    <form action="login" method="post">
    <section class="header15 cid-rFyJE4rtkk" id="header15-g">
        <div class="container align-right">
            <div class="row">
                <div class="mbr-white col-lg-8 col-md-7 content-container">
                    <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1">JÁ SOU CADASTRADO!</h1>

                </div>
                <div class="col-lg-4 col-md-5">
                    <div class="form-container">
                        <div class="media-container-column" data-form-type="formoid">
                            <!---Formbuilder Form--->
                                <div class="dragArea row">
                                    <div class="col-md-12 form-group " data-for="email">
                                        <input type="email" name="login" placeholder="Email" data-form-field="Email" required="required" class="form-control px-3 display-7">
                                    </div>
                                    <div data-for="phone" class="col-md-12 form-group ">
                                        <input type="password" name="senha" placeholder="Senha" data-form-field="Senha" class="form-control px-3 display-7">
                                    </div>
                                    <div class="col-md-12 input-group-btn">
                                        <strong style="color:red;">${mensagem}</strong>
                                        <button type="submit" class="btn btn-form btn-primary display-4" name="butao" value="entrar">ENTRAR</button>
                                    </div>
                                </div>
                            <!---Formbuilder Form--->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</form>
    <!--CADASTRO-->
    <form action="cadastro" method="post">
    <section class="header15 cid-rFyKIk8oot" id="header15-h">
        <div class="container align-right">
            <div class="row">
                <div class="mbr-white col-lg-8 col-md-7 content-container">
                    <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1">AINDA NÃO POSSUO CADASTRO!</h1>
                </div>
                <div class="col-lg-4 col-md-5">
                    <div class="form-container">
                        <div class="media-container-column" data-form-type="formoid">
                            <!---Formbuilder Form--->
                            <form action="#" method="POST" class="mbr-form form-with-styler" data-form-title="Mobirise Form">
                                <div class="dragArea row">
                                    <div class="col-md-12 form-group " data-for="name">
                                        <input type="text" name="nome" placeholder="Nome Completo" data-form-field="nome" required="required" class="form-control px-3 display-7">
                                    </div>
                                    <div class="col-md-12 form-group " data-for="email">
                                        <input type="email" name="email" placeholder="Email" data-form-field="Email" required="required" class="form-control px-3 display-7">
                                    </div>
                                    <div data-for="senha" class="col-md-12 form-group ">
                                        <input type="password" name="senha" placeholder="Senha" data-form-field="Senha" required="required" class="form-control px-3 display-7">
                                    </div>

                                    <div class="col-md-12 input-group-btn">
                                        <button type="submit" class="btn btn-form btn-danger display-4" name="butao" value="cadastrar">CADASTRAR</button>
                                    </div>
                                </div>
                            </form>
                            <!---Formbuilder Form--->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</form>
    <section once="footers" class="cid-rFyJa9hyLb" id="footer7-e">
         <div class="container">
            <div class="media-container-row align-center mbr-white">

                <div class="row social-row">
                    <div class="social-list align-right pb-2">
                        <div class="soc-item">
                            <a href="https://twitter.com/mobirise" target="_blank">
                                <span class="mbr-iconfont mbr-iconfont-social socicon-facebook socicon"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://twitter.com/mobirise" target="_blank">
                                <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://twitter.com/mobirise" target="_blank">
                                <span class="mbr-iconfont mbr-iconfont-social socicon-instagram socicon"></span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row row-copirayt">
                    <p class="mbr-text mb-0 mbr-fonts-style mbr-white align-center display-7">
                        GAMESTATION@MAIL.COM</p>
                </div>
            </div>
        </div>
    </section>


    <script src="assets/web/assets/jquery/jquery.min.js"></script>
    <script src="assets/popper/popper.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/smoothscroll/smooth-scroll.js"></script>
    <script src="assets/dropdown/js/nav-dropdown.js"></script>
    <script src="assets/dropdown/js/navbar-dropdown.js"></script>
    <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
    <script src="assets/tether/tether.min.js"></script>
    <script src="assets/theme/js/script.js"></script>
    <script src="assets/formoid/formoid.min.js"></script>


</body>

</html>