<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">
    <div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(Theme/images/cover_bg_1.jpg);">
				<div class="desc animate-box">
					<h2>Capture Every <strong>Good</strong> Things</h2>
					<span>Lovely Crafted by <a href="http://frehtml5.co/" target="_blank" class="fh5co-site-name">FREEHTML5.co</a></span>
					<!--<p><a class="btn btn-primary btn-lg btn-learn" href="#">Learn More</a> <a class="btn btn-primary btn-lg popup-vimeo btn-video" href="https://vimeo.com/channels/staffpicks/93951774"><i class="icon-play"></i> Watch Video</a></p>	-->
                </div>
			</div>

		</div>
       <div id="fh5co-blog-section" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>Recent From Blog</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
					</div>
				</div>
			</div>

			<div class="container">
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
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="Theme/images/blog-1.jpg" alt=""></a>
							<div class="blog-text">
								<div class="prod-title">
									<h3><a href=""#>45 Minimal Worksspace Rooms for Web Savvys</a></h3>
									<span class="posted_by">Sep. 15th</span>
									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<a href="#" class="btn btn-primary">Read More</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="Theme/images/blog-2.jpg" alt=""></a>
							<div class="blog-text">
								<div class="prod-title">
									<h3><a href=""#>45 Minimal Worksspace Rooms for Web Savvys</a></h3>
									<span class="posted_by">Sep. 15th</span>
									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<a href="#" class="btn btn-primary">Read More</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="Theme/images/blog-3.jpg" alt=""></a>
							<div class="blog-text">
								<div class="prod-title">
									<h3><a href=""#>45 Minimal Worksspace Rooms for Web Savvys</a></h3>
									<span class="posted_by">Sep. 15th</span>
									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<a href="#" class="btn btn-primary">Read More</a>
								</div>
							</div> 
						</div>
					</div>

				
				</div>
			</div>
		</div>	
    <asp:Repeater ID="rptPager" runat="server">
        <ItemTemplate>
            <asp:LinkButton ID="lnkPage" runat="server" Text='<%#Eval("Text") %>' CommandArgument='<%# Eval("Value") %>'
                CssClass='<%# Convert.ToBoolean(Eval("Enabled")) ? "page_enabled" : "page_disabled" %>'
                OnClick="Page_Changed" OnClientClick='<%# !Convert.ToBoolean(Eval("Enabled")) ? "return false;" : "" %>'></asp:LinkButton>
        </ItemTemplate>
    </asp:Repeater>
		<div id="fh5co-services-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>Поради</h3>
						<p>Скористайтесь нашими порадами і Ваша подорож буде неймовірною...</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row text-center">
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-home2"></i></span>
							<h3>Проживання</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class=" icon-bike"></i></span>
							<h3>Транспорт</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-tools"></i></span>
							<h3>Тварини</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-video"></i></span>
							<h3>Діти</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-search"></i></span>
							<h3>SEO Ranking</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-cloud"></i></span>
							<h3>Cloud Based Apps</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- END What we do -->
</asp:Content>

