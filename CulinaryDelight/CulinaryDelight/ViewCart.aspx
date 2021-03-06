﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="CulinaryDelight.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">  
            <h1>Shopping Cart</h1>  
            <a href="Gujarati.aspx">< Back to Products</a>  
  
            <br /><br />  
            <asp:GridView runat="server" ID="gvShoppingCart" AutoGenerateColumns="false" EmptyDataText="There is nothing in your shopping cart." GridLines="None" Width="100%" CellPadding="5" ShowFooter="true" DataKeyNames="ProductId" OnRowDataBound="gvShoppingCart_RowDataBound" OnRowCommand="gvShoppingCart_RowCommand">  
                <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" />  
                <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />  
                <AlternatingRowStyle BackColor="#F8F8F8" />  
                <Columns>  
  
                    <asp:BoundField DataField="Description" HeaderText="Description" />  
                    <asp:TemplateField HeaderText="Quantity">  
                        <ItemTemplate>  
                            <asp:TextBox runat="server" ID="txtQuantity" Columns="5" Text='<%# Eval("Quantity") %>'></asp:TextBox><br />  
                            <asp:LinkButton runat="server" ID="btnRemove" Text="Remove" CommandName="Remove" CommandArgument='<%# Eval("ProductId") %>' style="font-size:12px;"></asp:LinkButton>  
  
                        </ItemTemplate>  
                    </asp:TemplateField>  
                    <asp:BoundField DataField="UnitPrice" HeaderText="Price" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}" />  
                    <asp:BoundField DataField="TotalPrice" HeaderText="Total" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}" />  
                </Columns>  
            </asp:GridView>  
  
            <br />  
        <p style="float: right">
             <asp:Button runat="server" ID="btnUpdateCart" Text="Update Cart" OnClick="btnUpdateCart_Click" />  
             <asp:Button ID="checkoutButton" runat="server" Text="Proceed to Checkout" onclick="checkoutButton_Click" />
      </p>
        </div>
</asp:Content>
