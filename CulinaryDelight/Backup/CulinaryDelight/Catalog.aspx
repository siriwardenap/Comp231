<%@ Page Title="CulinaryDelight: Catalog" Language="C#" MasterPageFile="~/CulinaryDelight.Master" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="CulinaryDelight.Catalog" %>
<%@ Register src="UserControls/ProductsList.ascx" tagname="ProductsList" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>
<asp:Label ID="catalogTitleLabel" CssClass="CatalogTitle"
runat="server" />
</h1>
<h2>
<asp:Label ID="catalogDescriptionLabel" CssClass="CatalogDescription"
runat="server" />
</h2>
[Place List of Products Here]
    <uc1:ProductsList ID="ProductsList1" runat="server" />
</asp:Content>
