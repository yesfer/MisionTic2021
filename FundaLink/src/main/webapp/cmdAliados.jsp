<%-- 
    Document   : cmdAliados
    Created on : Sep 30, 2021, 6:50:27 PM
    Author     : yesid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Dashboard Aliados</title>

        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta name="description" content="Portal - Bootstrap 5 Admin Dashboard Template For Developers">
        <meta name="author" content="Xiaoying Riley at 3rd Wave Media">    
        <link rel="shortcut icon" href="favicon.ico"> 

        <!-- FontAwesome JS-->
        <script defer src="assets/plugins/fontawesome/js/all.min.js"></script>

        <!-- App CSS -->
        <link id="theme-style" rel="stylesheet" href="assets/css/portal.css">
    </head>
    
    <body class="app">
        <header class="app-header fixed-top">
            
            <div class="app-header-inner">
                
                <div class="container-fluid py-2">
                    
                    <div class="app-header-content">
                        
                        <div class="row justify-content-between align-items-center">
                            
                            <div class="col-auto">
                                <a id="sidepanel-toggler" class="sidepanel-toggler d-inline-block d-xl-none" href="#">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" role="img"><title>Menu</title><path stroke="currentColor" stroke-linecap="round" stroke-miterlimit="10" stroke-width="2" d="M4 7h22M4 15h22M4 23h22"></path></svg>
                                </a>
                            </div><!------------------------------ Column ------------------------------------------------------------------------>
                            
                            <div class="search-mobile-trigger d-sm-none col">
                                <i class="search-mobile-trigger-icon fas fa-search"></i>
                            </div><!--------------------------------- //Column --------------------------------------------------------------------->
                            
                            <div class="app-search-box col">
                                <form class="app-search-form">   
                                    <input type="text" placeholder="Buscar..." name="search" class="form-control search-input">
                                    <button type="submit" class="btn search-btn btn-primary" value="Search"><i class="fas fa-search"></i></button> 
                                </form>
                            </div><!-------------------------------------------------//app-search-box--------------------------------------------------------->
                            
                            <div class="app-utilities col-auto">
                                <div class="app-utility-item app-notifications-dropdown dropdown">
                                    
                                    <a class="dropdown-toggle no-toggle-arrow" id="notifications-dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false" title="Notifications">
                                        <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-bell icon" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2z"/>
                                        <path fill-rule="evenodd" d="M8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
                                        </svg>
                                        <span class="icon-badge">1</span>
                                    </a><!------------------------------//dropdown-toggle------------------------------------------------------->
                                    
                                    <div class="dropdown-menu p-0">
                                        <div class="dropdown-menu-header p-3">
                                            <h5 class="dropdown-menu-title mb-0">Notificaciones</h5>
                                        </div><!----------------------------------------------------//dropdown-menu-title-------------------------------------------->
                                        
                                        <div class="dropdown-menu-contents">
                                            <div class="item p-3">
                                                <div class="row gx-2 justify-content-between align-items-center">
                                                    <div class="col-auto">
                                                        <img class="profile-image" src="assets/images/profiles/profile-1.png" alt="">
                                                    </div><!-------------------------------------------//col--------------------------------------------------->
                                                    
                                                    <div class="col">
                                                        <div class="info"> 
                                                            <div class="desc">Amy shared a file with you. Lorem ipsum dolor sit amet, consectetur adipiscing elit. </div>
                                                            <div class="meta"> 2 hrs ago</div>
                                                        </div>
                                                    </div><!------------------------------------------//col--------------------------------------> 
                                                </div><!---------------------------------------------//row-------------------------------------->
                                                <a class="link-mask" href="notifications.html"></a>
                                            </div><!-------------------------------//item------------------------------------------------------->
                                            
                                        </div><!------------------------------//dropdown-menu-content--------------------------------------------->

                                        <div class="dropdown-menu-footer p-2 text-center">
                                            <a href="notifications.html">View all</a>
                                        </div>
                                        
                                    </div><!-----------------------------------//dropdown-menu---------------------------------------------->
                                    
                                </div><!------------------------------------//app-utility-item--------------------------------------------------->
                                
                                <div class="app-utility-item">
                                    <a href="settings.html" title="Configuraciones">
                                        <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-gear icon" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M8.837 1.626c-.246-.835-1.428-.835-1.674 0l-.094.319A1.873 1.873 0 0 1 4.377 3.06l-.292-.16c-.764-.415-1.6.42-1.184 1.185l.159.292a1.873 1.873 0 0 1-1.115 2.692l-.319.094c-.835.246-.835 1.428 0 1.674l.319.094a1.873 1.873 0 0 1 1.115 2.693l-.16.291c-.415.764.42 1.6 1.185 1.184l.292-.159a1.873 1.873 0 0 1 2.692 1.116l.094.318c.246.835 1.428.835 1.674 0l.094-.319a1.873 1.873 0 0 1 2.693-1.115l.291.16c.764.415 1.6-.42 1.184-1.185l-.159-.291a1.873 1.873 0 0 1 1.116-2.693l.318-.094c.835-.246.835-1.428 0-1.674l-.319-.094a1.873 1.873 0 0 1-1.115-2.692l.16-.292c.415-.764-.42-1.6-1.185-1.184l-.291.159A1.873 1.873 0 0 1 8.93 1.945l-.094-.319zm-2.633-.283c.527-1.79 3.065-1.79 3.592 0l.094.319a.873.873 0 0 0 1.255.52l.292-.16c1.64-.892 3.434.901 2.54 2.541l-.159.292a.873.873 0 0 0 .52 1.255l.319.094c1.79.527 1.79 3.065 0 3.592l-.319.094a.873.873 0 0 0-.52 1.255l.16.292c.893 1.64-.902 3.434-2.541 2.54l-.292-.159a.873.873 0 0 0-1.255.52l-.094.319c-.527 1.79-3.065 1.79-3.592 0l-.094-.319a.873.873 0 0 0-1.255-.52l-.292.16c-1.64.893-3.433-.902-2.54-2.541l.159-.292a.873.873 0 0 0-.52-1.255l-.319-.094c-1.79-.527-1.79-3.065 0-3.592l.319-.094a.873.873 0 0 0 .52-1.255l-.16-.292c-.892-1.64.902-3.433 2.541-2.54l.292.159a.873.873 0 0 0 1.255-.52l.094-.319z"/>
                                        <path fill-rule="evenodd" d="M8 5.754a2.246 2.246 0 1 0 0 4.492 2.246 2.246 0 0 0 0-4.492zM4.754 8a3.246 3.246 0 1 1 6.492 0 3.246 3.246 0 0 1-6.492 0z"/>
                                        </svg>
                                    </a>
                                </div><!--------------------------------------//app-utility-item-------------------------------------------------------------------------------------------------->
                                
                                <div class="app-utility-item app-user-dropdown dropdown">
                                    <a class="dropdown-toggle" id="user-dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false"><img src="assets/images/user.png" alt="user profile"></a>
                                    <ul class="dropdown-menu" aria-labelledby="user-dropdown-toggle">
                                        <li><a class="dropdown-item" href="account.html">Cuenta</a></li>
                                        <li><a class="dropdown-item" href="settings.html">Configuraciones</a></li>
                                        <li><hr class="dropdown-divider"></li>
                                        <li><a class="dropdown-item" href="login.html">Salir</a></li>
                                    </ul>
                                </div><!-------------------------------------------------//app-user-dropdown------------------------------------------------------------------------------------------------------->
                                
                            </div><!-----------------------------------------------//app-utilities---------------------------------------------------------------------------------------------------------------->
                        
                        </div><!--------------------------------------------------------------//row-------------------------------------------------------------->
                    
                    </div><!-----------------------------------------------------//app-header-content----------------------------------------------------------------------->
                    
                </div><!--------------------------------------------------------//container-fluid------------------------------------------------------------->
                
            </div><!---------------------------------------------------------//app-header-inner---------------------------------------------------->
            
            <div id="app-sidepanel" class="app-sidepanel">
                
                <div id="sidepanel-drop" class="sidepanel-drop"></div>
                
                <div class="sidepanel-inner d-flex flex-column">
                    
                    <a href="#" id="sidepanel-close" class="sidepanel-close d-xl-none">&times;</a>
                    <div class="app-branding">
                        <a class="app-logo" href="index.html"><img class="logo-icon me-2" src="img/logo.png" alt="logo"><span class="logo-text">FundaLink</span></a>
                    </div><!--//app-branding-->
                    
                    <nav id="app-nav-main" class="app-nav app-nav-main flex-grow-1">
                        
                        <ul class="app-menu list-unstyled accordion" id="menu-accordion">

                            <li class="nav-item">
                                <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                <a class="nav-link active" href="index.html">
                                    <span class="nav-icon">
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-house-door" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M7.646 1.146a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5H9.5a.5.5 0 0 1-.5-.5v-4H7v4a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6zM2.5 7.707V14H6v-4a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v4h3.5V7.707L8 2.207l-5.5 5.5z"/>
                                        <path fill-rule="evenodd" d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                                        </svg>
                                    </span>
                                    <span class="nav-link-text">Inicio</span>
                                </a><!----------------------------------------------//nav-link------------------------------------------------------------------->
                            </li><!--------------------------------------------------------//nav-item----------------------------------------------------->
                            
                            <li class="nav-item">
                                <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                <a class="nav-link" href="docs.html">
                                    <span class="nav-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-folder-plus" viewBox="0 0 16 16">
                                        <path d="m.5 3 .04.87a1.99 1.99 0 0 0-.342 1.311l.637 7A2 2 0 0 0 2.826 14H9v-1H2.826a1 1 0 0 1-.995-.91l-.637-7A1 1 0 0 1 2.19 4h11.62a1 1 0 0 1 .996 1.09L14.54 8h1.005l.256-2.819A2 2 0 0 0 13.81 3H9.828a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 6.172 1H2.5a2 2 0 0 0-2 2zm5.672-1a1 1 0 0 1 .707.293L7.586 3H2.19c-.24 0-.47.042-.683.12L1.5 2.98a1 1 0 0 1 1-.98h3.672z"/>
                                        <path d="M13.5 10a.5.5 0 0 1 .5.5V12h1.5a.5.5 0 1 1 0 1H14v1.5a.5.5 0 1 1-1 0V13h-1.5a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                                        </svg>
                                    </span>
                                    <span class="nav-link-text">Mis Fundaciones</span>
                                </a><!--//nav-link-->
                            </li><!--//nav-item-->
                            
                        </ul><!-----------------------------------------------------------------------//app-menu----------------------------------------------->
                        
                    </nav><!------------------------------------------------------------//app-nav------------------------------------------------------------->
                    
                </div><!-------------------------------------------------------//sidepanel-inner-------------------------------------------------------------------->
                
            </div><!-----------------------------------------------------------------------------------//app-sidepanel----------------------------------------------------->
            
        </header>
        
            <!-- Javascript -->          
    <script src="assets/plugins/popper.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>  

    <!-- Charts JS -->
    <script src="assets/plugins/chart.js/chart.min.js"></script> 
    <script src="assets/js/index-charts.js"></script> 
    
    <!-- Page Specific JS -->
    <script src="assets/js/app.js"></script> 
    </body>
    
    

</html>
