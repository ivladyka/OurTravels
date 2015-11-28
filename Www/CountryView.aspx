<%@ Page Title="" Language="C#" MasterPageFile="~/BookMasterPage.master" AutoEventWireup="true" CodeFile="CountryView.aspx.cs" Inherits="CountryView" %>
<%@ MasterType VirtualPath="~/BookMasterPage.master" %>
<%@ Register TagPrefix="uc1" TagName="CityTableView" Src="Controls/CityTableView.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphLeftSide" Runat="Server">
    <uc1:CityTableView id="cityTableView" runat="server"></uc1:CityTableView>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphRightSide" Runat="Server">
    <asp:Label id="lblName" runat="server"></asp:Label>
    <asp:Panel ID="pnlCapital" runat="server">
        <%=Capital%>: <asp:HyperLink id="hlCapital" runat="server"></asp:HyperLink>
    </asp:Panel>
    <asp:Label ID="lblCountryContent" runat="server" Text=""></asp:Label>
</asp:Content>

