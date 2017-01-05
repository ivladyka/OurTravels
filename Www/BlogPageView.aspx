<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="BlogPageView.aspx.cs" Inherits="BlogPageView" %>
<%@ Register TagPrefix="uc1" TagName="BlogPageTableList" Src="Controls/BlogPageTableList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SiteViewList" Src="Controls/SiteViewList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SocialNetworks" Src="Controls/SocialNetworks.ascx" %>
<%@ MasterType VirtualPath="~/DefaultMP.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BlogContentPlaceHolder3" Runat="Server">
    <div id="fb-root"></div>
<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/uk_UA/sdk.js#xfbml=1&version=v2.8";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
 <script>
     window.fbAsyncInit = function () {
         FB.init({
             appId: '1792560357674340',
             xfbml: true,
             version: 'v2.8'
         });
     };

     (function (d, s, id) {
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) { return; }
         js = d.createElement(s); js.id = id;
         js.src = "//connect.facebook.net/en_US/sdk.js";
         fjs.parentNode.insertBefore(js, fjs);
     }(document, 'script', 'facebook-jssdk'));
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">
       	<div class="fh5co-hero fh5co-hero-3 blogpage-header">
			<div class="fh5co-overlay"></div>
			<asp:Panel ID="pnlPageTitle" runat="server" class="fh5co-cover fh5co-cover_3 text-center" data-stellar-background-ratio="0.5" style="background-image: url(/Theme/images/map1.png);">

			</asp:Panel>
		</div>
    <div id="fh5co-blogpageview">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3><asp:Label ID="lblName" runat="server" Text=""></asp:Label></h3>
						<p id="pTravelDate" runat="server"><asp:Label ID="lblTravelDate" runat="server" Text="" Visible="false"></asp:Label><br /></p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row row-bottom-padded-md">					
                    <div ID="divCategoryContent" runat="server"></div>
                    <div class="fb-comments" data-href="https://www.facebook.com/traveldreamsua/" data-width="100%" data-numposts="5"></div>
                   <!-- <uc1:SocialNetworks id="socialNetworks" runat="server"></uc1:SocialNetworks> -->
				</div>				
			</div>
		</div> 
    <uc1:SiteViewList id="siteViewList" runat="server"></uc1:SiteViewList>
    <uc1:BlogPageTableList id="blogPageTableList" runat="server"></uc1:BlogPageTableList>
</asp:Content>

