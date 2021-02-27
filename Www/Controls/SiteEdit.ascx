<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SiteEdit.ascx.cs" Inherits="SiteEdit" %>
<%@ Register TagPrefix="uc1" TagName="SiteTypeChoice" Src="ChoiceControls/SiteTypeChoice.ascx" %>
<%@ Register TagPrefix="uc1" TagName="IntInput" Src="ValueControls/IntInput.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PhotoUpload" Src="ValueControls/PhotoUpload.ascx" %>
<%@ Register TagPrefix="uc1" TagName="NumericInput" Src="ValueControls/NumericInput.ascx" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="uc1" TagName="SiteLinksList" Src="SiteLinksList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CityChoice" Src="ChoiceControls/CityChoice.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CountryChoice" Src="ChoiceControls/CountryChoice.ascx" %>
<telerik:RadTabStrip ID="rtsSite" runat="server" AutoPostBack="true" Align="Left" Width="747px" OnTabClick="rtsSite_TabClick">
    <Tabs>
        <telerik:RadTab Text="Посилання" Selected="True">
        </telerik:RadTab>
        <telerik:RadTab Text="Міста/Країни">
        </telerik:RadTab>
    </Tabs>
</telerik:RadTabStrip>
<asp:Panel ID="pnlSiteEdit" runat="server" >
<TABLE id="Table3" class="EditControl3" cellpadding="2" cellspacing="7"  align="left" border="0" width="550px">	
    <tr>
        <td align="right">
            Назва:
        </td>
        <td>
            <asp:TextBox ID="text_Name" runat="server" CssClass="textBoxStyle" MaxLength="50" Width="300px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="text_Name" Display="Dynamic" 
                ErrorMessage="Обов'язкове поле."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
	    <td align="right">Тип посилання:
		</td>
		<td>
            <uc1:SiteTypeChoice id="choice_SiteTypeID" runat="server" UseValueInsteadText="true" Width="300" AddEmptyItem="false"></uc1:SiteTypeChoice>
		</td>
    </tr>
    <tr>
        <td align="right">
            URL:
        </td>
        <td>
            <asp:TextBox ID="text_URL" runat="server" CssClass="textBoxStyle" MaxLength="500" Width="300px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="rfvURL" runat="server" ControlToValidate="text_URL" Display="Dynamic" 
                ErrorMessage="Обов'язкове поле."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr id="rowCountry" runat="server">
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
            <uc1:CityChoice id="ddlCity" runat="server" UseValueInsteadText="true" Width="300" AddEmptyItem="true"></uc1:CityChoice>
		</td>
    </tr>
    <tr>
		<td align="right">Активне:
		</td>
		<td>
           <asp:CheckBox id="chk_Active" runat="server" Text="" Checked="true"></asp:CheckBox>
		</td>
    </tr>
    <tr>
		<td align="right">Головне:
		</td>
		<td>
           <asp:CheckBox id="chk_Main" runat="server" Text="" Checked="false"></asp:CheckBox>
		</td>
    </tr>
    <tr>
        <td align="right">
            Примітки:
        </td>
        <td>
            <asp:TextBox ID="text_Notes" runat="server" CssClass="textBoxStyle" TextMode="MultiLine" Width="300px" Rows="5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
            Широта:
        </td>
        <td>
            <uc1:NumericInput id="num_Latitude" runat="server"></uc1:NumericInput>
        </td>
    </tr>
    <tr>
        <td align="right">
            Довгота:
        </td>
        <td>
            <uc1:NumericInput id="num_Longitude" runat="server"></uc1:NumericInput>
        </td>
    </tr>
    <tr>
		<td align="right">Порядок сортування:
		</td>
		<td>
           <uc1:IntInput id="int_OrderIndex" runat="server"></uc1:IntInput>
		</td>
	</tr>
    <tr>
		<td align="right">Logo:
		</td>
		<td>
           <uc1:PhotoUpload id="upload_Logo" runat="server" AllowedFileExtensions="jpg,gif,png" CreateThumbnail="false"></uc1:PhotoUpload>
		</td>
	</tr>
    <tr>
		<td align="right">Banner:
		</td>
		<td>
           <uc1:PhotoUpload id="upload_Banner" runat="server" AllowedFileExtensions="jpg,gif,png,mp4" CreateThumbnail="false"></uc1:PhotoUpload>
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
<asp:Panel ID="pnlCityList" runat="server" Visible="false">
    <uc1:SiteLinksList id="siteLinksList" runat="server"></uc1:SiteLinksList>
</asp:Panel>