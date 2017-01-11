<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CityEdit.ascx.cs" Inherits="CityEdit" %>
<%@ Register TagPrefix="uc1" TagName="EditorHTML" Src="ValueControls/EditorHTML.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CountryChoice" Src="ChoiceControls/CountryChoice.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PhotoUpload" Src="ValueControls/PhotoUpload.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CitySiteList" Src="CitySiteList.ascx" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<telerik:RadTabStrip ID="rtsCity" runat="server" AutoPostBack="true" Align="Left" Width="747px" OnTabClick="rtsCity_TabClick">
    <Tabs>
        <telerik:RadTab Text="Місто" Selected="True">
        </telerik:RadTab>
        <telerik:RadTab Text="Корисні посилання">
        </telerik:RadTab>
    </Tabs>
</telerik:RadTabStrip>
<asp:Panel ID="pnlCityEdit" runat="server">
<TABLE id="Table3" class="EditControl3" cellpadding="2" cellspacing="7"  align="left" border="0" width="950px">	
    <tr>
        <td align="right">
            Назва:
        </td>
        <td>
            <asp:TextBox ID="text_Name" runat="server" CssClass="textBoxStyle" MaxLength="50" Width="300px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="rfvName_uk" runat="server" ControlToValidate="text_Name" Display="Dynamic" 
                ErrorMessage="Обов'язкове поле."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right">
            Назва для Дружнього URL:
        </td>
        <td>
            <asp:TextBox ID="text_Name_en" runat="server" CssClass="textBoxStyle" MaxLength="50" Width="300px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="rfvName_en" runat="server" ControlToValidate="text_Name_en" Display="Dynamic" 
                ErrorMessage="Обов'язкове поле."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
		<td align="right">Активний:
		</td>
		<td>
           <asp:CheckBox id="chk_Active" runat="server" Text="" Checked="true"></asp:CheckBox>
		</td>
    </tr>
    <tr>
	    <td align="right">Країна:
		</td>
		<td>
            <uc1:CountryChoice id="choice_CountryID" runat="server" UseValueInsteadText="true" Width="300" AddEmptyItem="false"></uc1:CountryChoice>
		</td>
    </tr>
    <asp:Panel ID="pnlTitleImage" runat="server">
    <tr>
	    <td align="right">Зображення для заголовку:
		</td>
		<td>
            <uc1:PhotoUpload id="upload_TitleImage" runat="server" AllowedFileExtensions="jpg,gif,png" CreateThumbnail="true" ImageWidth="750" ImageHeight="560"></uc1:PhotoUpload>
		</td>
    </tr>
    </asp:Panel>
    <asp:Panel ID="pnlMainImage" runat="server">
    <tr>
	    <td align="right">Головне зображення:
		</td>
		<td>
            <uc1:PhotoUpload id="upload_MainImage" runat="server" AllowedFileExtensions="jpg,gif,png" CreateThumbnail="true"></uc1:PhotoUpload>
        </td>
	</tr>
    </asp:Panel>
    <asp:Panel ID="pnlContent" runat="server">
    <tr>
        <td align="right" valign="top">
            Опис:
        </td>
        <td>
            <uc1:EditorHTML ID="editor_Content" runat="server" />
        </td>
    </tr>
    </asp:Panel>
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
	    <td colspan="2" align="right">
	      <asp:Button ID="btnCancel" runat="server" CommandArgument="False" ForeColor="Black" BorderStyle="None" Font-Size="10pt"  Height="30px" BackColor="#ffc33f"
                            commandname="Cancel" CssClass="formbutton1" Text="Відмінити" causesvalidation="False" />     
                   <asp:Button ID="btnUpdate" runat="server" CommandArgument="Update" ForeColor="Black" BorderStyle="None" Font-Size="10pt"  Height="30px" BackColor="#ffc33f"
                            commandname="Update" CssClass="formbutton1" Text="Зберегти"/>
			 </td>
	</tr>
</TABLE>
</asp:Panel>
<asp:Panel ID="pnlSiteList" runat="server" Visible="false">
    <uc1:CitySiteList id="citySiteList" runat="server"></uc1:CitySiteList>
</asp:Panel>