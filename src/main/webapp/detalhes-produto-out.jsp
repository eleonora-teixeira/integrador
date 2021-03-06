<%@ page import="br.csi.model.Produto" %>
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
    <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
</head>
<body>
    <!--NAVBAR-->
    <section class="menu cid-qTkzRZLJNu" once="menu" id="menu1-0">
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
            <div class="menu-logo">
                <div class="navbar-brand">
                    <span class="navbar-logo">
                        <a href="index.jsp">
                            <img src="assets/images/gamepad-1.svg" alt="Mobirise" title="" style="height: 3.8rem;">
                        </a>
                    </span>
                    <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4"
                            href="index.jsp">GAMESTATION</a></span>
                </div>
            </div>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                                <li class="nav-item dropdown">
                                    <a class="nav-link link text-white dropdown-toggle display-4" href="https://mobirise.com"
                                        data-toggle="dropdown-submenu" aria-expanded="false">PLAYSTATION</a>
                                    <div class="dropdown-menu">
                                        <form action="categoria" method="post" >
                                            <input type="hidden" name="modelo" value="Playstation 3">
                                            <button class="text-white dropdown-item display-4" name="acao" value="vaicategoriaout" aria-expanded="false">PLAYSTATION 3</button>
                                        </form>
                                        <form action="categoria" method="post">
                                            <input type="hidden" name="modelo" value="Playstation 4">
                                            <button class="text-white dropdown-item display-4" name="acao" value="vaicategoriaout" aria-expanded="false">PLAYSTATION 4</button>
                                        </form>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link link text-white dropdown-toggle display-4" data-toggle="dropdown-submenu" aria-expanded="false">XBOX</a>
                                    <div class="dropdown-menu">
                                        <form action="categoria" method="post">
                                            <input type="hidden" name="modelo" value="Xbox 360">
                                            <button class="text-white dropdown-item display-4" name="acao" value="vaicategoriaout" >XBOX 360</button>
                                        </form>
                                        <form action="categoria" method="post">
                                            <input type="hidden" name="modelo" value="Xbox One">
                                            <button class="text-white dropdown-item display-4" name="acao" value="vaicategoriaout" aria-expanded="false">XBOX ONE</button>
                                        </form>

                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link link text-white dropdown-toggle display-4" href="#"
                                        data-toggle="dropdown-submenu" aria-expanded="false">NINTENDO</a>
                                    <div class="dropdown-menu">
                                        <form action="categoria" method="post">
                                            <input type="hidden" name="modelo" value="Wii">
                                            <button class="text-white dropdown-item display-4" name="acao" value="vaicategoriaout">NINTENDO WII</button>
                                        </form>
                                        <form action="categoria" method="post">
                                            <input type="hidden" name="modelo" value="Wii U">
                                            <button class="text-white dropdown-item display-4" name="acao" value="vaicategoriaout" aria-expanded="false">NINTENDO WII U</button>
                                        </form>
                                        <form action="categoria" method="post">
                                            <input type="hidden" name="modelo" value="Switch">
                                            <button class="text-white dropdown-item display-4" name="acao" value="vaicategoriaout" aria-expanded="false">NINTENDO SWITCH</button>
                                        </form>

                                    </div>
                                </li>
                    <li class="nav-item">
                        <a class="nav-link link text-white display-4" href="WEB-INF/views/carrinho.jsp" aria-expanded="false">
                            <span class="mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>
                        </a>
                    </li>
                </ul>
                <div class="navbar-buttons mbr-section-btn">
                    <form action="login" method="post">
                        <button class="btn btn-sm btn-primary display-4" name="butao" value="logar">ENTRAR</button>
                    </form>
                </div>
            </div>
        </nav>
    </section>
    <!--DETALHES-->
    <section class="services2 cid-rFWCs2ee94" id="services2-1z">
        <div class="container">
        <br><br><br><br><br><br>
            <div class="col-md-12">
                <div class="media-container-row">
                    <div class="mbr-figure" style="width: 50%;">
                        <img alt="imagem" title="" src="${produto.imagem}">
                    </div>
                    <div class="align-left aside-content">
                        <h4 class="mbr-title pt-2 mbr-fonts-style display-2">${produto.nome}</h4>
                        <div class="mbr-section-text">
                            <p class="mbr-text text1 pt-2 mbr-light mbr-fonts-style display-7">
                                ${produto.descricao}
                            </p><br>
                            <p class="mbr-text text1 pt-2 mbr-light mbr-fonts-style display-7">
                                ${produto.conservacao}
                            </p>
                            <p class="mbr-text text2 pt-4 mbr-light mbr-fonts-style display-5">R$${produto.valor}</p>
                        </div>
                        <!--Btn-->

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