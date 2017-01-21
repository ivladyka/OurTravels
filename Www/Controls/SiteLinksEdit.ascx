﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SiteLinksEdit.ascx.cs" Inherits="SiteLinksEdit" %>
<%@ Register TagPrefix="uc1" TagName="CityChoice" Src="ChoiceControls/CityChoice.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CountryChoice" Src="ChoiceControls/CountryChoice.ascx" %>
<TABLE id="Table3" class="EditControl3" cellpadding="2" cellspacing="7"  align="left" border="0" width="950px">	
    <tr>
		<td align="right">Країна:
		</td>
		<td>
            <uc1:CountryChoice id="ddlCountryChoice" runat="server" UseValueInsteadText="true" Width="300" AutoPostBack="true"></uc1:CountryChoice>
		</td>
    </tr>
    <tr id="rowCity" runat="server">
	    <td align="right">Місто:
		</td>
		<td>
            <uc1:CityChoice id="choice_CityID" runat="server" UseValueInsteadText="true" Width="300" AddEmptyItem="true"></uc1:CityChoice>
		</td>
    </tr>
  	<tr>
	    <td colspan="2" align="right">
	      <asp:Button ID="btnCancel" runat="server" CommandArgument="False" ForeColor="Black" BorderStyle="None" Font-Size="10pt"  Height="30px" BackColor="#ffc33f"
                            commandname="Cancel" CssClass="formbutton1" Text="Відмінити" onclick="btnCancel_Click" />     
                   <asp:Button ID="btnUpdate" runat="server" CommandArgument="Update" ForeColor="Black" BorderStyle="None" Font-Size="10pt"  Height="30px" BackColor="#ffc33f"
                             onclick="btnUpdate_Click" ssClass="formbutton1" Text="Зберегти"/>
			 </td>
	</tr>
</TABLE>