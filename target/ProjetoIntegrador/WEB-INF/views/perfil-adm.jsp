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
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  
  <title>Perfil</title>
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
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
  
  
</head>
<body>
<c:out value="${requestScope.usuario}" />
  <section class="mbr-section form3 cid-rFWwSeaoLR" id="form3-1a"></section>
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

<section class="engine"><a href="https://mobirise.info/e">how to make a website</a></section>
  <section class="mbr-section form1 cid-rFWrAdFbye" id="form1-14">
      <form action="perfil" method="post" class="mbr-form form-with-styler" data-form-title="Mobirise Form">
          <div class="container">
              <div class="row justify-content-center">
                  <div class="title col-12 col-lg-8">
                      <h2 class="mbr-section-title align-center pb-3 mbr-fonts-style display-5">MEU PERFIL</h2>

                  </div>
              </div>
          </div>
          <div class="container">
              <div class="row justify-content-center">
                  <div class="media-container-column col-lg-8" data-form-type="formoid">
                      <!---Formbuilder Form--->
                      <div class="dragArea row">
                          <div class="col-md-12  form-group" data-for="destinatario">
                              <label  class="form-control-label mbr-fonts-style display-7">NOME COMPLETO</label>
                              <input type="text" name="nome" value="${usuario.getNome()}" required="required" class="form-control display-7" >
                          </div>
                      </div>
                      <div class="dragArea row">
                          <input type="hidden" name="id" value="${usuario.getId()}" required="required" class="form-control display-7" >

                          <div class="col-md-12  form-group" data-for="email">
                              <label class="form-control-label mbr-fonts-style display-7">E-MAIL</label>
                              <input type="text" name="email" value="${usuario.getEmail()}"  required="required" class="form-control display-7" >
                          </div>
                          <div class="col-md-12  form-group" data-for="email">
                              <label class="form-control-label mbr-fonts-style display-7">Telefone</label>
                              <input type="text" name="telefone" value="${usuario.getTelefone()}" class="form-control display-7" >
                          </div>
                          <div class="col-md-12  form-group" data-for="email">
                              <label class="form-control-label mbr-fonts-style display-7">senha</label>
                              <input type="password" name="senha" value="${usuario.getSenha()}"  required="required" class="form-control display-7" >
                          </div>

                          <div class="container row ">
                              <div class="col-md-6 text-right">
                                  <button type="submit" class="btn btn-form btn-primary display-4" name="butao" value="editar">Salvar Alterações</button>
                              </div>
                              <div class="col-md-6 text-center">
                                  <button type="submit" class="btn btn-form btn-secondary-outline display-4" name="butao" value="deletar">Deletar Conta</button>
                              </div>
                          </div>
                      </div>

                      <!---Formbuilder Form--->
                  </div>
              </div>
          </div>
      </form>
  </section>



<section once="footers" class="cid-rFWocWDpjI" id="footer7-v">

    

    

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
  <script type="text/javascript" src="js/materialize.min.js"></script>
  
  
</body>
</html>