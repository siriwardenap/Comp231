<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminOrderDetails.aspx.cs" Inherits="CulinaryDelight.AdminOrderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Culinary Delight Order Details Administration</h1>

    <h2>
    <asp:Label ID="orderIdLabel" runat="server" CssClass="AdminTitle" Text="Order #000" />
  </h2>
  <span class="WideLabel">Total Amount:</span>
  <asp:Label ID="totalAmountLabel" runat="server" CssClass="ProductPrice" />
  <br />
  <span class="WideLabel">Date Created:</span>
  <asp:TextBox ID="dateCreatedTextBox" runat="server" Width="400px" />
  <br />
  <span class="WideLabel">Date Shipped:</span>
  <asp:TextBox ID="dateShippedTextBox" runat="server" Width="400px" />
  <br />
  <span class="WideLabel">Status: </span>
    <asp:DropDownList ID="StatusList" runat="server" Width="250px" SelectedValue='<%# Bind("OrderStatus") %>'>
        <asp:ListItem>Processing</asp:ListItem>
        <asp:ListItem>Completed</asp:ListItem>
        <asp:ListItem>Canceled</asp:ListItem>
        <asp:ListItem>Verified</asp:ListItem>        
    </asp:DropDownList> <br />
  <span class="WideLabel">Comments:</span>
  <asp:TextBox ID="commentsTextBox" runat="server" Width="400px" />
  <br />
  <span class="WideLabel">Customer Name:</span>
  <asp:TextBox ID="customerNameTextBox" runat="server" Width="400px" />
  <br />
  
  <asp:Button ID="editButton" runat="server" Text="Edit" Width="100px" 
    onclick="editButton_Click" />
  <asp:Button ID="updateButton" runat="server" Text="Update" Width="100px" 
    onclick="updateButton_Click" />
  <asp:Button ID="cancelButton" runat="server" Text="Cancel" Width="100px" 
    onclick="cancelButton_Click" />
  
  <p>
    The order contains these items:
  </p>
  <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" BackColor="White" Width="100%">
    <Columns>
      <asp:BoundField DataField="ProductID" HeaderText="Product ID" ReadOnly="True" SortExpression="ProductID" />
      <asp:BoundField DataField="ProductName" HeaderText="Product Name" ReadOnly="True" SortExpression="ProductName" />
      <asp:BoundField DataField="Quantity" HeaderText="Quantity" ReadOnly="True" SortExpression="Quantity" />
      <asp:BoundField DataField="UnitCost" HeaderText="Unit Cost" ReadOnly="True" SortExpression="UnitCost" />
      <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" ReadOnly="True" SortExpression="Subtotal" />
    </Columns>
  </asp:GridView>
</asp:Content>
