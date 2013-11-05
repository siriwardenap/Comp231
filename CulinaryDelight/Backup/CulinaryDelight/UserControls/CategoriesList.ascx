<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoriesList.ascx.cs" Inherits="CulinaryDelight.UserControls.CategoriesList" %>
<asp:DataList ID="list" runat="server" CssClass="CategpriesList" Width="200px">
    <HeaderStyle CssClass="CategoriesListHead" />
    <HeaderTemplate>
        Choose a Category
    </HeaderTemplate>
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Link.ToCategory(Request.QueryString["DepartmentID"],
Eval("CategoryID").ToString()) %>'
Text='<%# HttpUtility.HtmlEncode(Eval("Name").ToString()) %>'
ToolTip='<%# HttpUtility.HtmlEncode(Eval("Description").ToString()) %>'
CssClass='<%# Eval("CategoryID").ToString() ==
Request.QueryString["CategoryID"] ?
"CategorySelected" : "CategoryUnselected" %>'>>
</asp:HyperLink>
    </ItemTemplate>
</asp:DataList>

