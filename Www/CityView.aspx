﻿<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="CityView.aspx.cs" Inherits="CityView" %>
<%@ MasterType VirtualPath="~/DefaultMP.master" %>
<%@ Register TagPrefix="uc1" TagName="SiteViewList" Src="Controls/SiteViewList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BlogPageTableList" Src="Controls/BlogPageTableList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SiteViewTab" Src="Controls/SiteViewTab.ascx" %>
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
						<h1 style="margin-bottom: 0px;"><asp:Label ID="lblName" runat="server" Text=""> &nbsp;</asp:Label><asp:HyperLink ID="hlBooking" runat="server" Visible="false" Target="_blank" CssClass="booking-large"></asp:HyperLink></h1>
                        <asp:Panel ID="pnlCountry" runat="server" style="padding-top: 5px; padding-bottom: 5px;">
                            Країна: <asp:HyperLink id="hlCountry" runat="server"></asp:HyperLink>
                        </asp:Panel>
                        <uc1:SiteViewTab id="siteViewTab" runat="server"></uc1:SiteViewTab>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row row-bottom-padded-md">					
                    <div ID="divCityContent" runat="server"></div>
				</div>				
			</div>
    </div>     
    <uc1:BlogPageTableList id="blogPageTableList" runat="server"></uc1:BlogPageTableList>
    <uc1:SiteViewList id="siteViewList" runat="server"></uc1:SiteViewList>
</asp:Content>

