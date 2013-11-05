<%@ Page Title="" Language="C#" MasterPageFile="~/CulinaryDelight.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="CulinaryDelight.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="titleLabel" runat="server"  CssClass="CatalogTitle"></asp:Label>
    <asp:Label ID="descriptionLabel" runat="server"  CssClass="CatalogDescription"></asp:Label>
    <a href="~/UserControls/ProductsList.ascx">~/UserControls/ProductsList.ascx</a>
</asp:Content>
