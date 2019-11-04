<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <title>Fializar Compra</title>
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="assets/dropdown/css/style.css">
    <link rel="stylesheet" href="assets/datatables/data-tables.bootstrap4.min.css">
    <link rel="stylesheet" href="assets/tether/tether.min.css">
    <link rel="stylesheet" href="assets/socicon/css/styles.css">
    <link rel="stylesheet" href="assets/theme/css/style.css">
    <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css">
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
</head>

<body>
<c:out value="${requestScope.usuario}" />
    <!--NAVBAR-->
    <section class="menu cid-rFWnhSolwH" once="menu" id="menu1-m">
        <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
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
                            <a class="text-white dropdown-item display-4" href="#" aria-expanded="false">
                                PLAYSTATION
                                3
                            </a>
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
                            <a class="text-white dropdown-item display-4" href="#" aria-expanded="false">
                                NINTENDO WII
                                U
                            </a>
                            <a class="text-white dropdown-item display-4" href="#" aria-expanded="false">
                                NINTENDO
                                SWITCH
                            </a>
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
                            <a class="text-white dropdown-item display-4" href="perfil.html" aria-expanded="false">
                                MINHA
                                CONTA
                            </a>
                            <a class="text-white dropdown-item display-4" href="endereço.html" aria-expanded="true">
                                MEUS
                                ENDEREÇOS
                            </a>
                            <a class="text-white dropdown-item display-4" href="pedidos.html" aria-expanded="false">
                                MEUS
                                PEDIDOS
                            </a>
                            <form action="login" method="post">
                                <button class="text-white dropdown-item display-4" type="submit" name="butao" value="sair" aria-expanded="true">SAIR</button>
                            </form>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </section>
    <!--TABELA PRODUTOS-->
    <section class="section-table cid-rFXiYENpV6" id="table1-2c">
        <div class="container container-table">
            <h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-5">DADOS ENTREGA</h2>
            <div class="row" style="margin-top:144px">

                <div class="col-md-6">
                    <section class="section-table cid-rFXkuCJSLp" id="table1-2d">
                        <div class="container container-table text-center">
                            <div class="table-wrapper">
                                <div class="container scroll">
                                    <table class="table" cellspacing="0">
                                        <thead>
                                            <h5 class="head-item mbr-fonts-style display-7">VALORES</h5>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="body-item mbr-fonts-style display-7">SUBTOTAL:</td>
                                                <td class="body-item mbr-fonts-style display-7">R$ xxx,xx</td>
                                            </tr>
                                            <tr>
                                                <td class="body-item mbr-fonts-style display-7">FRETE:</td>
                                                <td class="body-item mbr-fonts-style display-7">R$ xxx,xx</td>
                                            </tr>
                                            <tr>
                                                <td class="body-item mbr-fonts-style display-7">TOTAL:</td>
                                                <td class="body-item mbr-fonts-style display-7">R$ xxx,xx</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="col-md-6" style="margin-top:22px">
                    <div class="timeline-element">
                        <span class="iconsBackground">
                            <span class="mbr-iconfont "></span>
                        </span>
                        <div class="col-md-12 col-md-6">
                            <div class="timeline-text-content">
                                <h5 class="mbr-timeline-title pb-3 mbr-fonts-style display-7">(NOME DESTINATÁRIO)</h5>
                                <p class="mbr-timeline-text mbr-fonts-style display-7">RUA A4, 130</p>
                                <p class="mbr-timeline-text mbr-fonts-style display-7">00000-00 - COHAB</p>
                                <p class="mbr-timeline-text mbr-fonts-style display-7">SANTA MARIA/RS</p>
                            </div>
                        </div>
                        <hr />
                        <div class="col-md-12 col-md-6 align-left display-7">
                            <div class="timeline-text-content">
                                <a href="#" style="color:black">
                                    <span class="mbr-iconfont mbri-home" style="margin-right: 8px"></span>Alterar endereço de entrega
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section class="mbr-section info4 cid-rFXnF8CGfN">
                <div class="container">
                    <div class="justify-content-center row">
                        <div class="media-container-column title col-12 col-md-10">
                            <div class="mbr-section-btn align-right py-4">
                                <a class="btn btn-secondary-outline display-4" href="#">CANCELARCOMPRA</a>
                                <a class="btn btn-danger display-4" href="pedidos.html">FINALIZAR COMPRA</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <br /><br /><br /><br /><br /><br /><br /><br />
    </section>
    
    <section once="footers" class="cid-rFWQRLS1Yp" id="footer7-2b" >
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
    <script src="assets/datatables/jquery.data-tables.min.js"></script>
    <script src="assets/datatables/data-tables.bootstrap4.min.js"></script>
    <script src="assets/tether/tether.min.js"></script>
    <script src="assets/theme/js/script.js"></script>
    <script src="assets/formoid/formoid.min.js"></script>


</body>

</html>