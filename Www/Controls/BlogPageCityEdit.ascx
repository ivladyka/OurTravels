<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BlogPageCityEdit.ascx.cs" Inherits="BlogPageCityEdit" %>
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
    <tr>
	    <td align="right">Місто:
		</td>
		<td>
            <uc1:CityChoice id="choice_CityID" runat="server" UseValueInsteadText="true" Width="300"></uc1:CityChoice>
		</td>
    </tr>
    <tr>
		<td align="right">Показати Посилання:
		</td>
		<td>
           <asp:CheckBox id="chk_ShowSites" runat="server" Text=""></asp:CheckBox>
		</td>
    </tr>
  	<tr>
	    <td colspan="2" align="right">
	      <asp:Button ID="btnCancel" runat="server" CommandArgument="False" ForeColor="Black" BorderStyle="None" Font-Size="10pt"  Height="30px" BackColor="#ffc33f"
                            commandname="Cancel" CssClass="formbutton1" Text="Відмінити" />     
                   <asp:Button ID="btnUpdate" runat="server" CommandArgument="Update" ForeColor="Black" BorderStyle="None" Font-Size="10pt"  Height="30px" BackColor="#ffc33f"
                            commandname="Update" CssClass="formbutton1" Text="Зберегти"/>
			 </td>
	</tr>
</TABLE>