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

    <title>Logado</title>
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="assets/socicon/css/styles.css">
    <link rel="stylesheet" href="assets/dropdown/css/style.css">
    <link rel="stylesheet" href="assets/tether/tether.min.css">
    <link rel="stylesheet" href="assets/theme/css/style.css">
    <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css">
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
</head>

<body>
<c:out value="${requestScope.usuario}" />

<jsp:useBean id="produtos" class="br.csi.dao.ProdutoDAO" />
<c:set var="produtos" value="${produtos.getProdutos()}" />

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
                            <button name="butao" value="logo-adm" style="background-color: transparent; border-color: transparent">
                                <img src="assets/images/gamepad-1.svg" alt="Mobirise" title="" style="height: 3.8rem;">
                            </button>
                        </span>
                        <span class="navbar-caption-wrap">
                            <button name="butao" value="logo-adm" class="navbar-caption text-white display-4" style="background-color: transparent; border-color: transparent">GAMESTATION</button>
                        </span>
                    </div>
                </div>
            </form>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                    <li class="nav-item">
                        <form action="redirect" method="post">
                            <button class="nav-link link text-white display-4" name="butao" value="novoProduto" aria-expanded="true" style="background-color: transparent; border-color:transparent">CADASTRAR NOVO
                                PRODUTO</button>
                        </form>
                    </li>
                    <li class="nav-item">
                        <form action="redirect" method="post">
                            <button class="nav-link link text-white display-4" name="butao" value="atualizaPedido" aria-expanded="true" style="background-color: transparent; border-color:transparent">ATUALIZAR PEDIDO</button>
                        </form>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link link text-white dropdown-toggle display-4" href="https://mobirise.com"
                            aria-expanded="false" data-toggle="dropdown-submenu">
                            <span class="mbrib-user mbr-iconfont mbr-iconfont-btn"></span>${usuario.getNome()}
                        </a>
                        <div class="dropdown-menu">
                            <form action="perfil" method="post">
                                <button class="text-white dropdown-item display-4" name="butao" value="vaiperfil" aria-expanded="false">MINHA
                                    CONTA</button>
                            </form>
                            <form action="login" method="post">
                                <button class="text-white dropdown-item display-4" type="submit" name="butao" value="sair" aria-expanded="true">SAIR</button>
                            </form>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link link text-white display-4" href="https://mobirise.com"
                            aria-expanded="false"></a>
                    </li>
                </ul>
            </div>
        </nav>
    </section>

    <section class="header1 cid-rFWMTLGsvO" id="header16-24">
        <div class="container">
        <br><br><br><br><br><br>
            <div class="row justify-content-md-center">
                <div class="col-md-10 align-center">
                    <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-5">Produtos</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="services1 cid-rFWMR15nNx" id="services1-22">
        <!---->

        <!---->
        <!--Overlay-->

        <!--Container-->
        <div class="container">
            <div class="row justify-content-center">

                <c:forEach var="produtos" items="${produtos}">
                <div class="card col-12 col-md-6 p-3 col-lg-4">
                    <div class="card-wrapper">
                        <div class="card-img">
                            <a href="#"><img src="assets/images/NO_IMG.png" alt="Mobirise"
                                    title=""></a>
                        </div>
                        <div class="card-box">
                            <h4 class="card-title mbr-fonts-style display-5 text-center">${produtos.nome} </h4>
                            <!--Btn-->
                            <form action="cadastroProduto" method="post">
                                <div class="mbr-section-btn align-center">
                                    <%--button name="acao" value="detalhesAdm?id=${produtos.codigo}" class="btn btn-primary btn-sm display-4">DETALHES</button>--%>
                                    <input type="hidden" name="codigo" value="${produtos.codigo}">
                                    <button name="acao" value="detalhesAdm" class="btn btn-primary btn-sm display-4">DETALHES</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </section>


    <section once="footers" class="cid-rFWniiZVWU" id="footer7-q">
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
                    <p class="mbr-text mb-0 mbr-fonts-style mbr-white align-center display-7">GAMESTATION@MAIL.COM</p>
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