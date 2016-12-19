<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/DefaultMP.master"  CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">    
    <script src='https://www.google.com/recaptcha/api.js'></script>
		<div class="fh5co-hero fh5co-hero-2">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover fh5co-cover_2 text-center" data-stellar-background-ratio="0.5" style="background-image: url(Theme/images/contactus.jpg);">
				<div class="desc animate-box">
					<h2><strong>Контакти</strong></h2>				
				</div>
			</div>
		</div>
    	<div id="fh5co-contact" class="animate-box">
			<div class="container">
				<form id="form1" runat="server">
					<div id="divContact" runat="server" class="row">
						<div class="col-md-7">
                                <h3 class="section-title">Заповніть форму і ми обовязково зв'яжемося з Вами</h3>	
								<div class="col-md-6">
									<div class="form-group">
                                        <asp:TextBox ID="tbName" runat="server" CssClass="form-control" MaxLength="100" placeholder="Ім'я" /> 
                                        <asp:requiredfieldvalidator id="rfvName" runat="server" controltovalidate="tbName"
                                            display="Dynamic" enableclientscript="True" errormessage="Обов'язкове поле."></asp:requiredfieldvalidator>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
                                        <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" MaxLength="50" placeholder="Email" />
										<asp:requiredfieldvalidator id="rfvEmail" runat="server" controltovalidate="tbEmail"
                                            display="Dynamic" enableclientscript="True" errormessage="Обов'язкове поле."></asp:requiredfieldvalidator>
                                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="tbEmail"
                                            Display="Dynamic" EnableClientScript="True" ErrorMessage="Невірна адреса електронної пошти."
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
                                        <asp:TextBox ID="tbMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="7" placeholder="Повідомлення" />
                                        <asp:requiredfieldvalidator id="rfvMessage" runat="server" controltovalidate="tbMessage"
                                            display="Dynamic" enableclientscript="True" errormessage="Обов'язкове поле.<br>" ></asp:requiredfieldvalidator>
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
                                        <asp:Button ID="btnLeaveResponse" runat="server" CssClass="btn btn-primary" Text="Відправити повідомлення" onclick="btnLeaveResponse_Click"/>
									</div>
								</div>
							</div>
					</div>
                    <div id="divSuccessMessage" runat="server" class="row" visible="false">
                        <div class="col-md-12" style="text-align:center; margin-top:100px"> 
                          <div class="fh5co-icon">
                            <i class="icon-envelope"></i>Повідомлення відправлено.
                           </div>
						</div>
                    </div>
				</form>
			</div>
		</div>
    </asp:Content>