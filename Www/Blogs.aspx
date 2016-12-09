<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="Blogs.aspx.cs" Inherits="Blogs" %>
<%@ Register TagPrefix="uc1" TagName="BlogPageViewList" Src="Controls/BlogPageViewList.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">
    	<!--	<div class="fh5co-hero fh5co-hero-2">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover fh5co-cover_2 text-center" data-stellar-background-ratio="0.5" style="background-image: url(/Theme/images/map1.png);">
				<div class="desc animate-box">
					<h2>Блог</h2>
					<span></span>
				</div>
			</div>
		    </div>-->
            <div id="fh5co-blog-section" class="fh5co-section-gray1">
			    <div class="container">
				    <div class="row">
					    <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						    <h1>Наші подорожі</h1>
						    <p>Я бачу мою дорогу, але не знаю куди вона приведе. Незнання того, куди йде дорога, надихає мене йти нею. <br /><i>– Росалія де Кастро</i></p>
					    </div>
				    </div>
			    </div>
                <uc1:BlogPageViewList id="blogPageViewList" runat="server" PageSize="15" ShowPager="true"></uc1:BlogPageViewList>
            </div>	
</asp:Content>

