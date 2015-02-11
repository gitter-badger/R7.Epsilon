﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Universal.ascx.cs" Inherits="R7.Epsilon.Universal" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BANNER" Src="~/Admin/Skins/Banner.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="skin" TagName="GTRANSLATE" Src="Controls/GTranslate.ascx" %>
<%@ Register TagPrefix="skin" TagName="SOCIALGROUPS" Src="Controls/SocialGroups.ascx" %>
<%@ Register TagPrefix="skin" TagName="PAGEHEADER" Src="Controls/PageHeader.ascx" %>
<%@ Register TagPrefix="skin" TagName="SOCIALSHARESCRIPTS" Src="Controls/SocialShareScripts.ascx" %>
<%@ Register TagPrefix="skin" TagName="FOUNDERS" Src="Controls/Founders.ascx" %>

<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

<dnn:JQUERY ID="dnnjQuery" runat="server" jQueryHoverIntent="true" />
<dnn:DnnJsInclude ID="bootstrapJS" runat="server" FilePath="js/bootstrap.min.js" PathNameAlias="SkinPath" Priority="10" />
<dnn:DnnCssInclude ID="bootStrapCSS" runat="server" FilePath="css/bootstrap.min.css" PathNameAlias="SkinPath" Priority="14" />
<dnn:DnnJsInclude ID="bluImpJS" runat="server" FilePath="js/jquery.blueimp-gallery.min.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="skinJS" runat="server" FilePath="js/skin.js" PathNameAlias="SkinPath" />

<skin:SOCIALSHARESCRIPTS runat="server" />

<dnn:TEXT runat="server" CssClass="age-rating" resourcekey="AgeRating.Text" ReplaceTokens="false" />

<header>

    <div class="container header-row-1">
        <div class="skin-language-wrapper">
            <div class="skin-language">
                <dnn:LANGUAGE runat="server" id="dnnLANGUAGE" ShowLinks="True" ShowMenu="False" />
                <skin:GTRANSLATE runat="server" />
            </div>
        </div>  
        <div class="skin-socialgroups-wrapper">
            <skin:SOCIALGROUPS runat="server" />
        </div>
        <div class="skin-search-wrapper">
            <div class="dnnFormItem skin-search">
                <dnn:SEARCH id="dnnSearch" runat="server" ShowSite="false" ShowWeb="false" />
            </div>
        </div>
    </div>

    <nav class="navbar navbar-default skin-primary-navbar" role="navigation">
        <div class="container">
            <div class="navbar-brand skin-navbar-brand-link visible-xs">
                <a href="/<%= CultureInfo.CurrentCulture.Name.ToLowerInvariant() %>"><%= PortalSettings.PortalName %></a>
            </div>
            <button type="button" class="navbar-toggle skin-top-menu-toggle" data-toggle="collapse" data-target=".skin-top-menu">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="skin-login-simple visible-xs">
                <dnn:LOGIN runat="server" /> | <dnn:USER runat="server" />
            </div>
            <div class="navbar-collapse collapse dnnClear skin-top-menu">
                <div class="skin-primary-menu">
                    <dnn:MENU MenuStyle="Mega2Epsilon" runat="server" NodeSelector="*,0,2" />
                </div>
            </div>
            <div class="navbar-collapse collapse skin-primary-navbar-main">
                <div class="skin-founders-wrapper">
                    <skin:FOUNDERS runat="server" Target="_blank" />
                </div>
                <div class="navbar-brand skin-navbar-brand-logo">
                    <dnn:LOGO runat="server" id="dnnLOGO" />
                </div>
                <div class="skin-login-full">
                    <dnn:LOGIN CssClass="LoginLink" runat="server" LegacyMode="false" />
                    <dnn:USER runat="server" LegacyMode="false" />
                </div>
            </div>
        </div>
    </nav>

    <nav class="navbar skin-secondary-navbar" role="navigation">
        <div class="container">
            <div class="navbar-collapse collapse dnnClear skin-top-menu">
                <div class="skin-secondary-menu">
                    <dnn:MENU MenuStyle="Mega2Epsilon" runat="server" NodeSelector="CurrentChildren" />
                </div>    
            </div>
        </div>
    </nav>
    <nav class="navbar skin-local-navbar" role="navigation">
        <div class="container">
            <div class="breadcrumb">
                <dnn:BREADCRUMB id="dnnBREADCRUMB" runat="server" CssClass="skin-breadcrumb-link" RootLevel="0" Separator="/" />
            </div>
        </div>
        <div class="container">
            <div class="page-header">
                <skin:PAGEHEADER runat="server" EnableSocialShare="true" />
            </div>
        </div>
    </nav>
</header>

<div id="CarouselPane" runat="server" class="carousel slide" containertype="G" containername="R7.Epsilon" containersrc="Blank.ascx" />

<div class="container">

    <div id="TopRow1" class="row">
        <div id="TopPane" runat="server" class="col-md-12" />
    </div>

    <div id="TopRow2" class="row">
        <div id="TopLeftPane" runat="server" class="col-md-7" />
        <!-- REVIEW: Make TopRightPane of fixed width? -->
        <div id="TopRightPane" runat="server" class="col-md-5" />
    </div>

    <div id="TopRow3" class="row">
        <div id="TopPane11" runat="server" class="col-md-4" />
        <div id="TopPane12" runat="server" class="col-md-4" />
        <div id="TopPane13" runat="server" class="col-md-4" />
    </div>

    <div id="TopRow4" class="row">
        <div id="TopPane21" runat="server" class="col-md-4" />
        <div id="TopPane22" runat="server" class="col-md-4" />
        <div id="TopPane23" runat="server" class="col-md-4" />
    </div>

    <div id="ContentOddRow1" class="row">
        <div id="ContentPane" runat="server" class="col-md-9 col-sm-7" />
        <div id="RightPane" runat="server" class="col-md-3 col-sm-5" />
    </div>
   
    <div id="ContentEvenRow1" class="row"> 
        <div id="LeftPane" runat="server" class="col-md-3 col-sm-5" />
        <div id="ContentLeftPane" runat="server" class="col-md-9 col-sm-7" />
    </div>

    <div id="ContentOddRow2" class="row">
        <div id="ContentPane2" runat="server" class="col-md-9 col-sm-7" />
        <div id="RightPane2" runat="server" class="col-md-3 col-sm-5" />
    </div>

    <div id="ContentEvenRow2" class="row"> 
        <div id="LeftPane2" runat="server" class="col-md-3 col-sm-5" />
        <div id="ContentLeftPane2" runat="server" class="col-md-9 col-sm-7" />
    </div>

    <div id="ContentOddRow3" class="row">
        <div id="ContentPane3" runat="server" class="col-md-9 col-sm-7" />
        <div id="RightPane3" runat="server" class="col-md-3 col-sm-5" />
    </div>

    <div id="ContentEvenRow3" class="row"> 
        <div id="LeftPane3" runat="server" class="col-md-3 col-sm-5" />
        <div id="ContentLeftPane3" runat="server" class="col-md-9 col-sm-7" />
    </div>

    <div id="ContentOddRow4" class="row">
        <div id="ContentPane4" runat="server" class="col-md-9 col-sm-7" />
        <div id="RightPane4" runat="server" class="col-md-3 col-sm-5" />
    </div>

    <div id="ContentEvenRow4" class="row"> 
        <div id="LeftPane4" runat="server" class="col-md-3 col-sm-5" />
        <div id="ContentLeftPane4" runat="server" class="col-md-9 col-sm-7" />
    </div>

    <div id="BottonRow1" class="row">
        <div id="BottomPane11" runat="server" class="col-md-4" />
        <div id="BottomPane12" runat="server" class="col-md-4" />
        <div id="BottomPane13" runat="server" class="col-md-4" />
    </div>

    <div id="BottonRow2" class="row">
        <div id="BottomPane21" runat="server" class="col-md-4" />
        <div id="BottomPane22" runat="server" class="col-md-4" />
        <div id="BottomPane23" runat="server" class="col-md-4" />
    </div>

    <div id="BottonRow3" class="row">
        <div id="BottomLeftPane" runat="server" class="col-md-7" />
        <div id="BottomRightPane" runat="server" class="col-md-5" />
    </div>

    <div id="BottomRow4" class="row">
        <div id="BottomPane" runat="server" class="col-md-12" />
    </div>

     <%--  
    <div id="UserProfile" class="row">
        <div id="UserProfileLeft" runat="server" class="col-md-2" />
        <div id="UserProfileContent" runat="server" class="col-md-10" />
    </div> --%>

</div>

<footer class="container">
    <div id="FooterRow1" class="row">
        <div id="FooterRowLeft" class="col-md-6">
            <div class="skin-footer-buttons">
                <dnn:BANNER id="dnnBanner1" runat="server" GroupName="FooterButtons" BannerTypeId="4" BannerCount="3" Orientation="H" AllowNullBannerType="true" />    
            </div>
        </div>
        <div id="FooterRow1Middle" runat="server" class="col-md-3" />
        <div id="FooterRow1Right" runat="server" class="col-md-3" />
    </div>
    <div id="FooterRow2" class="row">
        <div id="FooterPane" runat="server" class="col-md-12" />
    </div>
    <div id="FooterRow3" class="row">
        <div id="CopyRightPane" class="SkinLink col-md-12 center">
            <div class="col-md-12">
                <dnn:copyright ID="dnnCopyright" runat="server" />
                <dnn:terms id="dnnTerms" runat="server" />
                <dnn:privacy id="dnnPrivacy" runat="server" />
            </div>
            <a href="http://cjh.am/1mGBQby" target="_blank">Design: HammerFlex DNN Skin by Christoc.com</a>
        </div>
    </div>
</footer>

<!-- gallery and carousel controls, hidden by default -->
<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-use-bootstrap-modal="false">
    <div class="slides"></div>
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
</div>
