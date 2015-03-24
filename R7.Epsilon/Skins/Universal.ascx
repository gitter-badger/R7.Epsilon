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
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="skin" TagName="GADSENSE" Src="Controls/GAdsense.ascx" %>
<%@ Register TagPrefix="skin" TagName="SOCIALGROUPS" Src="Controls/SocialGroups.ascx" %>
<%@ Register TagPrefix="skin" TagName="PAGEHEADER" Src="Controls/PageHeader.ascx" %>
<%@ Register TagPrefix="skin" TagName="SOCIALSHARESCRIPTS" Src="Controls/SocialShareScripts.ascx" %>
<%@ Register TagPrefix="skin" TagName="FOUNDERS" Src="Controls/Founders.ascx" %>
<%@ Register TagPrefix="skin" TagName="LOGOTITLE" Src="Controls/LogoTitle.ascx" %>
<%@ Register TagPrefix="skin" TagName="BROWSERCHECK" Src="Controls/BrowserCheck.ascx" %>
<%@ Register TagPrefix="skin" TagName="FEEDBACKBUTTON" Src="Controls/FeedbackButton.ascx" %>
<%@ Register TagPrefix="skin" TagName="YCycounter" Src="Controls/YCycounter.ascx" %>

<dnn:META ID="bootstrapIECompat" runat="server" Name="X-UA-Compatible" Content="IE=edge" />
<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />
<dnn:DnnCssInclude ID="bootStrapCSS" runat="server" FilePath="css/bootstrap.min.css" PathNameAlias="SkinPath" Priority="14" />
<dnn:DnnCssInclude ID="bootStrapThemeCSS" runat="server" FilePath="css/bootstrap-theme.min.css" PathNameAlias="SkinPath" Priority="14" />
<dnn:DnnCssInclude id="skinCSS" runat="server" FilePath="<%# Config.SkinCss %>" PathNameAlias="SkinPath" />
<dnn:JQUERY ID="dnnjQuery" runat="server" jQueryHoverIntent="true" />
<dnn:DnnJsInclude ID="bootstrapJS" runat="server" FilePath="js/bootstrap.min.js" PathNameAlias="SkinPath" Priority="10" ForceProvider="DnnFormBottomProvider" />
<dnn:DnnJsInclude ID="menuJS" runat="server" FilePath="js/menu.min.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" />
<dnn:DnnJsInclude ID="skinJS" runat="server" FilePath="js/skin.min.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" />
<dnn:DnnJsInclude FilePath="rangy/rangy-core.js" runat="server" PathNameAlias="SharedScripts" ForceProvider="DnnFormBottomProvider" />

<div id="fb-root"></div>
<header>
    <div class="container">
        <div class="row">
            <a href="#TopRow1" class="sr-only sr-only-focusable"><%: Localizer.GetString ("SkipToContent.Text") %></a>
            <skin:BROWSERCHECK runat="server" />
        </div>
        <div class="row">
            <div class="col-md-1 col-sm-2 col-xs-4 skin-language">
                <dnn:LANGUAGE runat="server" id="dnnLANGUAGE" ShowLinks="True" ShowMenu="False" />
            </div>  
            <div class="col-md-4 col-sm-2 col-xs-5 skin-functions">
                <a class="skin-functions-icon skin-functions-icon-gtranslate" href="javascript:skin_gtranslate('<%= CultureInfo.CurrentCulture.TwoLetterISOLanguageName %>')" title="<%: Localizer.GetString ("GoogleTranslate.Title") %>" data-toggle="tooltip" data-placement="bottom"></a>
                <asp:LinkButton id="linkA11yButton" runat="server" CssClass="skin-functions-icon skin-functions-icon-a11y" OnClick="linkA11yButton_Click" data-toggle="tooltip" data-placement="bottom" />
                <a class="skin-functions-icon skin-functions-icon-age-rating" href="#" data-toggle="tooltip" data-placement="bottom" title="<%: Localizer.GetString("AgeRating.Title") %>"></a>
            </div>
            <div class="visible-xs col-xs-3 skin-socialgroups-wrapper">
                <skin:SOCIALGROUPS runat="server" MobileView="true" />
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 skin-search">
                <dnn:SEARCH id="dnnSearch" runat="server" ShowSite="false" ShowWeb="false" />
            </div>
            <div class="col-md-3 col-sm-4 hidden-xs skin-socialgroups-wrapper">
                <skin:SOCIALGROUPS runat="server" MobileView="false" />
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
                    <dnn:MENU id="menuPrimary" runat="server" MenuStyle="Mega2Epsilon" NodeSelector="<%# Config.PrimaryMenuNodeSelector %>" IncludeNodes="<%# Config.PrimaryMenuIncludeNodes %>" />
                </div>
            </div>
            <div class="navbar-collapse collapse skin-primary-navbar-main">
                <div class="skin-founders-wrapper">
                    <skin:FOUNDERS runat="server" Target="_blank" />
                </div>
                <div class="navbar-brand skin-navbar-brand-logo">
                    <a href="/"><img src="/Portals/_default/Skins/R7.Epsilon/images/logo_template_133x100.png" style="width:133px;height:100px" /></a>
                </div>
                <div class="skin-logo-title-wrapper hidden-xs">
                    <skin:LOGOTITLE runat="server" />
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
                    <dnn:MENU id="menuSecondary" runat="server" MenuStyle="Mega2Epsilon" NodeSelector="<%# Config.SecondaryMenuNodeSelector %>" IncludeNodes="<%# Config.SecondaryMenuIncludeNodes %>" />
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
    <div id="MiddleRow1" class="row">
        <div id="MiddlePane11" runat="server" class="col-md-4" />
        <div id="MiddlePane12" runat="server" class="col-md-4" />
        <div id="MiddlePane13" runat="server" class="col-md-4" />
    </div>
    <div id="MiddleRow2" class="row">
        <div id="MiddlePane21" runat="server" class="col-md-4" />
        <div id="MiddlePane22" runat="server" class="col-md-4" />
        <div id="MiddlePane23" runat="server" class="col-md-4" />
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
</div>
<footer class="footer skin-footer">
    <div class="skin-footer-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 col-sm-12">
                    <div class="skin-banner-large hidden-xs">
                        <skin:GADSENSE runat="server" />
                    </div>
                    <div class="row">
                        <div class="skin-footer-buttons col-sm-6 hidden-xs">
                            <dnn:BANNER id="dnnBanner1" runat="server" GroupName="<%# Config.FooterButtonsGroupName %>" BannerTypeId="4" BannerCount="3" Orientation="H" AllowNullBannerType="true" />    
                        </div>
                        <div class="skin-footer-content col-sm-6"><%= Localizer.GetString ("FooterPane1.Content") %></div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-6 skin-footer-content"><%= Localizer.GetString ("FooterPane2.Content") %></div>
                <div class="col-lg-2 col-sm-6 skin-footer-content"><%= Localizer.GetString ("FooterPane3.Content") %></div>
            </div>
        </div>
    </div>
    <div class="skin-footer-last">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-xs-12 skin-footer-80x31-buttons">
                    <skin:YCYCOUNTER runat="server" />
                </div>
                <div class="col-md-10 col-xs-12 skin-terms">
                    <dnn:COPYRIGHT runat="server" /> |
                    <span class="skin-copyright"><%= Localizer.GetString ("SkinCopyright.Text") %></span>
                    <% if (Config.ShowTerms) { %> | <dnn:TERMS runat="server" /> <% } %>
                    <% if (Config.ShowPrivacy) { %> | <dnn:PRIVACY runat="server" /> <% } %>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="skin-float-button-wrapper">
    <a href="#" class="skin-float-button skin-float-button-up" title="<%: Localizer.GetString ("ButtonUp.Title") %>" style="display:none" data-toggle="tooltip" data-placement="left" data-container="body"></a>
    <skin:FEEDBACKBUTTON runat="server" CssClass="skin-float-button skin-float-button-feedback" Target="_blank" FeedbackTabId="<%# Config.FeedbackTabId %>" />
</div>
<skin:SOCIALSHARESCRIPTS runat="server" />