<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="Blogs.aspx.cs" Inherits="Blogs" %>
<%@ Register TagPrefix="uc1" TagName="BlogPageViewList" Src="Controls/BlogPageViewList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SiteViewList" Src="Controls/SiteViewList.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">
            <div id="fh5co-blog-section" class="fh5co-section-gray1">
			    <div class="container">
				    <div class="row">
					    <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						    <h1>Наші подорожі</h1>
						    <p>Я бачу мою дорогу, але не знаю куди вона приведе. Незнання того, куди йде дорога, надихає мене йти нею. <br /><i>– Росалія де Кастро</i></p>
					    </div>
				    </div>
			    </div>
                <uc1:BlogPageViewList id="blogPageViewList" runat="server" PageSize="30" ShowPager="true"></uc1:BlogPageViewList>
            </div>	
            <uc1:SiteViewList id="siteViewList" runat="server"></uc1:SiteViewList>
</asp:Content>

