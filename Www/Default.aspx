<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register TagPrefix="uc1" TagName="BlogPageViewList" Src="Controls/BlogPageViewList.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">
    <div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(Theme/images/cover_bg_1.jpg);">
				<div class="desc animate-box">
					<h2><strong>Світ – це книжка і той, хто не подорожує, <br/>читає лише одну сторінку</strong></h2>
					<span><strong><i>– Св. Августин</i></strong></span>
					<!--<p><a class="btn btn-primary btn-lg btn-learn" href="#">Learn More</a> <a class="btn btn-primary btn-lg popup-vimeo btn-video" href="https://vimeo.com/channels/staffpicks/93951774"><i class="icon-play"></i> Watch Video</a></p>	-->
                </div>
			</div>

		</div>
       <div id="fh5co-blog-section" class="fh5co-section-gray fh5co-home-blog-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>Наші останні подорожі</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
					</div>
				</div>
			</div>

			<div class="container">
                <uc1:BlogPageViewList id="blogPageViewList" runat="server" PageSize="3" ShowPager="false"></uc1:BlogPageViewList>				
			</div>
		</div>	
		<div id="fh5co-services-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>Деякі поради</h3>
						<p>Скористайтесь нашими порадами і Ваша подорож буде неймовірною...</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row text-center">
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<asp:HyperLink id="HyperLink6" runat="server" NavigateUrl="~/page/3/accommodation/"><span><i class="icon-accommodations"></i></span></asp:HyperLink>
							<h3><asp:HyperLink id="hlMenuAccommodation" runat="server" NavigateUrl="~/page/3/accommodation/">Проживання</asp:HyperLink></h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<asp:HyperLink id="HyperLink5" runat="server" NavigateUrl="~/page/4/transport/"><span><i class="icon-travels"></i></span></asp:HyperLink>
							<h3><asp:HyperLink id="hlMenuTransport" runat="server" NavigateUrl="~/page/4/transport/">Транспорт</asp:HyperLink></h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<asp:HyperLink id="HyperLink4" runat="server" NavigateUrl="~/page/5/animals/"><span><i class="icon-animals"></i></span></asp:HyperLink>
							<h3><asp:HyperLink id="hlMenuAnimals" runat="server" NavigateUrl="~/page/5/animals/">Тварини</asp:HyperLink></h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<asp:HyperLink id="HyperLink3" runat="server" NavigateUrl="~/page/6/children/"><span><i class="icon-baby"></i></span></asp:HyperLink>
							<h3><asp:HyperLink id="hlMenuChildren" runat="server" NavigateUrl="~/page/6/children/">Діти</asp:HyperLink></h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<asp:HyperLink id="HyperLink2" runat="server"  NavigateUrl="~/page/7/planning/"><span><i class="icon-plan"></i></span></asp:HyperLink>
							<h3><asp:HyperLink id="hlMenuPlanning" runat="server"  NavigateUrl="~/page/7/planning/">Планування подорожі</asp:HyperLink></h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<asp:HyperLink id="HyperLink1" runat="server"  NavigateUrl="~/page/8/suitcase/"><span><i class="icon-baggage"></i></span></asp:HyperLink>
							<h3><asp:HyperLink id="hlMenuSuitcase" runat="server"  NavigateUrl="~/page/8/suitcase/">Збираємо валізу</asp:HyperLink></h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
    	<div class="fh5co-hero fh5co-hero-2 fh5co-map ">
            <div class="fh5co-overlay"></div>
            <div class="fh5co-cover fh5co-cover_2 text-center" data-stellar-background-ratio="0.5" style="background-image: url(Theme/images/map.jpg); background-position: 0px 0px; border-top:1px solid #ccc">
                <div class="desc animate-box fadeInUp animated">
                    <h3>Де ми вже були</h3>
                </div>
            </div>
        </div>
		<!-- END What we do -->
</asp:Content>

