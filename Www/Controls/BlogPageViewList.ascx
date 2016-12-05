<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BlogPageViewList.ascx.cs" Inherits="Controls_BlogPageViewList" %>
<div class="container" id="divBlogPageViewList" runat="server">
</div>
<asp:Repeater ID="rptPager" runat="server">
        <ItemTemplate>
            <asp:LinkButton ID="lnkPage" runat="server" Text='<%#Eval("Text") %>' CommandArgument='<%# Eval("Value") %>'
                CssClass='<%# Convert.ToBoolean(Eval("Enabled")) ? "page_enabled" : "page_disabled" %>'
                OnClick="Page_Changed" OnClientClick='<%# !Convert.ToBoolean(Eval("Enabled")) ? "return false;" : "" %>'></asp:LinkButton>
        </ItemTemplate>
</asp:Repeater>