<%@ Page Title="" Language="C#" MasterPageFile="~/CulinaryDelight.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CulinaryDelight.Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register src="UserControls/ProductsList.ascx" tagname="ProductsList" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>
<span class="CatalogTitle">Welcome !</span>
</h1>
<h2>
<span class="CatalogDescription">This week we have a special price
for these fantastic products: </span>
</h2>
[Place List of Products Here]
    <uc1:ProductsList ID="ProductsList1" runat="server" />
</asp:Content>
