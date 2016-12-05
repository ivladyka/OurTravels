<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BlogPageEdit.ascx.cs" Inherits="BlogPageEdit" %>
<%@ Register TagPrefix="uc1" TagName="EditorHTML" Src="ValueControls/EditorHTML.ascx" %>
<%@ Register TagPrefix="uc1" TagName="DatePicker" Src="ValueControls/DatePicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BlogPageCityList" Src="BlogPageCityList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PhotoUpload" Src="ValueControls/PhotoUpload.ascx" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<telerik:RadTabStrip ID="rtsBlogPage" runat="server" AutoPostBack="true" Align="Left" Width="747px" OnTabClick="rtsBlogPage_TabClick">
    <Tabs>
        <telerik:RadTab Text="Подорож/Сторінка" Selected="True">
        </telerik:RadTab>
        <telerik:RadTab Text="Міста">
        </telerik:RadTab>
    </Tabs>
</telerik:RadTabStrip>
<asp:Panel ID="pnlBlogPageEdit" runat="server" >
  <table id="Table3" align="left" border="0" cellpadding="2" cellspacing="5" >
            <tr>
                <td align="right">
                    Назва:
                </td>
                <td>
                    <asp:TextBox ID="text_Name" runat="server" CssClass="textBoxStyle" 
                        MaxLength="255" Width="300px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                        ControlToValidate="text_Name" Display="Dynamic" 
                        ErrorMessage="Обов'язкове поле."></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td align="right">
                    Назва для Дружнього URL:
                </td>
                <td>
                    <asp:TextBox ID="text_Name_en" runat="server" CssClass="textBoxStyle" 
                        MaxLength="255" Width="300px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rfvName_en" runat="server" 
                        ControlToValidate="text_Name_en" Display="Dynamic" 
                        ErrorMessage="Обов'язкове поле."></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td align="right">
                    Заголовок для блогу:
                </td>
                <td>
                    <asp:TextBox ID="text_BlogDescription" runat="server" CssClass="textBoxStyle" MaxLength="250" Width="300px"></asp:TextBox>
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
		        <td align="right">Зображення для заголовку:
		        </td>
		        <td>
                    <uc1:PhotoUpload id="upload_TitleImage" runat="server" AllowedFileExtensions="jpg,gif,png" CreateThumbnail="true"></uc1:PhotoUpload>
		        </td>
	        </tr>
            <tr>
                <td align="right" valign="top">
                    Опис:
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <uc1:EditorHTML ID="editor_PageContent" runat="server" />
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
		        <td align="right">Початок подорожі:
        		</td>
		        <td >
	                <uc1:DatePicker id="date_StartTravelDate" runat="server" IsRequire="true"></uc1:DatePicker>
                </td>
            </tr>
            <tr>			
		        <td align="right">Закінчення подорожі:
        		</td>
		        <td >
	                <uc1:DatePicker id="date_EndTravelDate" runat="server" IsRequire="true"></uc1:DatePicker>
                </td>
            </tr>  
            <tr>			
		        <td align="right">Дата публікації:
        		</td>
		        <td >
	                <uc1:DatePicker id="date_DatePublish" runat="server" IsRequire="true"></uc1:DatePicker>
                </td>
            </tr>  
            <tr>
		        <td align="right">Сторінка Блогу:
		        </td>
		        <td>
                    <asp:CheckBox id="chk_IsBlogPage" runat="server" Text="" Checked="true"></asp:CheckBox>
		        </td>
            </tr>
            <tr>
               <td align="right" colspan="2">
                        &nbsp;                    
                           <asp:Button ID="btnCancel" runat="server" CommandArgument="False" ForeColor="Black" BorderStyle="None" Font-Size="10pt"  Height="30px" BackColor="#ffc33f"
                            commandname="Cancel" CssClass="formbutton1" Text="Відмінити" />     
                   <asp:Button ID="btnUpdate" runat="server" CommandArgument="Update" ForeColor="Black" BorderStyle="None" Font-Size="10pt"  Height="30px" BackColor="#ffc33f"
                            commandname="Update" CssClass="formbutton1" Text="Зберегти"/>
                </td>
             </tr>
            
    </table>
</asp:Panel>
<asp:Panel ID="pnlCityList" runat="server" Visible="false">
    <uc1:BlogPageCityList id="blogPageCityList" runat="server"></uc1:BlogPageCityList>
</asp:Panel>