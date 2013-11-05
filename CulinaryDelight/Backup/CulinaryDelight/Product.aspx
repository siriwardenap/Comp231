<%@ Page Title="" Language="C#" MasterPageFile="~/CulinaryDelight.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="CulinaryDelight.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p>
<asp:Label CssClass="CatalogTitle" ID="titleLabel" runat="server"
Text="Label"></asp:Label>
</p>
<p>
<asp:Image ID="productImage" runat="server" />
</p>
<p>
<asp:Label ID="descriptionLabel" runat="server" Text="Label"></asp:Label>
</p>
<p>
<b>Price:</b>
<asp:Label CssClass="ProductPrice" ID="priceLabel" runat="server"
Text="Label"></asp:Label>
</p>
<p>
<b>Price:</b>
<asp:Label CssClass="ProductPrice" ID="Label1" runat="server"
Text="Label"></asp:Label>
</p>
<p>
<asp:PlaceHolder ID="attrPlaceHolder" runat="server"></asp:PlaceHolder>
</p>
<p>
<asp:LinkButton ID="AddToCartButton" runat="server"
onclick="AddToCartButton Click">Add to Shopping Cart</asp:LinkButton>
</p>
</asp:Content>
