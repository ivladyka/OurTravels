<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="Blogs.aspx.cs" Inherits="Blogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">
<div id="fh5co-advice">
			<div class="container">            
				    <div class="row">
					    <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						    <h1>Деякі поради</h1>
						    <p>Ви плануєте подорож і у Вас виникли деякі труднощі?  <br />Маємо надію, що наші поради стануть Вам у пригоді...</p>
					    </div>
				    </div>			    
				<div class="row row-bottom-padded-lg" >
					<div class="col-md-3 animate-box">
						<div class="fh5co-icon"><i class="icon-accommodations1"></i></div>
					</div>
					<div class="col-md-8 col-md-push-1 animate-box">
<!-- 						<h4 class="fh5co-number">01.</h4> -->
						<h2>Як забронювати найкраще проживання</h2>
						<p>
                            Тут зможете знайти корисні посилання для пошуку прощивання, а також хочемо поділитися з Вами своїм досвідом:
						</p>
                            <ul>
                                <li> як знайти комфортне і не дороге продивання</li>
                                <li>на що звертатти увагу при його пошуку</li>
                                <li>наскільки завчасно є оптимально починати пошук...</li>
                            </ul>		
                        <asp:HyperLink id="hlMenuAccommodation" runat="server" CssClass="btn btn-primary" NavigateUrl="~/page/3/accommodation/">  Читати далі  </asp:HyperLink>
					</div>
				</div>
				<div class="row row-bottom-padded-lg">
					<div class="col-md-3 col-md-push-8 animate-box">
						<div class="fh5co-icon"><i class="icon-travels1"></i></div>
					</div>
					<div class="col-md-7 col-md-pull-3 animate-box">
<!-- 						<h4 class="fh5co-number">01.</h4> -->
						<h2>Як спланувати проїзд</h2>
						<p>
                            Тут хочемо поділитися з Вами своїм досвідом щодо транспорту:
						</p>
                            <ul>
                                <li>який транспорт вибрати</li>
                                <li>як краще спланувати всю дорогу від дому і до заброньованого готелю чи апартаментів...</li>
                                <li>наскільки завчасно є оптимально починати пошук...</li>
                            </ul>		
                        <asp:HyperLink id="hlMenuTransport" runat="server" CssClass="btn btn-primary" NavigateUrl="~/page/4/transport/">  Читати далі  </asp:HyperLink>
					</div>
				</div>
				<div class="row row-bottom-padded-lg">
					<div class="col-md-3 animate-box">
						<div class="fh5co-icon"><i class="icon-animals1"></i></div>
					</div>
					<div class="col-md-8 col-md-push-1 animate-box">
						<h2>Що слід знати вирушаючи закордон з тваринами</h2>
						<p>
                            Тут хочемо поділитися з Вами своїм досвідом щодо транспорту:
						</p>
                            <ul>
                                <li>який транспорт вибрати</li>
                                <li>як краще спланувати всю дорогу від дому і до заброньованого готелю чи апартаментів...</li>
                                <li>наскільки завчасно є оптимально починати пошук...</li>
                            </ul>		
                        <asp:HyperLink id="hlMenuAnimals" runat="server" CssClass="btn btn-primary" NavigateUrl="~/page/5/animals/">  Читати далі  </asp:HyperLink>
					</div>
					</div>				
					<div class="row row-bottom-padded-lg">
					<div class="col-md-3 col-md-push-8 animate-box">
						<div class="fh5co-icon"><i class="icon-baby1"></i></div>
					</div>
					<div class="col-md-7 col-md-pull-3 animate-box">
<!-- 						<h4 class="fh5co-number">01.</h4> -->
						<h2>Як зробити подорож цікавою і безпечною для дітей</h2>
						<p>
                            Тут хочемо поділитися з Вами своїм досвідом щодо транспорту:
						</p>
                            <ul>
                                <li>який транспорт вибрати</li>
                                <li>як краще спланувати всю дорогу від дому і до заброньованого готелю чи апартаментів...</li>
                                <li>наскільки завчасно є оптимально починати пошук...</li>
                            </ul>		
                        <asp:HyperLink id="hlMenuChildren" runat="server" CssClass="btn btn-primary" NavigateUrl="~/page/6/children/">  Читати далі  </asp:HyperLink>
					</div>
				</div>
				<div class="row row-bottom-padded-lg">
					<div class="col-md-3 animate-box">
						<div class="fh5co-icon"><i class="icon-plan1"></i></div>
					</div>
					<div class="col-md-8 col-md-push-1 animate-box">
						<!-- <h4 class="fh5co-number">05.</h4> -->
						<h2>З чого почати планування подорожі</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam quae modi earum eligendi eaque quis laudantium aperiam sunt atque recusandae, fugiat veritatis repellendus incidunt nostrum voluptatibus. Eveniet ex magnam repellat sunt molestiae, quibusdam culpa dignissimos recusandae voluptatum necessitatibus provident commodi?</p>
						<ul>
							<li>Web Design</li>
							<li>Search Engine Optimzation</li>
							<li>HTML5 &amp; CSS3</li>
							<li>jQuery Library</li>
						</ul>
                         <asp:HyperLink id="hlMenuPlanning" runat="server" CssClass="btn btn-primary" NavigateUrl="~/page/7/planning/">  Читати далі  </asp:HyperLink>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 col-md-push-8 animate-box">
						<div class="fh5co-icon"><i class="icon-baggage1"></i></div>
					</div>
					<div class="col-md-7 col-md-pull-3 animate-box">
						<!-- <h4 class="fh5co-number">06.</h4> -->
						<h2>Збираємо валізу</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam quae modi earum eligendi eaque quis laudantium aperiam sunt atque recusandae, fugiat veritatis repellendus incidunt nostrum voluptatibus. Eveniet ex magnam repellat sunt molestiae, quibusdam culpa dignissimos recusandae voluptatum necessitatibus provident commodi?</p>
						<ul>
							<li>Web Design</li>
							<li>Search Engine Optimzation</li>
							<li>HTML5 &amp; CSS3</li>
							<li>jQuery Library</li>
						</ul>
                         <asp:HyperLink id="hlMenuSuitcase" runat="server" CssClass="btn btn-primary" NavigateUrl="~/page/8/suitcase/">  Читати далі  </asp:HyperLink>
					</div>
				</div>


			</div>
		</div>	
</asp:Content>
