<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <!-- Site made with Mobirise Website Builder v4.11.2, https://mobirise.com -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="generator" content="Mobirise v4.11.2, mobirise.com">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <link rel="shortcut icon" href="assets/images/gamepad-1.svg" type="image/x-icon">
    <meta name="description" content="">

    <title>Detalhes Produto</title>
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
                        <a class="nav-link link text-white display-4" href="carrinho.html" aria-expanded="false">
                            <span class="mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>
                        </a>
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
    <section class="mbr-section form3 cid-rFWC7sDgMh" id="form3-1u">
        <div class="container">
            <div class="row py-2 justify-content-center">
                <div class="col-12 col-lg-6  col-md-8 " data-form-type="formoid">
                    <!---Formbuilder Form--->
                    <form action="#" method="POST" class="mbr-form form-with-styler" data-form-title="Mobirise Form">
                        <div class="dragArea row">
                            <div class="form-group col" data-for="pesquisa">
                                <input type="email" name="pesquisa" data-form-field="Pesquisa" class="form-control display-7" placeholder="O que você está procurando?">
                            </div>
                            <div class="col-auto input-group-btn">
                                <button type="submit" class="btn  btn-primary display-4">PESQUISAR</button>
                            </div>
                        </div>
                    </form>
                    <!---Formbuilder Form--->
                </div>
            </div>
        </div>
    </section>
    <!--DETALHES-->
    <section class="services2 cid-rFWCs2ee94" id="services2-1z">
        <div class="container">
            <div class="col-md-12">
                <div class="media-container-row">
                    <div class="mbr-figure" style="width: 50%;">
                        <img src="assets/images/red-dead-redemption-2-952x1186.jpg" alt="Mobirise" title="">
                    </div>
                    <div class="align-left aside-content">
                        <h2 class="mbr-title pt-2 mbr-fonts-style display-2">RED DEAD REDEMPTION 2</h2>
                        <div class="mbr-section-text">
                            <p class="mbr-text text1 pt-2 mbr-light mbr-fonts-style display-7">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab accusantium dolores
                                doloribus
                                eligendi eum illo
                            </p>
                            <p class="mbr-text text2 pt-4 mbr-light mbr-fonts-style display-5">R$ XXX,X</p>
                        </div>
                        <!--Btn-->
                        <div class="mbr-section-btn pt-3 align-left">
                            <button href="#" class="btn btn-danger-outline display-4"><span class="mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>COMPRAR</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section once="footers" class="cid-rFWC7BxHrQ" id="footer7-1x">
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
                        GAMESTATION@MAIL.COM
                    </p>
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