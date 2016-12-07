<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="Blogs.aspx.cs" Inherits="Blogs" %>
<%@ Register TagPrefix="uc1" TagName="BlogPageViewList" Src="Controls/BlogPageViewList.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">
    <uc1:BlogPageViewList id="blogPageViewList" runat="server" PageSize="15" ShowPager="true"></uc1:BlogPageViewList>	
</asp:Content>

