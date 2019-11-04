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
  
  <title>Novo Endereço</title>
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
<section class="mbr-section form3 cid-rFWB51kMbN" id="form3-1o"></section>

<section class="engine"><a href="https://mobirise.info/z">best free css templates</a></section>
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
                                                     href="index.htmls">GAMESTATION</a></span>
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
                    <a class="nav-link link text-white display-4" href="WEB-INF/views/carrinhi.jsp" aria-expanded="false">
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

<section class="mbr-section form1 cid-rFWAIbBLn0" id="form1-1n">
        <div class="container">
            <div class="row justify-content-center">
                <div class="title col-12 col-lg-8">
                    <h2 class="mbr-section-title align-center pb-3 mbr-fonts-style display-5">NOVO ENDEREÇO DE ENTREGA</h2>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="media-container-column col-lg-8" data-form-type="formoid">
                    <!---Formbuilder Form--->
                    <form action="#" method="POST" class="mbr-form form-with-styler" data-form-title="Mobirise Form"><input type="hidden" name="email" data-form-email="true">
                        <div class="dragArea row">
                            <div class="col-md-12  form-group" data-for="destinatario">
                                <label for="name-form1-1n" class="form-control-label mbr-fonts-style display-7">DESTINÁTARIO</label>
                                <input type="text" name="name" data-form-field="Name" required="required" class="form-control display-7" >
                            </div>                            
                        </div>
                        <div class="dragArea row"> 
                            <div class="col-md-4  form-group" data-for="email">
                                <label for="email-form1-1n" class="form-control-label mbr-fonts-style display-7">CEP</label>
                                <input type="text" name="cep" data-form-field="cep" required="required" class="form-control display-7" >
                            </div> 
                            <div data-for="logradouro" class="col-md-8 form-group"> 
                                <label for="phone-form1-1n" class="form-control-label mbr-fonts-style display-7">LOGRADOURO</label>
                                <input type="text" name="logradouro" data-form-field="logradouro" required="required" class="form-control display-7">
                            </div>                            
                        </div>
                        <div class="dragArea row">
                            <div data-for="numero" class="col-md-3  form-group"> 
                                    <label for="phone-form1-1n" class="form-control-label mbr-fonts-style display-7">NÚMERO</label>
                                    <input type="text" name="numero" data-form-field="numero" required="required" class="form-control display-7">
                            </div>
                            <div data-for="complemento" class="col-md-9  form-group"> 
                                    <label for="phone-form1-1n" class="form-control-label mbr-fonts-style display-7">COMPLEMENTO</label>
                                    <input type="text" name="complemento" data-form-field="complemento" required="required" class="form-control display-7">
                            </div>
                            
                        </div>    
                        <div class="dragArea row">                            
                            <div data-for="bairro" class="col-md-12  form-group"> 
                                <label for="phone-form1-1n" class="form-control-label mbr-fonts-style display-7">BAIRRO</label>
                                <input type="text" name="bairro" data-form-field="bairro" required="required" class="form-control display-7">
                            </div>                            
                        </div>    
                        <div class="dragArea row">
                            <div data-for="cidade" class="col-md-10  form-group"> 
                                <label for="phone-form1-1n" class="form-control-label mbr-fonts-style display-7">CIDADE</label>
                                <input type="text" name="cidade" data-form-field="cidade" required="required" class="form-control display-7">
                            </div>
                            <div data-for="estado" class="col-md-2  form-group"> 
                                <label for="phone-form1-1n" class="form-control-label mbr-fonts-style display-7">UF</label>
                                <input type="text" name="estado" data-form-field="estado" required="required" class="form-control display-7">
                            </div>        
                        </div>
                        <div class="dragArea row container">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <input type="radio">
                                    <label for="phone-form1-1n" class="display-7" style="margin-left: 5px; margin-top: 7px">ENDEREÇO PRINCIPAL?</label>
                                </div>
                            </div>
                        </div>
                        <div class="dragArea row">
                            <div class="col-md-12 input-group-btn align-center">
                                <button type="submit" class="btn btn-primary btn-form display-4">CADASTRAR NOVO ENDEREÇO</button>
                            </div>
                        </div>
                    </form>
                    <!---Formbuilder Form--->
                </div>
            </div>
        </div>
    </section>

<section once="footers" class="cid-rFWB541UJE" id="footer7-1r">

    

    

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