﻿<%@ Control Language="C#" AutoEventWireup="false" EnableViewState="false" Inherits="R7.Epsilon.SocialShareScripts" %>
<%@ OutputCache Duration="1200" VaryByParam="TabId;Language" %>
<%-- Facebook Like --%><% if (Config.FacebookShareEnabled) { %>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    <% if (!string.IsNullOrWhiteSpace (Config.FacebookAppId)) { %>
    js.src = "//connect.facebook.net/<%= CultureInfo.CurrentCulture.Name.Replace ("-", "_") %>/sdk.js#xfbml=1&version=v2.3&appId=<%: Config.FacebookAppId %>";
    <% } else { %>
    js.src = "//connect.facebook.net/<%= CultureInfo.CurrentCulture.Name.Replace ("-", "_") %>/sdk.js#xfbml=1&version=v2.3";
    <% } %>
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script><% } %>
<%-- Tweet Button --%><% if (Config.TwitterShareEnabled) { %><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script><% } %>
<%-- Google +1 --%><% if (Config.GoogleShareEnabled) { %><script type="text/javascript">
window.___gcfg = {
    lang: '<%= CultureInfo.CurrentCulture.TwoLetterISOLanguageName %>', 
    parsetags: 'onload'
};
(function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/platform.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
})();
</script><% } %>
<%-- VK.com Widget--%><% if (Config.VkShareEnabled) { %><script type="text/javascript" src="//vk.com/js/api/openapi.js?116"></script>
<script type="text/javascript">
    VK.init({apiId: <%= Config.VkApiId %>, onlyWidgets: true});
    VK.Widgets.Like("vk_like", {type: "mini", height: 20});
</script><% } %>