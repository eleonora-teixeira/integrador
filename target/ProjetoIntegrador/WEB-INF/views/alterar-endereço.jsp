<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
  
  <title>Alterar Endereço</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
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
            <div class="menu-logo">
                <div class="navbar-brand">
                    <span class="navbar-logo">
                        <a href="index.html">
                            <img src="assets/images/gamepad-1.svg" alt="Mobirise" title="" style="height: 3.8rem;">
                        </a>
                    </span>
                    <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4"
                            href="index.html">GAMESTATION</a></span>
                </div>
            </div>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                    <li class="nav-item dropdown">
                        <a class="nav-link link text-white dropdown-toggle display-4" href="https://mobirise.com"
                            data-toggle="dropdown-submenu" aria-expanded="false">PLAYSTATION</a>
                        <div class="dropdown-menu">
                            <a class="text-white dropdown-item display-4" href="#" aria-expanded="false">PLAYSTATION
                                3</a>
                            <a class="text-white dropdown-item display-4" href="pesquisa-categoria.html"
                                aria-expanded="false">PLAYSTATION 4</a>
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
                        <form action="redirect" method="post">
                        <button class="nav-link link text-white display-4" name="butao" value="carrinho" aria-expanded="false">
                            <span class="mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>
                        </button>
                        </form>
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
  <section class="mbr-section info1 cid-rFXrZr0T2t" id="info1-3c">
    <div class="container" style="margin-top: 50px">
        <div class="row justify-content-center content-row">
            <div class="media-container-column title col-12 col-lg-7 col-md-6">
                
                <h2 class="align-left mbr-bold mbr-fonts-style display-5">ESCOLHA O ENDEREÇO</h2>
            </div>
            <div class="media-container-column col-12 col-lg-3 col-md-4">
                <div class="mbr-section-btn align-right py-4"><a class="btn btn-primary display-4" href="novo-endereço.html">&nbsp;NOVO ENDEREÇO</a></div>
            </div>
        </div>
    </div>
</section>

<!--EDNDEREÇOS-->
<section class="timeline2 cid-rFWzDm2sy9" id="timeline2-1i">
        <div class="container align-center">
            <div class="container timelines-container" mbri-timelines="">
                <!--1-->
                <div class="row timeline-element reverse separline">
                    <span class="iconsBackground">
                        <span class="mbr-iconfont mbri-home"></span>
                    </span>          
                    <div class="col-xs-12 col-md-6 align-left">
                        <div class="timeline-text-content">
                            <h4 class="mbr-timeline-title pb-3 mbr-fonts-style display-5">(NOME DESTINATÁRIO)</h4>
                            <p class="mbr-timeline-text mbr-fonts-style display-7">RUA 1, 100 - PROXIMO AO MERCADO</p>
                            <p class="mbr-timeline-text mbr-fonts-style display-7">99999-99 - CAMOBI</p>
                            <p class="mbr-timeline-text mbr-fonts-style display-7">SANTA MARIA/RS</p>
                            <div class="row">
                                <div class="col-md-12 text-right">
                                    <a href="" style="color: black">USAR ENDEREÇO<i class="material-icons"><img style="margin-top: -5px;margin-left: 5px" src="assets/images/check_circle_outline-24px.svg"></i></a>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
                <!--2-->
                <div class="row timeline-element">
                    <span class="iconsBackground">
                        <span class="mbr-iconfont"></span>
                    </span>
                    <div class="col-xs-12 col-md-6 align-left ">
                        <div class="timeline-text-content">
                            <h4 class="mbr-timeline-title pb-3 mbr-fonts-style display-5">(NOME DESTINATÁRIO)</h4>
                            <p class="mbr-timeline-text mbr-fonts-style display-7">RUA A4, 130</p>
                            <p class="mbr-timeline-text mbr-fonts-style display-7">00000-00 - COHAB</p>
                            <p class="mbr-timeline-text mbr-fonts-style display-7">SANTA MARIA/RS</p>
                            <div class="row">
                                <div class="col-md-12 text-right">
                                    <a href="" style="color: black">USAR ENDEREÇO<i class="material-icons"><img style="margin-top: -5px; margin-left: 5px" src="assets/images/check_circle_outline-24px.svg"></i></a>
                                </div>                                
                            </div>
                        </div>
                        
                    </div>
                </div>
                <!--3-->
                
                <!--4-->
                
                <!--5-->
                
                <!--6-->
                
                <!--7-->
                
                <!--8-->
                
                <!--9-->
                
                <!--10-->
                
                <!--11-->
                
                <!--12-->
                
            </div>
        </div>
</section>
<section once="footers" class="cid-rFXrNahx9e" id="footer7-3b">

    

    

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
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/dropdown/js/nav-dropdown.js"></script>
  <script src="assets/dropdown/js/navbar-dropdown.js"></script>
  <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/smoothscroll/smooth-scroll.js"></script>
  <script src="assets/theme/js/script.js"></script>
  
  
</body>
</html>