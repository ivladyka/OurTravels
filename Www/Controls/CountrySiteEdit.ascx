<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CountrySiteEdit.ascx.cs" Inherits="CountrySiteEdit" %>
<%@ Register TagPrefix="uc1" TagName="SiteChoice" Src="ChoiceControls/SiteChoice.ascx" %>
<TABLE id="Table3" class="EditControl3" cellpadding="2" cellspacing="7"  align="left" border="0" width="950px">	
    <tr>
	    <td align="right">Корисне Посилання:
		</td>
		<td>
            <uc1:SiteChoice id="choice_SiteID" runat="server" UseValueInsteadText="true" Width="300"></uc1:SiteChoice>
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