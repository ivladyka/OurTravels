<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EmailEdit.ascx.cs" Inherits="EmailEdit" %>
<%@ Register TagPrefix="uc1" TagName="DatePicker" Src="ValueControls/DatePicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="EmailTypeChoice" Src="ChoiceControls/EmailTypeChoice.ascx" %>
<TABLE id="Table3" class="EditControl3" cellpadding="2" cellspacing="7"  align="left" border="0" width="550px">	
    <tr>
        <td align="right">
            E-mail:
        </td>
        <td>
            <asp:TextBox ID="text_EmailAddress" runat="server" CssClass="textBoxStyle" MaxLength="255" Width="300px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="rfvEmailAddress" runat="server" ControlToValidate="text_EmailAddress" Display="Dynamic" 
                ErrorMessage="Обов'язкове поле."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>			
	    <td align="right">Дата:
        </td>
		<td>
	        <uc1:DatePicker id="date_AddedDate" runat="server" IsRequire="true"></uc1:DatePicker>
        </td>
    </tr>
    <tr>
	    <td align="right">Тип:
		</td>
		<td>
            <uc1:EmailTypeChoice id="choice_EmailTypeID" runat="server" UseValueInsteadText="true" Width="300"></uc1:EmailTypeChoice>
		</td>
    </tr>
    <tr>
	    <td align="right">Відписав:
		</td>
		<td>
            <asp:CheckBox id="chk_Sent" runat="server" Text="" Checked="false"></asp:CheckBox>
		</td>
    </tr>
    <tr>
	    <td colspan="2" align="right">
	      <asp:Button ID="btnCancel" runat="server" CommandArgument="False" ForeColor="Black" BorderStyle="None" Font-Size="10pt"  Height="30px" BackColor="#ffc33f"
                            commandname="Cancel" CssClass="formbutton1" Text="Відмінити" causesvalidation="False" />     
                   <asp:Button ID="btnUpdate" runat="server" CommandArgument="Update" ForeColor="Black" BorderStyle="None" Font-Size="10pt"  Height="30px" BackColor="#ffc33f"
                            commandname="Update" CssClass="formbutton1" Text="Зберегти"/>
			 </td>
	</tr>
</TABLE>