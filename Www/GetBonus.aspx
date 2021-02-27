<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMP.master" AutoEventWireup="true" CodeFile="GetBonus.aspx.cs" Inherits="GetBonus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BlogContentPlaceHolder3" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <div class="fh5co-hero fh5co-hero-2">
	    <div class="fh5co-overlay"></div>
		<div class="fh5co-cover fh5co-cover_2 text-center" data-stellar-background-ratio="0.5" style="background-image: url(Theme/images/get_bonus.jpg);">
			<div class="desc animate-box">
				<h2><strong>Отримайте €20 бонусів на бронювання через Kiwi.com</strong></h2>				
			</div>
		</div>
	</div>
    <div id="fh5co-contact" class="animate-box">
        <div class="container">
			<form id="form12" runat="server">
                <div id="divGetForm" runat="server" class="row">
					<div class="col-md-7">
                        <h3 class="section-title">Заповніть форму і ми обов'язково вишлемо Вам бонус. Працює для бронювань від €200.</h3>
                        <div class="col-md-12">
						    <div class="form-group">
                                <h1>Ваш Email</h1>
                                <asp:TextBox ID="tbEmailAddress" runat="server" CssClass="form-control" MaxLength="50" />
                                <asp:requiredfieldvalidator id="rfvEmail" runat="server" controltovalidate="tbEmailAddress"
                                    display="Dynamic" enableclientscript="True" errormessage="Обов'язкове поле.<br>" ></asp:requiredfieldvalidator>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="tbEmailAddress"
                                    Display="Dynamic" EnableClientScript="True" ErrorMessage="Невірна адреса електронної пошти."
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
						    </div>
						</div>
                        <div class="col-md-12">
						    <div class="form-group">
							    <div class="g-recaptcha" data-sitekey="<%=ReCaptchaSiteKey %>"></div>
                                <asp:Label ID="lblCapchaError" runat="server" Text="Некоректна Captcha.<br>" ForeColor="Red" Visible="false"></asp:Label>
							</div>
					    </div>
                        <div class="col-md-12">
							<div class="form-group">
                                <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                                <asp:Button ID="btnGetBonus" runat="server" CssClass="btn btn-primary" Text="Отримати бонус" onclick="btnGetBonus_Click"/>
							</div>
						</div>
                        <div class="col-md-12">
						    <div class="form-group">
                                <span>Ми зобов'язуємося використовувати вказану Email адресу тільки для пересилки бонусу.</span>
						    </div>
						</div>
                    </div>
                </div>
                <div id="divSuccessMessage" runat="server" class="row" visible="false">
                    <div class="col-md-12" style="text-align:center; margin-top:100px"> 
                        <div class="fh5co-icon">
                            <i class="icon-envelope"></i>Дякуємо! Очікуйте бонус на вказаний E-mail!
                        </div>
				    </div>
                </div>
            </form>
        </div>
    </div>
</asp:Content>

