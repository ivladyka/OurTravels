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
                <div class="row row-bottom-padded-lg">
					<div class="col-md-3 animate-box">
						<div class="fh5co-icon"><i class="icon-plan1"></i></div>
					</div>
					<div class="col-md-8 col-md-push-1 animate-box">
						<h2>З чого почати планування подорожі</h2>
						<p>В цій статті ми роскажемо як плануємо наші мандрівки, а також: </p>
						<ul>
                            <li>коли починати планування поїздки</li>
                            <li>як вибрати оптимальний маршрут і дату</li>
							<li>як зекономити під час мандрівки</li>
							<li>на що звернути увагу при плануванні подорожі...</li>
						</ul>
                         <asp:HyperLink id="hlMenuPlanning" runat="server" CssClass="btn btn-primary" NavigateUrl="~/page/7/planning/">  Читати далі  </asp:HyperLink>
					</div>
				</div>
				<div class="row row-bottom-padded-lg" >
					 <div class="col-md-3 col-md-push-8 animate-box">
						<div class="fh5co-icon"><i class="icon-accommodations1"></i></div>
					</div>
                    <div class="col-md-7 col-md-pull-3 animate-box">
						<h2>Як забронювати найкраще проживання</h2>
						<p>
                            В цій статті Ви знайдете корисні посилання для пошуку і бронювання проживання, а також ми хочемо поділитися з Вами своїм досвідом:
						</p>
                            <ul>
                                <li>як знайти комфортне і недороге проживання</li>
                                <li>на що звернути увагу при його пошуку</li>
                                <li>де краще поселитися</li>
                                <li>коли бронювати проживання, щоб отримати найкращу ціну...</li>
                            </ul>		
                        <asp:HyperLink id="hlMenuAccommodation" runat="server" CssClass="btn btn-primary" NavigateUrl="~/page/3/accommodation/">  Читати далі  </asp:HyperLink>
					</div>
                   
				</div>
				<div class="row row-bottom-padded-lg">
					<div class="col-md-3 animate-box">
						<div class="fh5co-icon"><i class="icon-travels1"></i></div>
					</div>
					<div class="col-md-8 col-md-push-1 animate-box">
						<h2>Як спланувати проїзд</h2>
						<p>
                            В цій статті Ви знайдете корисні посилання для пошуку і бронювання проїзду, а також:
						</p>
                            <ul>
                                <li>яким видом транспорту скористатися під час подорожі</li>
                                <li>як краще спланувати всю дорогу від дому і до заброньованого готелю чи апартаментів</li>
                                <li>як зекономити на проїзді</li>
                                <li>на що звернути увагу при плануванні проїзду...</li>
                            </ul>		
                        <asp:HyperLink id="hlMenuTransport" runat="server" CssClass="btn btn-primary" NavigateUrl="~/page/4/transport/">  Читати далі  </asp:HyperLink>
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
                           Діти завжди додають в подорожах хвилювань:
						</p>
                            <ul>
                                <li>як спланувати переїзд, щоб він не був важкий для дітей</li>
                                <li>як забезпечити дітям безпечне харчування</li>
                                <li>яка подорож буде цікавою для дітей</li>
                                <li>що взяти в валізу коли Ви їдете з дітьми</li>
                            </ul>		
                        <asp:HyperLink id="hlMenuChildren" runat="server" CssClass="btn btn-primary" NavigateUrl="~/page/6/children/">  Читати далі  </asp:HyperLink>
					</div>
				</div>
				<div class="row row-bottom-padded-lg">
					<div class="col-md-3 animate-box">
						<div class="fh5co-icon"><i class="icon-animals1"></i></div>
					</div>
					<div class="col-md-8 col-md-push-1 animate-box">
						<h2>Що слід знати вирушаючи закордон з тваринами</h2>
						<p>
                            В цій статті ми розкажемо про те, що подрідно знати вирушаючи з тваринами закордон: 
						</p>
                            <ul>
                                <li>які документи вам будуть потрібні</li>
                                <li>як завчасно потрібно розпочати виготовлення документів</li>
                                <li>які вимоги будуть до Вашої тварини при перетині кордону</li>
                            </ul>		
                        <asp:HyperLink id="hlMenuAnimals" runat="server" CssClass="btn btn-primary" NavigateUrl="~/page/5/animals/">  Читати далі  </asp:HyperLink>
					</div>
				</div>				
				<div class="row">
					<div class="col-md-3 col-md-push-8 animate-box">
						<div class="fh5co-icon"><i class="icon-baggage1"></i></div>
					</div>
					<div class="col-md-7 col-md-pull-3 animate-box">
						<!-- <h4 class="fh5co-number">06.</h4> -->
						<h2>Збираємо валізу</h2>
						<p>Ми поділимося досвідом як зібрати валізу:</p>
						<ul>
							<li>Який одяг брати з собою</li>
							<li>Що краще залишити дома</li>
							<li>Що можна і неможна брати в ручну поклажу літака</li>
							
						</ul>
                         <asp:HyperLink id="hlMenuSuitcase" runat="server" CssClass="btn btn-primary" NavigateUrl="~/page/8/suitcase/">  Читати далі  </asp:HyperLink>
					</div>
				</div>
			</div>
		</div>	
</asp:Content>
