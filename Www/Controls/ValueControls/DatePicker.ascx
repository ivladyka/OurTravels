﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DatePicker.ascx.cs" Inherits="Control_DatePicker" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
 <telerik:RadDatePicker id="dateInput" Runat="server" MaxDate="3000-01-01" MinDate="1900-01-01" Skin="Office2007" EnableTyping="False" BorderStyle="Outset" CssClass="datapickerstyle">
                    <DateInput  Skin="Office2007" ReadOnly="True" ForeColor="black" CssClass="datapickerstyle"></DateInput>
                    <Calendar FocusedDate="1000-01-01" Skin="Office2007"></Calendar>
                    <DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
                    </telerik:RadDatePicker>
         <asp:RequiredFieldValidator ID="rfvDateInput" runat="server" ErrorMessage="<%$Resources:Vikkisoft, RequiredField %>" ControlToValidate="dateInput" Display="Dynamic" Enabled="false" CssClass="Validatorstyle">
         </asp:RequiredFieldValidator>
