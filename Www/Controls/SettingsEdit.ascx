<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SettingsEdit.ascx.cs" Inherits="SettingsEdit" %>
<%@ Register TagPrefix="uc1" TagName="EditorHTML" Src="ValueControls/EditorHTML.ascx" %>
<TABLE id="Table3" class="EditControl3" cellpadding="2" cellspacing="7"  align="left" border="0" width="950px">	
    <tr>
        <td align="right">
            Заголовок:
        </td>
        <td>
            <asp:TextBox ID="text_Title" runat="server" CssClass="textBoxStyle" MaxLength="100" Width="675px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
            Ключові слова:
        </td>
        <td>
            <asp:TextBox ID="text_Keywords" runat="server" CssClass="textBoxStyle" MaxLength="250" Width="675px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
            Description meta tag:
        </td>
        <td>
            <asp:TextBox ID="text_Description" runat="server" CssClass="textBoxStyle" MaxLength="200" Width="675px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
            Заголовок суфікс:
        </td>
        <td>
            <asp:TextBox ID="text_TitleSuffix" runat="server" CssClass="textBoxStyle" MaxLength="100" Width="675px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" valign="top">
            Реклама 1:
        </td>
        <td>
            <uc1:EditorHTML ID="editor_Advert1" runat="server" EditorHeight="200" />
        </td>
    </tr>
    <tr>
        <td align="right" valign="top">
            Реклама 2:
        </td>
        <td>
            <uc1:EditorHTML ID="editor_Advert2" runat="server" EditorHeight="200" />
        </td>
    </tr>
    <tr>
        <td align="right" valign="top">
            Реклама 3:
        </td>
        <td>
            <uc1:EditorHTML ID="editor_Advert3" runat="server" EditorHeight="200" />
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