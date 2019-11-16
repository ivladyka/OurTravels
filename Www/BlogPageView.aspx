<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="BlogPageView.aspx.cs" Inherits="BlogPageView" %>
<%@ Register TagPrefix="uc1" TagName="BlogPageTableList" Src="Controls/BlogPageTableList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SiteViewTab" Src="Controls/SiteViewTab.ascx" %>
<%@ MasterType VirtualPath="~/DefaultMP.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">
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
                        <p id="pTravelDate" runat="server" class="travel-date"><asp:Label ID="lblTravelDate" runat="server" Text="" Visible="false"></asp:Label><br /></p>
                        <p id="pRoutes" runat="server" visible="false" class="travel-routes"></p>
                        <uc1:SiteViewTab id="siteViewTab" runat="server"></uc1:SiteViewTab>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row row-bottom-padded-md">					
                    <div ID="divCategoryContent" runat="server"></div>
				</div>				
			</div>
		</div> 
 
    <uc1:BlogPageTableList id="blogPageTableList" runat="server"></uc1:BlogPageTableList>
</asp:Content>

