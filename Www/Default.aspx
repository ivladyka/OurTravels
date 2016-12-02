<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">
    <asp:Repeater ID="rptBlogPage" runat="server" onitemdatabound="rptBlogPage_ItemDataBound">
        <ItemTemplate>
            <div>
                <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Eval("Name") %>'></asp:HyperLink><br />
                <asp:Label ID="lblTravelDate" runat="server" Text="" Visible="false"></asp:Label><br />
                <asp:Label ID="lblCategoryContent" runat="server"  Text='<%# Eval("PageContent") %>'></asp:Label><br />
                <asp:HyperLink ID="hlReadMore" runat="server" Text='читати далі...'></asp:HyperLink><br />
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <br />
    <asp:Repeater ID="rptPager" runat="server">
        <ItemTemplate>
            <asp:LinkButton ID="lnkPage" runat="server" Text='<%#Eval("Text") %>' CommandArgument='<%# Eval("Value") %>'
                CssClass='<%# Convert.ToBoolean(Eval("Enabled")) ? "page_enabled" : "page_disabled" %>'
                OnClick="Page_Changed" OnClientClick='<%# !Convert.ToBoolean(Eval("Enabled")) ? "return false;" : "" %>'></asp:LinkButton>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

