<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="br.csi.model.Usuario" %>
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

    <title>Carrinho</title>
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

    <jsp:useBean id="produtos" class="br.csi.dao.Carrinho_DAO" />
    <c:set var="produtos" value="${produtos.getCarrinhos(usuario.id)}" />

    <jsp:useBean id="total" class="br.csi.dao.Carrinho_DAO" />
    <c:set var="total" value="${total.getTotal(usuario.id)}" />

    <jsp:useBean id="total2" class="br.csi.dao.Carrinho_DAO" />
    <c:set var="total2" value="${total2.getTotal2(usuario.id)}" />

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
                                   <img src="assets/images/gamepad-1.svg" alt="" title="" style="height: 3.8rem;">
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
                               <form action="categoria" method="post" >
                                   <input type="hidden" name="modelo" value="Playstation 3">
                                   <button class="text-white dropdown-item display-4" name="acao" value="vaicategoria" aria-expanded="false">PLAYSTATION 3</button>
                               </form>
                               <form action="categoria" method="post">
                                   <input type="hidden" name="modelo" value="Playstation 4">
                                   <button class="text-white dropdown-item display-4" name="acao" value="vaicategoria" aria-expanded="false">PLAYSTATION 4</button>
                               </form>
                           </div>
                       </li>
                       <li class="nav-item dropdown">
                           <a class="nav-link link text-white dropdown-toggle display-4" data-toggle="dropdown-submenu" aria-expanded="false">XBOX</a>
                           <div class="dropdown-menu">
                               <form action="categoria" method="post">
                                   <input type="hidden" name="modelo" value="Xbox 360">
                                   <button class="text-white dropdown-item display-4" name="acao" value="vaicategoria" >XBOX 360</button>
                               </form>
                               <form action="categoria" method="post">
                                   <input type="hidden" name="modelo" value="Xbox One">
                                   <button class="text-white dropdown-item display-4" name="acao" value="vaicategoria" aria-expanded="false">XBOX ONE</button>
                               </form>

                           </div>
                       </li>
                       <li class="nav-item dropdown">
                           <a class="nav-link link text-white dropdown-toggle display-4" href="#"
                               data-toggle="dropdown-submenu" aria-expanded="false">NINTENDO</a>
                           <div class="dropdown-menu">
                               <form action="categoria" method="post">
                                   <input type="hidden" name="modelo" value="Wii">
                                   <button class="text-white dropdown-item display-4" name="acao" value="vaicategoria">NINTENDO WII</button>
                               </form>
                               <form action="categoria" method="post">
                                   <input type="hidden" name="modelo" value="Wii U">
                                   <button class="text-white dropdown-item display-4" name="acao" value="vaicategoria" aria-expanded="false">NINTENDO WII U</button>
                               </form>
                               <form action="categoria" method="post">
                                   <input type="hidden" name="modelo" value="Switch">
                                   <button class="text-white dropdown-item display-4" name="acao" value="vaicategoria" aria-expanded="false">NINTENDO SWITCH</button>
                               </form>

                           </div>
                       </li>
                       <li class="nav-item">
                           <form action="cart" method="post">
                               <button class="nav-link link text-white display-4" name="acao" value="vaiCarrinho" aria-expanded="false" style="background-color: transparent; border-color: transparent">
                                   <input type="hidden" name="id_usu" value="${usuario.getId()}">
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
                               <form action="cadastroEndereco" method="post">
                                   <input type="hidden" name="id_usu" value="${usuario.getId()}">
                                   <button type="submit" class="text-white dropdown-item display-4" name="acao" value="endereco" aria-expanded="true">MEUS ENDEREÇOS</button>
                               </form>
                               <form action="compras" method="post">
                                   <input type="hidden" name="id_usu" value="${usuario.getId()}">
                                   <button type="submit" class="text-white dropdown-item display-4" name="acao" value="vaiPedido" aria-expanded="true">MEUS PEDIDOS</button>
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
    <!--TABELA PRODUTOS-->
    <section class="section-table cid-rFXiYENpV6" id="table1-2c">
        <div class="container container-table" style="margin-top: 50px">
            <h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-5">MEU CARRINHO</h2>
            <div class="table-wrapper">
                <div class="container scroll">
                    <table class="table table-hover text-center">
                        <thead>
                            <tr>
                                <th scope="col">PRODUTO</th>
                                <th scope="col">PREÇO</th>
                                <th scope="col">EXCLUIR</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="produtos" items="${produtos}">
                                <tr>
                                    <td>${produtos.getNome()}</td>
                                    <td>${produtos.getValor()}</td>
                                    <form action="cart" method="post">
                                        <input type="hidden" name="codigo" value="${produtos.getCodigo()}">
                                        <td>
                                            <button class="material-icons" name="acao" value="deletaCart" style="background-color: transparent; border-color: transparent">
                                                <img src="assets/images/delete-24px.svg">
                                            </button>
                                        </td>
                                    </form>
                                </tr>
                             </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="container table-info-container">
                </div>
            </div>
        </div>
    </section>

    <!--TABELA CALCULO-->
    <div class="row section-table cid-rFXkuCJSLp  container-table">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <section class="section-table cid-rFXkuCJSLp" id="table1-2d">
                <div class="container container-table text-center">
                    <div class="table-wrapper">
                        <div class="container scroll">
                            <table class="table" cellspacing="0">
                                <thead>
                                    <h5 class="head-item mbr-fonts-style display-7">VALORES</h5>
                                </thead>
                                <tbody>
                                <c:forEach var="total" items="${total}">
                                    <tr>
                                        <td class="body-item mbr-fonts-style display-7">SUBTOTAL:</td>
                                        <td class="body-item mbr-fonts-style display-7">R$ ${total.getTotal()}</td>
                                    </tr>
                                </c:forEach>
                                    <tr>
                                        <td class="body-item mbr-fonts-style display-7">FRETE:</td>
                                        <td class="body-item mbr-fonts-style display-7">R$ 20,00</td>
                                    </tr>
                                <c:forEach var="total2" items="${total2}">
                                    <tr>
                                        <td class="body-item mbr-fonts-style display-7">TOTAL:</td>
                                        <td class="body-item mbr-fonts-style display-7">R$ ${total2.getTotal()}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-md-4"></div>
        <div class="container" style="margin-top: -82px">
            <div class="justify-content-center row">
                <div class="media-container-column title col-12 col-md-10">
                    <form action="compras" method="post">
                        <div class="mbr-section-btn align-right py-4">
                            <button type="submit" class="btn btn-danger display-4" name="acao" value="finaliza">CONTINUAR</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <br><br><br><br><br>
    </div>
    <section once="footers" class="cid-rFWQRLS1Yp" id="footer7-2b">
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
    <script src="assets/datatables/jquery.data-tables.min.js"></script>
    <script src="assets/datatables/data-tables.bootstrap4.min.js"></script>
    <script src="assets/tether/tether.min.js"></script>
    <script src="assets/theme/js/script.js"></script>
    <script src="assets/formoid/formoid.min.js"></script>


</body>

</html>