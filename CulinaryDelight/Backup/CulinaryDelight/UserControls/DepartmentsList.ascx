<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DepartmentsList.ascx.cs" Inherits="CulinaryDelight.UserControls.DepartmentsList" %>
<asp:DataList ID="list" runat="server" CssClass="DepartmentsList" Width="200px">
    <HeaderStyle CssClass="DepartmentsListHead" />
    <HeaderTemplate>
        Choose Cuisine
    </HeaderTemplate>
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" 
        runat="server"
        NavigateUrl='<%# Link.ToDepartment(Eval("DepartmentID").ToString())%>'
Text='<%# HttpUtility.HtmlEncode(Eval("Name").ToString()) %>'
ToolTip='<%# HttpUtility.HtmlEncode(Eval("Description").ToString()) %>'
CssClass='<%# Eval("DepartmentID").ToString() ==
Request.QueryString["DepartmentID"] ? "DepartmentSelected" :
"DepartmentUnselected" %>'>
        </asp:HyperLink>
    </ItemTemplate>
</asp:DataList>

