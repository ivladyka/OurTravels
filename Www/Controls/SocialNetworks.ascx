﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SocialNetworks.ascx.cs" Inherits="Controls_SocialNetworks" %>
<div id="fb-root"></div>
<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

</script>
<script src="https://apis.google.com/js/platform.js" async defer>
  {lang: 'uk'}
</script>
<div class="fb-like" data-layout="button" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>
<div class="g-plusone" data-size="medium"></div>
<a href="https://twitter.com/share" class="twitter-share-button" data-show-count="false">Tweet</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>