﻿<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="CountryView.aspx.cs" Inherits="CountryView" %>
<%@ MasterType VirtualPath="~/DefaultMP.master" %>
<%@ Register TagPrefix="uc1" TagName="CityTableView" Src="Controls/CityTableView.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SiteViewList" Src="Controls/SiteViewList.ascx" %>
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
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3><asp:Label ID="lblName" runat="server" Text=""></asp:Label></h3>
                        <asp:Panel ID="pnlCapital" runat="server">
        Столиця: <asp:HyperLink id="hlCapital" runat="server"></asp:HyperLink>
    </asp:Panel>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row row-bottom-padded-md">					
                    <asp:Label ID="lblCountryContent" runat="server" Text=""></asp:Label><br />
				</div>				
			</div>
    </div> 
    <uc1:CityTableView id="cityTableView" runat="server"></uc1:CityTableView>
    <uc1:SiteViewList id="siteViewList" runat="server"></uc1:SiteViewList>
</asp:Content>

