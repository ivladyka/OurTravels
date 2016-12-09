<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/DefaultMP.master"  CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphWithoutScroll" Runat="Server">    
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
				<form action="#">
					<div class="row">

						<div class="col-md-6">
                                    <h3 class="section-title">Заповніть форму і ми обовязково звяжемося з Вами</h3>	
								<div class="col-md-6">
                                  
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Ім'я">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Email">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<textarea name="" class="form-control" id="" cols="30" rows="7" placeholder="Повідомлення"></textarea>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<input type="submit" value="ВІдправити повідомлення" class="btn btn-primary">
									</div>
								</div>
							</div>
                       <div class="col-md-6" style="text-align:center; margin-top:100px"> 
                         <!-- <div class="fh5co-icon">
                            <i class="icon-envelope" ></i>
                           </div>-->
						</div>
					</div>
				</form>
			</div>
		</div>
    </asp:Content>