<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="CountryView.aspx.cs" Inherits="CountryView" %>
<%@ MasterType VirtualPath="~/DefaultMP.master" %>
<%@ Register TagPrefix="uc1" TagName="CityTableView" Src="Controls/CityTableView.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SiteViewTab" Src="Controls/SiteViewTab.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BlogPageTableListBig" Src="Controls/BlogPageTableListBig.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">
    <div class="fh5co-hero fh5co-hero-3 blogpage-header">
			<div class="fh5co-overlay"></div>
			<asp:Panel ID="pnlPageTitle" runat="server" class="fh5co-cover fh5co-cover_3 text-center" data-stellar-background-ratio="0.5" style="background-image: url(/Theme/images/map1.png);">

			</asp:Panel>
		</div>
    <div id="fh5co-blogpageview">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center heading-section animate-box">
						<h1 style="margin-bottom: 10px;"><asp:Label ID="lblName" runat="server" Text=""></asp:Label></h1>
                        <asp:Panel ID="pnlCapital" runat="server" style="padding-top: 5px; padding-bottom: 5px;">
        Столиця: <asp:HyperLink id="hlCapital" runat="server"></asp:HyperLink>
    </asp:Panel>
						<h4 style="padding: 0; margin: 0;" id="h4OurTravelsInThisWay" runat="server"><a href="#divOurTravelsInThisWay" style="color:#f27660"><span class="glyphicon glyphicon-menu-down" aria-hidden="true" style="color:#f27660"></span> Наші подорожі в цьому напрямку <span class="glyphicon glyphicon-menu-down" aria-hidden="true" style="color:#f27660"></span></a></h4>
                        <hr style="margin: 10px 0px 20px 0px;" id="hrOurTravelsInThisWay" runat="server" />
                        <uc1:SiteViewTab id="siteViewTab" runat="server"></uc1:SiteViewTab>
					</div>
				</div>
			</div>
			<div class="container" id="divCountryContentContainer" runat="server">
				<div class="row row-bottom-padded-md">					
                    <div ID="divCountryContent" runat="server" class="blog-content"></div>
				</div>				
			</div>
    </div>     
    <uc1:CityTableView id="cityTableView" runat="server"></uc1:CityTableView>
	<span id="divOurTravelsInThisWay"></span>
    <uc1:BlogPageTableListBig id="blogPageTableListBig" runat="server" class="blog-content"></uc1:BlogPageTableListBig>
</asp:Content>

