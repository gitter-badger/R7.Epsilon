﻿<%@ Control Language="C#" AutoEventWireup="false" Inherits="R7.Epsilon.EpsilonContainerBase" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<div class="dnnFormMessage dnnFormInfo cnt-message dnnClear">
    <h4><dnn:TITLE ID="dnnTITLE" runat="server" class="h4" /></h4>
    <div class="ContainerPane" runat="server" id="ContentPane"></div>
</div>