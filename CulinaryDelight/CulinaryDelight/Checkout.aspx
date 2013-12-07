<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="CulinaryDelight.Checkout" %>

<%@ Register Src="~/UserControls/CustomerDetailsEdit.ascx" TagPrefix="uc1" TagName="CustomerDetailsEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Confirm Your Order</h1>
    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" Width="100%" EmptyDataText="There is nothing in your shopping cart." GridLines="None">
        <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" /> 
        <AlternatingRowStyle BackColor="#F8F8F8" />
        <Columns>
        <asp:BoundField DataField="Description" HeaderText="Product Name" ReadOnly="True" SortExpression="Name"></asp:BoundField>
        <asp:BoundField DataField="UnitPrice" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True"></asp:BoundField>
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" ReadOnly="True" SortExpression="Quantity"></asp:BoundField>
        <asp:BoundField DataField="TotalPrice" DataFormatString="{0:c}" HeaderText="Subtotal" ReadOnly="True" SortExpression="Subtotal"></asp:BoundField>
    </Columns>
    </asp:GridView>
    <h3><asp:Label ID="Label2" runat="server" Text="Total amount: " CssClass="ProductDescription" />    
    <asp:Label ID="totalAmountLabel" runat="server" Text="Label" CssClass="ProductPrice" /></h3>
    <br /><br />
    <uc1:customerdetailsedit runat="server" id="CustomerDetailsEdit" Editable="False" Title="User Details" />
    <br />
    <asp:Label ID="InfoLabel" runat="server" />
    <br /><br />
    <asp:Button ID="placeOrderButton" runat="server" 
    Text="Place order" OnClick="placeOrderButton_Click" />
</asp:Content>
