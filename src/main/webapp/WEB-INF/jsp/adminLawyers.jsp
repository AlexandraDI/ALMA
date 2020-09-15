<%-- 
    Document   : admin
    Created on : 14 Σεπ 2020, 7:34:56 μμ
    Author     : gianalex
--%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8">
    <!--    <meta http-equiv="X-UA-Compatible" content="IE=edge">-->
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>-->
    <title>ALMA</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
    <meta name="description" content="This is an example dashboard created using build-in elements and components.">
    <meta name="msapplication-tap-highlight" content="no">
    <!--<link href="./main.css" rel="stylesheet"></head>-->
    <link rel="stylesheet" href="/css/main.css"></head>
<body>
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
        <div class="app-header header-shadow">
            <div class="app-header__logo">
                <div class="logo-src"><h4>AL<strong>MA</strong></h4></div>
                <div class="header__pane ml-auto">
                    <div>
                        <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="app-header__mobile-menu">
                <div>
                    <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
            </div>
            <div class="app-header__menu">
                <span>
                    <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                        <span class="btn-icon-wrapper">
                            <i class="fa fa-ellipsis-v fa-w-6"></i>
                        </span>
                    </button>
                </span>
            </div>    
            <div class="app-header__content">
                <div class="app-header-left">
                    <div class="search-wrapper">
                        <div class="input-holder">
                            <input type="text" class="search-input" placeholder="Type to search">
                            <button class="search-icon"><span></span></button>
                        </div>
                        <button class="close"></button>
                    </div>
                    <ul class="header-menu nav">
                        <li class="nav-item">
                            <a href="/" class="nav-link" target="_blank">
                                Home
                            </a>
                        </li>

                    </ul>        </div>
                <div class="app-header-right">
                    <div class="header-btn-lg pr-0">
                        <div class="widget-content p-0">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="btn-group">
                                        <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                            <img width="42" class="rounded-circle" src="/images/${sessionScope.user.avatar}" alt="">
                                            <!--                                            <i class="fa fa-angle-down ml-2 opacity-8"></i>-->
                                        </a>
                                        <!--                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                                                                    <button type="button" tabindex="0" class="dropdown-item">User Account</button>
                                                                                    <button type="button" tabindex="0" class="dropdown-item">Settings</button>
                                                                                    <h6 tabindex="-1" class="dropdown-header">Header</h6>
                                                                                    <button type="button" tabindex="0" class="dropdown-item">Actions</button>
                                                                                    <div tabindex="-1" class="dropdown-divider"></div>
                                                                                    <button type="button" tabindex="0" class="dropdown-item">Dividers</button>
                                                                                </div>-->
                                    </div>
                                </div>
                                <div class="widget-content-left  ml-3 header-user-info">
                                    <div class="widget-heading">
                                        Administrator
                                    </div>
                                    <div class="widget-subheading">
                                        ALMA Supervisor
                                    </div>
                                </div>
                                <!--                                <div class="widget-content-right header-user-info ml-3">
                                                                    <button type="button" class="btn-shadow p-1 btn btn-primary btn-sm show-toastr-example">
                                                                        <i class="fa text-white fa-calendar pr-1 pl-1"></i>
                                                                    </button>
                                                                </div>-->
                            </div>
                        </div>
                    </div>        
                </div>
            </div>
        </div>        <div class="ui-theme-settings">
            <button type="button" id="TooltipDemo" class="btn-open-options btn btn-warning">
                <i class="fa fa-w-16 fa-spin fa-2x">+</i>
            </button>
            <div class="theme-settings__inner">
                <div class="scrollbar-container">
                    <div class="theme-settings__options-wrapper">
                        <h3 class="themeoptions-heading">Layout Options
                        </h3>
                        <div class="p-3">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <div class="widget-content p-0">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left mr-3">
                                                <div class="switch has-switch switch-container-class" data-class="fixed-header">
                                                    <div class="switch-animate switch-on">
                                                        <input type="checkbox" checked data-toggle="toggle" data-onstyle="success">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Fixed Header
                                                </div>
                                                <div class="widget-subheading">Makes the header top fixed, always visible!
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="widget-content p-0">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left mr-3">
                                                <div class="switch has-switch switch-container-class" data-class="fixed-sidebar">
                                                    <div class="switch-animate switch-on">
                                                        <input type="checkbox" checked data-toggle="toggle" data-onstyle="success">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Fixed Sidebar
                                                </div>
                                                <div class="widget-subheading">Makes the sidebar left fixed, always visible!
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="widget-content p-0">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left mr-3">
                                                <div class="switch has-switch switch-container-class" data-class="fixed-footer">
                                                    <div class="switch-animate switch-off">
                                                        <input type="checkbox" data-toggle="toggle" data-onstyle="success">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Fixed Footer
                                                </div>
                                                <div class="widget-subheading">Makes the app footer bottom fixed, always visible!
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <h3 class="themeoptions-heading">
                            <div>
                                Header Options
                            </div>
                            <button type="button" class="btn-pill btn-shadow btn-wide ml-auto btn btn-focus btn-sm switch-header-cs-class" data-class="">
                                Restore Default
                            </button>
                        </h3>
                        <div class="p-3">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <h5 class="pb-2">Choose Color Scheme
                                    </h5>
                                    <div class="theme-settings-swatches">
                                        <div class="swatch-holder bg-primary switch-header-cs-class" data-class="bg-primary header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-secondary switch-header-cs-class" data-class="bg-secondary header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-success switch-header-cs-class" data-class="bg-success header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-info switch-header-cs-class" data-class="bg-info header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-warning switch-header-cs-class" data-class="bg-warning header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-danger switch-header-cs-class" data-class="bg-danger header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-light switch-header-cs-class" data-class="bg-light header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-dark switch-header-cs-class" data-class="bg-dark header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-focus switch-header-cs-class" data-class="bg-focus header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-alternate switch-header-cs-class" data-class="bg-alternate header-text-light">
                                        </div>
                                        <div class="divider">
                                        </div>
                                        <div class="swatch-holder bg-vicious-stance switch-header-cs-class" data-class="bg-vicious-stance header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-midnight-bloom switch-header-cs-class" data-class="bg-midnight-bloom header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-night-sky switch-header-cs-class" data-class="bg-night-sky header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-slick-carbon switch-header-cs-class" data-class="bg-slick-carbon header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-asteroid switch-header-cs-class" data-class="bg-asteroid header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-royal switch-header-cs-class" data-class="bg-royal header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-warm-flame switch-header-cs-class" data-class="bg-warm-flame header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-night-fade switch-header-cs-class" data-class="bg-night-fade header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-sunny-morning switch-header-cs-class" data-class="bg-sunny-morning header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-tempting-azure switch-header-cs-class" data-class="bg-tempting-azure header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-amy-crisp switch-header-cs-class" data-class="bg-amy-crisp header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-heavy-rain switch-header-cs-class" data-class="bg-heavy-rain header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-mean-fruit switch-header-cs-class" data-class="bg-mean-fruit header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-malibu-beach switch-header-cs-class" data-class="bg-malibu-beach header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-deep-blue switch-header-cs-class" data-class="bg-deep-blue header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-ripe-malin switch-header-cs-class" data-class="bg-ripe-malin header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-arielle-smile switch-header-cs-class" data-class="bg-arielle-smile header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-plum-plate switch-header-cs-class" data-class="bg-plum-plate header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-happy-fisher switch-header-cs-class" data-class="bg-happy-fisher header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-happy-itmeo switch-header-cs-class" data-class="bg-happy-itmeo header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-mixed-hopes switch-header-cs-class" data-class="bg-mixed-hopes header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-strong-bliss switch-header-cs-class" data-class="bg-strong-bliss header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-grow-early switch-header-cs-class" data-class="bg-grow-early header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-love-kiss switch-header-cs-class" data-class="bg-love-kiss header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-premium-dark switch-header-cs-class" data-class="bg-premium-dark header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-happy-green switch-header-cs-class" data-class="bg-happy-green header-text-light">
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <h3 class="themeoptions-heading">
                            <div>Sidebar Options</div>
                            <button type="button" class="btn-pill btn-shadow btn-wide ml-auto btn btn-focus btn-sm switch-sidebar-cs-class" data-class="">
                                Restore Default
                            </button>
                        </h3>
                        <div class="p-3">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <h5 class="pb-2">Choose Color Scheme
                                    </h5>
                                    <div class="theme-settings-swatches">
                                        <div class="swatch-holder bg-primary switch-sidebar-cs-class" data-class="bg-primary sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-secondary switch-sidebar-cs-class" data-class="bg-secondary sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-success switch-sidebar-cs-class" data-class="bg-success sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-info switch-sidebar-cs-class" data-class="bg-info sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-warning switch-sidebar-cs-class" data-class="bg-warning sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-danger switch-sidebar-cs-class" data-class="bg-danger sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-light switch-sidebar-cs-class" data-class="bg-light sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-dark switch-sidebar-cs-class" data-class="bg-dark sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-focus switch-sidebar-cs-class" data-class="bg-focus sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-alternate switch-sidebar-cs-class" data-class="bg-alternate sidebar-text-light">
                                        </div>
                                        <div class="divider">
                                        </div>
                                        <div class="swatch-holder bg-vicious-stance switch-sidebar-cs-class" data-class="bg-vicious-stance sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-midnight-bloom switch-sidebar-cs-class" data-class="bg-midnight-bloom sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-night-sky switch-sidebar-cs-class" data-class="bg-night-sky sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-slick-carbon switch-sidebar-cs-class" data-class="bg-slick-carbon sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-asteroid switch-sidebar-cs-class" data-class="bg-asteroid sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-royal switch-sidebar-cs-class" data-class="bg-royal sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-warm-flame switch-sidebar-cs-class" data-class="bg-warm-flame sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-night-fade switch-sidebar-cs-class" data-class="bg-night-fade sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-sunny-morning switch-sidebar-cs-class" data-class="bg-sunny-morning sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-tempting-azure switch-sidebar-cs-class" data-class="bg-tempting-azure sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-amy-crisp switch-sidebar-cs-class" data-class="bg-amy-crisp sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-heavy-rain switch-sidebar-cs-class" data-class="bg-heavy-rain sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-mean-fruit switch-sidebar-cs-class" data-class="bg-mean-fruit sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-malibu-beach switch-sidebar-cs-class" data-class="bg-malibu-beach sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-deep-blue switch-sidebar-cs-class" data-class="bg-deep-blue sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-ripe-malin switch-sidebar-cs-class" data-class="bg-ripe-malin sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-arielle-smile switch-sidebar-cs-class" data-class="bg-arielle-smile sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-plum-plate switch-sidebar-cs-class" data-class="bg-plum-plate sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-happy-fisher switch-sidebar-cs-class" data-class="bg-happy-fisher sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-happy-itmeo switch-sidebar-cs-class" data-class="bg-happy-itmeo sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-mixed-hopes switch-sidebar-cs-class" data-class="bg-mixed-hopes sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-strong-bliss switch-sidebar-cs-class" data-class="bg-strong-bliss sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-grow-early switch-sidebar-cs-class" data-class="bg-grow-early sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-love-kiss switch-sidebar-cs-class" data-class="bg-love-kiss sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-premium-dark switch-sidebar-cs-class" data-class="bg-premium-dark sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-happy-green switch-sidebar-cs-class" data-class="bg-happy-green sidebar-text-light">
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!--                        <h3 class="themeoptions-heading">
                                                    <div>Main Content Options</div>
                                                    <button type="button" class="btn-pill btn-shadow btn-wide ml-auto active btn btn-focus btn-sm">Restore Default
                                                    </button>
                                                </h3>
                                                <div class="p-3">
                                                    <ul class="list-group">
                                                        <li class="list-group-item">
                                                            <h5 class="pb-2">Page Section Tabs
                                                            </h5>
                                                            <div class="theme-settings-swatches">
                                                                <div role="group" class="mt-2 btn-group">
                                                                    <button type="button" class="btn-wide btn-shadow btn-primary btn btn-secondary switch-theme-class" data-class="body-tabs-line">
                                                                        Line
                                                                    </button>
                                                                    <button type="button" class="btn-wide btn-shadow btn-primary active btn btn-secondary switch-theme-class" data-class="body-tabs-shadow">
                                                                        Shadow
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>-->
                    </div>
                </div>
            </div>
        </div>        <div class="app-main">
            <div class="app-sidebar sidebar-shadow">
                <div class="app-header__logo">
                    <div class="logo-src"></div>
                    <div class="header__pane ml-auto">
                        <div>
                            <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="app-header__mobile-menu">
                    <div>
                        <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="app-header__menu">
                    <span>
                        <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                            <span class="btn-icon-wrapper">
                                <i class="fa fa-ellipsis-v fa-w-6"></i>
                            </span>
                        </button>
                    </span>
                </div>    <div class="scrollbar-sidebar">
                    <div class="app-sidebar__inner">
                        <ul class="vertical-nav-menu">
                            <li class="app-sidebar__heading">Buyers</li>
                            <li style="text-align: left">
                                <a href="/showBuyers"> 
                                    All Buyers
                                </a>
                            </li>
                            <li class="app-sidebar__heading">Lawyers</li>


                            <li>
                                <a href="/showLawyers" class="mm-active">
                                    <i class="metismenu-icon icon-person"></i>
                                    All Lawyers
                                </a>
                            </li>
                            <li class="app-sidebar__heading">Sellers</li>
                            <li>
                                <a href="/showSellers">
                                    <i class="metismenu-icon icon-person"></i>
                                    All Sellers
                                </a>
                            </li>
                            <li class="app-sidebar__heading">Statistics</li>
                            <li>
                                <a href="/showStatistics">
                                    <i class="metismenu-icon icon-person"></i>                                        
                                    Graphs
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>    <div class="app-main__outer">
                <div class="app-main__inner">
                    <div class="app-page-title">
                        <div class="page-title-wrapper">
                            <div class="page-title-heading">
                                <div class="page-title-icon">
                                    #
                                </div>
                                <div>ALMA
                                    <div class="page-title-subheading">List of the Users.
                                    </div>
                                </div>
                            </div>
                            <div class="page-title-actions">
                                <!--                                    <button type="button" data-toggle="tooltip" title="Example Tooltip" data-placement="bottom" class="btn-shadow mr-3 btn btn-dark">
                                                                        <i class="fa fa-star"></i>
                                                                    </button>-->
                                <div class="d-inline-block dropdown">
                                    <!--                                        <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn-shadow dropdown-toggle btn btn-info">
                                                                                <span class="btn-icon-wrapper pr-2 opacity-7">
                                                                                    <i class="fa fa-business-time fa-w-20"></i>
                                                                                </span>
                                                                                Buttons
                                                                            </button>-->
                                    <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                        <ul class="nav flex-column">
                                            <li class="nav-item">
                                                <a href="javascript:void(0);" class="nav-link">
                                                    <i class="nav-link-icon lnr-inbox"></i>
                                                    <span>
                                                        Inbox
                                                    </span>
                                                    <div class="ml-auto badge badge-pill badge-secondary">86</div>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="javascript:void(0);" class="nav-link">
                                                    <i class="nav-link-icon lnr-book"></i>
                                                    <span>
                                                        Book
                                                    </span>
                                                    <div class="ml-auto badge badge-pill badge-danger">5</div>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="javascript:void(0);" class="nav-link">
                                                    <i class="nav-link-icon lnr-picture"></i>
                                                    <span>
                                                        Picture
                                                    </span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a disabled href="javascript:void(0);" class="nav-link disabled">
                                                    <i class="nav-link-icon lnr-file-empty"></i>
                                                    <span>
                                                        File Disabled
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>    
                        </div>
                    </div>            
                    <!--                        <div class="row">
                                                <div class="col-md-6 col-xl-4">
                                                    <div class="card mb-3 widget-content bg-midnight-bloom">
                                                        <div class="widget-content-wrapper text-white">
                                                            <div class="widget-content-left">
                                                                <div class="widget-heading">Total Orders</div>
                                                                <div class="widget-subheading">Last year expenses</div>
                                                            </div>
                                                            <div class="widget-content-right">
                                                                <div class="widget-numbers text-white"><span>1896</span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-xl-4">
                                                    <div class="card mb-3 widget-content bg-arielle-smile">
                                                        <div class="widget-content-wrapper text-white">
                                                            <div class="widget-content-left">
                                                                <div class="widget-heading">Clients</div>
                                                                <div class="widget-subheading">Total Clients Profit</div>
                                                            </div>
                                                            <div class="widget-content-right">
                                                                <div class="widget-numbers text-white"><span>$ 568</span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-xl-4">
                                                    <div class="card mb-3 widget-content bg-grow-early">
                                                        <div class="widget-content-wrapper text-white">
                                                            <div class="widget-content-left">
                                                                <div class="widget-heading">Followers</div>
                                                                <div class="widget-subheading">People Interested</div>
                                                            </div>
                                                            <div class="widget-content-right">
                                                                <div class="widget-numbers text-white"><span>46%</span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="d-xl-none d-lg-block col-md-6 col-xl-4">
                                                    <div class="card mb-3 widget-content bg-premium-dark">
                                                        <div class="widget-content-wrapper text-white">
                                                            <div class="widget-content-left">
                                                                <div class="widget-heading">Products Sold</div>
                                                                <div class="widget-subheading">Revenue streams</div>
                                                            </div>
                                                            <div class="widget-content-right">
                                                                <div class="widget-numbers text-warning"><span>$14M</span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>-->
                    <!--                        <div class="row">
                                                <div class="col-md-12 col-lg-6">
                                                    <div class="mb-3 card">
                                                        <div class="card-header-tab card-header-tab-animation card-header">
                                                            <div class="card-header-title">
                                                                <i class="header-icon lnr-apartment icon-gradient bg-love-kiss"> </i>
                                                                Sales Report
                                                            </div>
                                                            <ul class="nav">
                                                                <li class="nav-item"><a href="javascript:void(0);" class="active nav-link">Last</a></li>
                                                                <li class="nav-item"><a href="javascript:void(0);" class="nav-link second-tab-toggle">Current</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="card-body">
                                                            <div class="tab-content">
                                                                <div class="tab-pane fade show active" id="tabs-eg-77">
                                                                    <div class="card mb-3 widget-chart widget-chart2 text-left w-100">
                                                                        <div class="widget-chat-wrapper-outer">
                                                                            <div class="widget-chart-wrapper widget-chart-wrapper-lg opacity-10 m-0">
                                                                                <canvas id="canvas"></canvas>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <h6 class="text-muted text-uppercase font-size-md opacity-5 font-weight-normal">Top Authors</h6>
                                                                    <div class="scroll-area-sm">
                                                                        <div class="scrollbar-container">
                                                                            <ul class="rm-list-borders rm-list-borders-scroll list-group list-group-flush">
                                                                                <li class="list-group-item">
                                                                                    <div class="widget-content p-0">
                                                                                        <div class="widget-content-wrapper">
                                                                                            <div class="widget-content-left mr-3">
                                                                                                <img width="42" class="rounded-circle" src="oiaView.jpg" alt="">
                                                                                            </div>
                                                                                            <div class="widget-content-left">
                                                                                                <div class="widget-heading">Ella-Rose Henry</div>
                                                                                                <div class="widget-subheading">Web Developer</div>
                                                                                            </div>
                                                                                            <div class="widget-content-right">
                                                                                                <div class="font-size-xlg text-muted">
                                                                                                    <small class="opacity-5 pr-1">$</small>
                                                                                                    <span>129</span>
                                                                                                    <small class="text-danger pl-2">
                                                                                                        <i class="fa fa-angle-down"></i>
                                                                                                    </small>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    <div class="widget-content p-0">
                                                                                        <div class="widget-content-wrapper">
                                                                                            <div class="widget-content-left mr-3">
                                                                                                <img width="42" class="rounded-circle" src="oiaView.jpg" alt="">
                                                                                            </div>
                                                                                            <div class="widget-content-left">
                                                                                                <div class="widget-heading">Ruben Tillman</div>
                                                                                                <div class="widget-subheading">UI Designer</div>
                                                                                            </div>
                                                                                            <div class="widget-content-right">
                                                                                                <div class="font-size-xlg text-muted">
                                                                                                    <small class="opacity-5 pr-1">$</small>
                                                                                                    <span>54</span>
                                                                                                    <small class="text-success pl-2">
                                                                                                        <i class="fa fa-angle-up"></i>
                                                                                                    </small>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    <div class="widget-content p-0">
                                                                                        <div class="widget-content-wrapper">
                                                                                            <div class="widget-content-left mr-3">
                                                                                                <img width="42" class="rounded-circle" src="oiaView.jpg" alt="">
                                                                                            </div>
                                                                                            <div class="widget-content-left">
                                                                                                <div class="widget-heading">Vinnie Wagstaff</div>
                                                                                                <div class="widget-subheading">Java Programmer</div>
                                                                                            </div>
                                                                                            <div class="widget-content-right">
                                                                                                <div class="font-size-xlg text-muted">
                                                                                                    <small class="opacity-5 pr-1">$</small>
                                                                                                    <span>429</span>
                                                                                                    <small class="text-warning pl-2">
                                                                                                        <i class="fa fa-dot-circle"></i>
                                                                                                    </small>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    <div class="widget-content p-0">
                                                                                        <div class="widget-content-wrapper">
                                                                                            <div class="widget-content-left mr-3">
                                                                                                <img width="42" class="rounded-circle" src="oiaView.jpg" alt="">
                                                                                            </div>
                                                                                            <div class="widget-content-left">
                                                                                                <div class="widget-heading">Ella-Rose Henry</div>
                                                                                                <div class="widget-subheading">Web Developer</div>
                                                                                            </div>
                                                                                            <div class="widget-content-right">
                                                                                                <div class="font-size-xlg text-muted">
                                                                                                    <small class="opacity-5 pr-1">$</small>
                                                                                                    <span>129</span>
                                                                                                    <small class="text-danger pl-2">
                                                                                                        <i class="fa fa-angle-down"></i>
                                                                                                    </small>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    <div class="widget-content p-0">
                                                                                        <div class="widget-content-wrapper">
                                                                                            <div class="widget-content-left mr-3">
                                                                                                <img width="42" class="rounded-circle" src="oiaView.jpg" alt="">
                                                                                            </div>
                                                                                            <div class="widget-content-left">
                                                                                                <div class="widget-heading">Ruben Tillman</div>
                                                                                                <div class="widget-subheading">UI Designer</div>
                                                                                            </div>
                                                                                            <div class="widget-content-right">
                                                                                                <div class="font-size-xlg text-muted">
                                                                                                    <small class="opacity-5 pr-1">$</small>
                                                                                                    <span>54</span>
                                                                                                    <small class="text-success pl-2">
                                                                                                        <i class="fa fa-angle-up"></i>
                                                                                                    </small>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-lg-6">
                                                    <div class="mb-3 card">
                                                        <div class="card-header-tab card-header">
                                                            <div class="card-header-title">
                                                                <i class="header-icon lnr-rocket icon-gradient bg-tempting-azure"> </i>
                                                                Bandwidth Reports
                                                            </div>
                                                            <div class="btn-actions-pane-right">
                                                                <div class="nav">
                                                                    <a href="javascript:void(0);" class="border-0 btn-pill btn-wide btn-transition active btn btn-outline-alternate">Tab 1</a>
                                                                    <a href="javascript:void(0);" class="ml-1 btn-pill btn-wide border-0 btn-transition  btn btn-outline-alternate second-tab-toggle-alt">Tab 2</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-content">
                                                            <div class="tab-pane fade active show" id="tab-eg-55">
                                                                <div class="widget-chart p-3">
                                                                    <div style="height: 350px">
                                                                        <canvas id="line-chart"></canvas>
                                                                    </div>
                                                                    <div class="widget-chart-content text-center mt-5">
                                                                        <div class="widget-description mt-0 text-warning">
                                                                            <i class="fa fa-arrow-left"></i>
                                                                            <span class="pl-1">175.5%</span>
                                                                            <span class="text-muted opacity-8 pl-1">increased server resources</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="pt-2 card-body">
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <div class="widget-content">
                                                                                <div class="widget-content-outer">
                                                                                    <div class="widget-content-wrapper">
                                                                                        <div class="widget-content-left">
                                                                                            <div class="widget-numbers fsize-3 text-muted">63%</div>
                                                                                        </div>
                                                                                        <div class="widget-content-right">
                                                                                            <div class="text-muted opacity-6">Generated Leads</div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="widget-progress-wrapper mt-1">
                                                                                        <div class="progress-bar-sm progress-bar-animated-alt progress">
                                                                                            <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="63" aria-valuemin="0" aria-valuemax="100" style="width: 63%;"></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="widget-content">
                                                                                <div class="widget-content-outer">
                                                                                    <div class="widget-content-wrapper">
                                                                                        <div class="widget-content-left">
                                                                                            <div class="widget-numbers fsize-3 text-muted">32%</div>
                                                                                        </div>
                                                                                        <div class="widget-content-right">
                                                                                            <div class="text-muted opacity-6">Submitted Tickers</div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="widget-progress-wrapper mt-1">
                                                                                        <div class="progress-bar-sm progress-bar-animated-alt progress">
                                                                                            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="32" aria-valuemin="0" aria-valuemax="100" style="width: 32%;"></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="widget-content">
                                                                                <div class="widget-content-outer">
                                                                                    <div class="widget-content-wrapper">
                                                                                        <div class="widget-content-left">
                                                                                            <div class="widget-numbers fsize-3 text-muted">71%</div>
                                                                                        </div>
                                                                                        <div class="widget-content-right">
                                                                                            <div class="text-muted opacity-6">Server Allocation</div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="widget-progress-wrapper mt-1">
                                                                                        <div class="progress-bar-sm progress-bar-animated-alt progress">
                                                                                            <div class="progress-bar bg-primary" role="progressbar" aria-valuenow="71" aria-valuemin="0" aria-valuemax="100" style="width: 71%;"></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="widget-content">
                                                                                <div class="widget-content-outer">
                                                                                    <div class="widget-content-wrapper">
                                                                                        <div class="widget-content-left">
                                                                                            <div class="widget-numbers fsize-3 text-muted">41%</div>
                                                                                        </div>
                                                                                        <div class="widget-content-right">
                                                                                            <div class="text-muted opacity-6">Generated Leads</div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="widget-progress-wrapper mt-1">
                                                                                        <div class="progress-bar-sm progress-bar-animated-alt progress">
                                                                                            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="41" aria-valuemin="0" aria-valuemax="100" style="width: 41%;"></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>-->


<%--                    <c:choose>
                        <c:when test="${data.size() > 0 }">
                            <c:forEach var="item" items="${data}">


                                <div class="col-md-4 ftco-animate">
                                    <div class="properties">

                                        <a href="/getProperty?property=${item.propertyId}" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(/images/${item.mediaCollection[0].path}">

                                            <div class="icon d-flex justify-content-center align-items-center">
                                                <span class="icon-search2"></span>
                                            </div>
                                        </a>
                                        <div class="ribbon" style="position: absolute;">BOOKED</div>
                                        <div class="text p-3">
                                            <span class="status sale">Sale</span>
                                            <div class="d-flex">
                                                <div class="one">
                                                    <h3><a href="/getProperty?property=${item.propertyId}">${item.cityId.name}</a></h3>
                                                    <p>${item.type}</p>
                                                </div>
                                                <div class="two">
                                                    <span class="price">${item.price} &euro;</span>
                                                </div>
                                            </div>
                                            <p>${item.title}</p>
                                            <hr>
                                            <p class="bottom-area d-flex">
                                                <span><i class="flaticon-selection"></i> ${item.area} sqft</span>
                                                <span class="ml-auto"><i class="flaticon-bathtub"></i> ${item.bathrooms}</span>
                                                <span><i class="flaticon-bed"></i> ${item.rooms}</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <div class="container">
                                <center><h4> No Users available</h4></center>
                            </div>
                        </c:otherwise>
                    </c:choose>
--%>




                    <div class="row">
                        <div class="col-md-12">
                            <div class="main-card mb-3 card">
                                <div class="card-header">Active Users
                                    <div class="btn-actions-pane-right">
                                        <div role="group" class="btn-group-sm btn-group">
                                            <button class="active btn btn-focus">Last Week</button>
                                            <button class="btn btn-focus">All Month</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th class="text-center">#</th>
                                                <th>Name</th>
                                                
                                                <th class="text-center">City</th>
                                                <th class="text-center">Country</th>
                                                <th class="text-center">Status</th>
                                                
                                                <th class="text-center">Approved</th>
                                                <th class="text-center">See more</th>
                                            </tr>
                                        </thead>
                                        <tbody>


                                            <c:choose>
                                                <c:when test="${data.size() > 0 }">
                                                    <c:forEach var="item" items="${data}">  


                                                        <tr>
                                                            <td class="text-center text-muted">#${item.userId}</td>
                                                            <td>
                                                                <div class="widget-content p-0">
                                                                    <div class="widget-content-wrapper">
                                                                        <div class="widget-content-left mr-3">
                                                                            <div class="widget-content-left">
                                                                                <img width="40" class="rounded-circle" src="/images/${item.avatar}" alt="">
                                                                            </div>
                                                                        </div>
                                                                        <div class="widget-content-left flex2">
                                                                            <div class="widget-heading">${item.firstname} ${item.lastname}</div>
                                                                            <div class="widget-subheading opacity-7">${item.roleId.rolename}</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>

                                                            <td class="text-center">${item.currentLocation.name}</td>
                                                            <td class="text-center">${item.currentLocation.countryId.name}</td>
                                                            <td class="text-center">
                                                                <c:if test="${item.requiredDocumentsUploaded.status == 1 }">  <div class="badge badge-warning">Pending</div></c:if>
                                                                <c:if test="${item.requiredDocumentsUploaded.status == 2 }">  <div class="badge badge-success">Completed</div></c:if>
                                                            </td>

                                                            <td class="text-center"><input type="checkbox"  <c:if test="${item.requiredDocumentsUploaded.status == 2 }">checked="yes"</c:if> onclick="return false;"></td>
                                                             <td class="text-center">
                                                                 <a href="/getLawyerInfoAdmin?id=${item.userId}" target="_blank"
                                                                <button type="button" id="PopoverCustomT-1" class="btn btn-primary btn-sm">Details</button>
                                                                 </a>
                                                            </td>                                                           
                                                        </tr>

                                                    </c:forEach>
                                                </c:when>
                                                <c:otherwise>
                                                
<!--                                                    <center><h4> No Users available</h4></center>-->
                                                    
                                                         <tr>
                                                            <td class="text-center"></td>
                                                             <td class="text-center"></td>
                                                            <td class="text-center"></td>
                                                            <td class="text-center">No Lawyers Yet</td>
                                                            <td class="text-center"></td>
                                                            <td class="text-center"></td>
                                                        </tr>                                                   
                                                    
                                               
                                            </c:otherwise>
                                        </c:choose>

                                        </tbody>
                                    </table>
                                </div>
                                <div class="d-block text-center card-footer">
                                    <!--                                        <button class="mr-2 btn-icon btn-icon-only btn btn-outline-danger"><i class="pe-7s-trash btn-icon-wrapper"> </i></button>-->
<!--                                    <button class="btn-wide btn btn-success">Save</button>-->
                                </div>
                            </div>
                        </div>
                    </div>









<!--                    <div class="row">
                        <div class="col-md-12">
                            <div class="main-card mb-3 card">
                                <div class="card-header">Active Users
                                    <div class="btn-actions-pane-right">
                                        <div role="group" class="btn-group-sm btn-group">
                                            <button class="active btn btn-focus">Last Week</button>
                                            <button class="btn btn-focus">All Month</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th class="text-center">#</th>
                                                <th>Name</th>
                                                <th class="text-center">City</th>
                                                <th class="text-center">Country</th>
                                                <th class="text-center">Status</th>
                                                <th class="text-center">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center text-muted">#345</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="oiaView.jpg" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">John Doe</div>
                                                                <div class="widget-subheading opacity-7">Web Developer</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">Madrid</td>
                                                <td class="text-center">Country</td>
                                                <td class="text-center">
                                                    <div class="badge badge-warning">Pending</div>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" id="PopoverCustomT-1" class="btn btn-primary btn-sm">Details</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#347</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="oiaView.jpg" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">Ruben Tillman</div>
                                                                <div class="widget-subheading opacity-7">Etiam sit amet orci eget</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">Berlin</td>
                                                <td class="text-center">Country</td>
                                                <td class="text-center">
                                                    <div class="badge badge-success">Completed</div>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" id="PopoverCustomT-2" class="btn btn-primary btn-sm">Details</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#321</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="oiaView.jpg" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">Elliot Huber</div>
                                                                <div class="widget-subheading opacity-7">Lorem ipsum dolor sic</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">London</td>
                                                <td class="text-center">Country</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">In Progress</div>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" id="PopoverCustomT-3" class="btn btn-primary btn-sm">Details</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#55</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="oiaView.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">Vinnie Wagstaff</div>
                                                                <div class="widget-subheading opacity-7">UI Designer</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">Amsterdam</td>
                                                <td class="text-center">Country</td>
                                                <td class="text-center">
                                                    <div class="badge badge-info">On Hold</div>
                                                </td>
                                                <td class="text-center">
                                                    <button type="button" id="PopoverCustomT-4" class="btn btn-primary btn-sm">Details</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="d-block text-center card-footer">
                                                                            <button class="mr-2 btn-icon btn-icon-only btn btn-outline-danger"><i class="pe-7s-trash btn-icon-wrapper"> </i></button>
                                    <button class="btn-wide btn btn-success">Save</button>
                                </div>
                            </div>
                        </div>
                    </div>-->


                </div>


                <div class="app-wrapper-footer">
                    <div class="app-footer">
                        <div class="app-footer__inner">
                            <div class="app-footer-left">
                                <ul class="nav">
                                    <li class="nav-item">
                                        <!--                                            <a href="javascript:void(0);" class="nav-link">
                                                                                        Footer Link 1
                                                                                    </a>-->
                                    </li>
                                    <li class="nav-item">
                                        <!--                                            <a href="javascript:void(0);" class="nav-link">
                                                                                        Footer Link 2
                                                                                    </a>-->
                                    </li>
                                </ul>
                            </div>
                            <div class="app-footer-right">
                                <ul class="nav">
                                    <li class="nav-item">
                                        <!--                                            <a href="javascript:void(0);" class="nav-link">
                                                                                        Footer Link 3
                                                                                    </a>-->
                                    </li>
                                    <li class="nav-item">
                                        <!--                                            <a href="javascript:void(0);" class="nav-link">
                                                                                        <div class="badge badge-success mr-1 ml-0">
                                                                                            <small>NEW</small>
                                                                                        </div>
                                                                                        Footer Link 4
                                                                                    </a>-->
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>                     

            </div>
            <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        </div>
    </div>
    <!--<script type="text/javascript" src="/assets/scripts/main.js"></script>-->
    <!--<script src="/assets/scripts/main.js"></script>-->
    <script src="main.js"></script>
</body>
<!-- <link rel="stylesheet" href="/css/main.css">-->
</html>

