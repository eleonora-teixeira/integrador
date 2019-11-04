<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html  >
<head>
  <!-- Site made with Mobirise Website Builder v4.11.2, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.11.2, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/gamepad-1.svg" type="image/x-icon">
  <meta name="description" content="">
  
  <title>Pesquisa/Categoria</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
<c:out value="${requestScope.usuario}" />
    <!--NAVBAR-->
    <section class="menu cid-rFWnhSolwH" once="menu" id="menu1-m">
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
                                <button name="butao" value="logo-cli" style="background-color: transparent; border-color: transparent">
                                    <img src="assets/images/gamepad-1.svg" alt="Mobirise" title="" style="height: 3.8rem;">
                                </button>
                            </span>
                            <span class="navbar-caption-wrap">
                                <button name="butao" value="logo-cli" class="navbar-caption text-white display-4" style="background-color: transparent; border-color: transparent">GAMESTATION</button>
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
                                <a class="text-white dropdown-item display-4" href="#" aria-expanded="false">NINTENDO WII</a>
                                <a class="text-white dropdown-item display-4" href="#" aria-expanded="false">NINTENDO SWITCH</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <form action="redirect" method="post">
                                <button class="nav-link link text-white display-4" name="butao" value="carrinho" aria-expanded="false" style="background-color: transparent; border-color: transparent">
                                    <span class="mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>
                                </button>
                            </form>
                            <%--<form action="redirect" method="post">
                                <input type="hidden" name="butao" value="carrinho">
                                <a class="nav-link link text-white display-4" aria-expanded="false">
                                    <span class="mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>
                                </a>
                            </form>--%>
                        </li>

                        <li class="nav-item dropdown open">
                            <a class="nav-link link text-white dropdown-toggle display-4" href="#" aria-expanded="true"
                                data-toggle="dropdown-submenu">
                                <span class="mbrib-user mbr-iconfont mbr-iconfont-btn"></span>${usuario.getNome()}


                            </a>
                            <div class="dropdown-menu">
                                <form action="perfil" method="post">
                                    <button type="submit" class="text-white dropdown-item display-4" name="butao" value="vaiperfil" aria-expanded="true">MINHA CONTA</button>
                                </form>
                                <form action="redirect" method="post">
                                    <button type="submit" class="text-white dropdown-item display-4" name="butao" value="endereco" aria-expanded="true">MEUS ENDEREÇOS</button>
                                </form>
                                <form action="redirect" method="post">
                                    <button type="submit" class="text-white dropdown-item display-4" name="butao" value="pedido" aria-expanded="true">MEUS PEDIDOS</button>
                                </form>
                                <form action="login" method="post">
                                    <button class="text-white dropdown-item display-4" type="submit" name="butao" value="sair" aria-expanded="true">SAIR</button>
                                </form>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </section>

    <!--PESQUISA-->
    <section class="mbr-section form3 cid-rFWrky3Q2k" id="form3-12">
        <div class="container">
            <div class="row py-2 justify-content-center">
                <div class="col-12 col-lg-6  col-md-8 " data-form-type="formoid">
                    <!---Formbuilder Form--->
                    <form action="#" method="POST" class="mbr-form form-with-styler" data-form-title="Mobirise Form">
                        <div class="dragArea row">
                            <div class="form-group col" data-for="email">
                                <input type="email" name="email" data-form-field="Email" class="form-control display-7" placeholder="O que você está procurando?">
                            </div>
                                <div class="col-auto input-group-btn"><button type="submit"class="btn  btn-primary display-4">Pesquisar</button>
                            </div>
                        </div>
                    </form>
                    <!---Formbuilder Form--->
                </div>
            </div>
        </div>
    </section>

<section class="header1 cid-rFWyauX4L1" id="header16-1h">

    

    

    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-10 align-center">
                <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-5">
                    PLAYSTATION 4</h1>
                
                
                
            </div>
        </div>
    </div>

</section>

<section class="services1 cid-rFWOOO5q4Y" id="services1-26">
    <!---->
    
    <!---->
    <!--Overlay-->
    
    <!--Container-->
    <div class="container">
        <div class="row justify-content-center">
            <!--Titles-->
            <div class="title pb-5 col-12">
                
                
            </div>
            <!--Card-1-->
            <div class="card col-12 col-md-6 p-3 col-lg-4">
                <div class="card-wrapper">
                    <div class="card-img">
                        <a href="page9.html"><img src="assets/images/91w0apsjdwl.-sl1500-ps4-696x867.jpg" alt="Mobirise" title=""></a>
                    </div>
                    <div class="card-box">
                        <h4 class="card-title mbr-fonts-style display-5 text-center">Nome produto</h4>
                        <!--Btn-->
                        <div class="mbr-section-btn text-center">
                            <button href="#" class="btn btn-danger btn-sm display-4" style="margin-right: 10px">R$ XXX</button>
                            <button href="#" class="btn btn-primary btn-sm display-4">DETALHES</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Card-2-->
            <div class="card col-12 col-md-6 p-3 col-lg-4">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/red-dead-redemption-3-696x867.jpg" alt="Mobirise" title="">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title mbr-fonts-style display-5 text-center">Nome produto</h4>
                        <!--Btn-->
                        <div class="mbr-section-btn row text-center">
                            <form>
                                <button href="#" class="btn btn-danger btn-sm display-4" style="margin-right: 10px">R$ XXX</button>
                            </form>
                            <form action="redirect" method="post">
                                <button name="butao" value="detalhes" class="btn btn-primary btn-sm display-4">DETALHES</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--Card-3-->
            <div class="card col-12 col-md-6 p-3 col-lg-4 last-child">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/wild-hunt-696x867.png" alt="Mobirise" title="">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title mbr-fonts-style display-5 text-center">Nome produto</h4>
                        <!--Btn-->
                        <div class="mbr-section-btn text-center">
                            <button href="#" class="btn btn-danger btn-sm display-4" style="margin-right: 10px">R$ XXX</button>
                            <button href="#" class="btn btn-primary btn-sm display-4">DETALHES</button>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
    </div>
</section>

<section class="services1 cid-rFWOPCALS5" id="services1-27">
    <!---->
    
    <!---->
    <!--Overlay-->
    
    <!--Container-->
    <div class="container">
        <div class="row justify-content-center">
            <!--Card-1-->
            <div class="card col-12 col-md-6 p-3 col-lg-4">
                <div class="card-wrapper">
                    <div class="card-img">
                        <a href="page9.html"><img src="assets/images/916t5h6sctl.-sl1500-696x867.jpg" alt="Mobirise" title=""></a>
                    </div>
                    <div class="card-box">
                        <h4 class="card-title mbr-fonts-style display-5 text-center">Nome produto</h4>
                        <!--Btn-->
                        <div class="mbr-section-btn text-center">
                            <button href="#" class="btn btn-danger btn-sm display-4" style="margin-right: 10px">R$ XXX</button>
                            <button href="#" class="btn btn-primary btn-sm display-4">DETALHES</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Card-2-->
            <div class="card col-12 col-md-6 p-3 col-lg-4">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/marvels-spider-man-696x867.jpg" alt="Mobirise" title="">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title mbr-fonts-style display-5 text-center">Nome produto</h4>
                        <!--Btn-->
                        <div class="mbr-section-btn text-center">
                            <button href="#" class="btn btn-danger btn-sm display-4" style="margin-right: 10px">R$ XXX</button>
                            <button href="#" class="btn btn-primary btn-sm display-4">DETALHES</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Card-3-->
            <div class="card col-12 col-md-6 p-3 col-lg-4 last-child">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/horizon-zero-dawn-complete-edition-capa-papel-port-ps4-d-nq-np-952776-mlb29827107850-042019-f-696x867.jpg" alt="Mobirise" title="">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title mbr-fonts-style display-5 text-center">Nome produto</h4>
                        <!--Btn-->
                        <div class="mbr-section-btn text-center">
                            <button href="#" class="btn btn-danger btn-sm display-4" style="margin-right: 10px">R$ XXX</button>
                            <button href="#" class="btn btn-primary btn-sm display-4">DETALHES</>
                        </div>
                    </div>
                </div>
            </div>
            <!--Card-4-->
            
        </div>
    </div>
</section>

<section once="footers" class="cid-rFWxQvsPgN" id="footer7-1g">

    

    

    <div class="container">
        <div class="media-container-row align-center mbr-white">
            
            <div class="row social-row">
                <div class="social-list align-right pb-2">
                    
                    
                    
                    
                    
                    
                <div class="soc-item">
                        <a href="https://twitter.com/mobirise" target="_blank">
                            <span class="mbr-iconfont mbr-iconfont-social socicon-facebook socicon"></span>
                        </a>
                    </div><div class="soc-item">
                        <a href="https://twitter.com/mobirise" target="_blank">
                            <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social"></span>
                        </a>
                    </div><div class="soc-item">
                        <a href="https://twitter.com/mobirise" target="_blank">
                            <span class="mbr-iconfont mbr-iconfont-social socicon-instagram socicon"></span>
                        </a>
                    </div></div>
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