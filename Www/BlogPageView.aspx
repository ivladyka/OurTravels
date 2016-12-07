<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="BlogPageView.aspx.cs" Inherits="BlogPageView" %>
<%@ Register TagPrefix="uc1" TagName="BlogPageTableList" Src="Controls/BlogPageTableList.ascx" %>
<%@ MasterType VirtualPath="~/DefaultMP.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">
    <asp:Panel ID="pnlTitleImage" runat="server">
        <asp:Image ID="imgTitleImage" runat="server" />
    </asp:Panel>
    <asp:Label ID="lblName" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="lblTravelDate" runat="server" Text="" Visible="false"></asp:Label><br />
    <asp:Label ID="lblCategoryContent" runat="server" Text=""></asp:Label><br />
    <uc1:BlogPageTableList id="blogPageTableList" runat="server"></uc1:BlogPageTableList>
</asp:Content>

