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

    <title>Editar Endereço</title>
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
    <section class="mbr-section form3 cid-rFWAzWujM2" id="form3-1j"></section>
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
    <!--FORMULÁRIO-->
    <form action="#" method="POST" class="mbr-form form-with-styler" data-form-title="Mobirise Form">
    <section class="mbr-section form1 cid-rFWAIbBLn0" id="form1-1n">
        <div class="container">
            <div class="row justify-content-center">
                <div class="title col-12 col-lg-8">
                    <h2 class="mbr-section-title align-center pb-3 mbr-fonts-style display-5">EDITAR ENDEREÇO DE ENTREGA</h2>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="media-container-column col-lg-8" data-form-type="formoid">
                    <!---Formbuilder Form--->

                        <input type="hidden" name="id_usu" value="${usuario.getId()}" data-form-email="true">
                        <input type="hidden" name="id_end" value="${endereco.getId_end()}" data-form-email="true">
                        <input type="hidden" name="email" data-form-email="true">
                        <div class="dragArea row">
                            <div class="col-md-12  form-group" data-for="destinatario">
                                <label class="form-control-label mbr-fonts-style display-7">DESTINÁTARIO</label>
                                <input type="text" name="destinatario" value="${endereco.getDestinatario()}" data-form-field="Name" required="required" class="form-control display-7" >
                            </div>                            
                        </div>
                        <div class="dragArea row"> 
                            <div class="col-md-4  form-group" data-for="email">
                                <label class="form-control-label mbr-fonts-style display-7">CEP</label>
                                <input type="text" name="cep" value="${endereco.getCep()}" data-form-field="cep" required="required" class="form-control display-7" >
                            </div> 
                            <div data-for="logradouro" class="col-md-8 form-group"> 
                                <label class="form-control-label mbr-fonts-style display-7">LOGRADOURO</label>
                                <input type="text" name="logradouro" value="${endereco.getLogradouro()}" data-form-field="logradouro" required="required" class="form-control display-7">
                            </div>                            
                        </div>
                        <div class="dragArea row">
                            <div data-for="numero" class="col-md-3  form-group"> 
                                    <label class="form-control-label mbr-fonts-style display-7">NÚMERO</label>
                                    <input type="text" name="numero" value="${endereco.getNumero()}" data-form-field="numero" required="required" class="form-control display-7">
                            </div>
                            <div data-for="complemento" class="col-md-9  form-group"> 
                                    <label class="form-control-label mbr-fonts-style display-7">COMPLEMENTO</label>
                                    <input type="text" name="complemento" value="${endereco.getComplemento()}" data-form-field="complemento" required="required" class="form-control display-7">
                            </div>
                            
                        </div>    
                        <div class="dragArea row">                            
                            <div data-for="bairro" class="col-md-12  form-group"> 
                                <label class="form-control-label mbr-fonts-style display-7">BAIRRO</label>
                                <input type="text" name="bairro" value="${endereco.getBairro()}" data-form-field="bairro" required="required" class="form-control display-7">
                            </div>                            
                        </div>    
                        <div class="dragArea row">
                            <div data-for="cidade" class="col-md-10  form-group"> 
                                <label class="form-control-label mbr-fonts-style display-7">CIDADE</label>
                                <input type="text" name="cidade" value="${endereco.getCidade()}" data-form-field="cidade" required="required" class="form-control display-7">
                            </div>
                            <div data-for="estado" class="col-md-2  form-group"> 
                                <label class="form-control-label mbr-fonts-style display-7">UF</label>
                                <input type="text" name="estado" value="${endereco.getEstado()}" data-form-field="estado" required="required" class="form-control display-7">
                            </div>        
                        </div>
                        <div class="dragArea row container">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <input type="radio" name="estado" value="${endereco.getEstado()}">
                                    <label class="display-7" style="margin-left: 5px; margin-top: 7px">ENDEREÇO PRINCIPAL?</label>
                                </div>
                            </div>
                        </div>
                        <div class="dragArea row">
                            <div class="col-md-12 input-group-btn align-center">
                                <button type="submit" name="acao" value="editEnd" class="btn btn-primary btn-form display-4">SALVAR ALTERAÇÕES</button>
                            </div>
                        </div>

                    <!---Formbuilder Form--->
                </div>
            </div>
        </div>
    </section>
    </form>

    <section once="footers" class="cid-rFWAA2bCdH" id="footer7-1m">
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