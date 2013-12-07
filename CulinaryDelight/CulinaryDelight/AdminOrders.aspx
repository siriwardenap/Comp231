<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminOrders.aspx.cs" Inherits="CulinaryDelight.AdminOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Culinary Delight Orders Administration</h1>
    Show the most recent
  <asp:TextBox ID="recentCountTextBox" runat="server" MaxLength="4" Width="40px" Text="20" />
  records
  <asp:Button ID="byRecentGo" runat="server" Text="Go" CausesValidation="False" 
    onclick="byRecentGo_Click" /><br />
  Show all records created between
  <asp:TextBox ID="startDateTextBox" runat="server" Width="72px" />
  and
  <asp:TextBox ID="endDateTextBox" runat="server" Width="72px" />
  <asp:Button ID="byDateGo" runat="server" Text="Go" onclick="byDateGo_Click" />
  <br />
    <asp:Label ID="errorLabel" runat="server" CssClass="AdminError" 
    EnableViewState="False"></asp:Label>
&nbsp;<asp:RangeValidator ID="startDateValidator" runat="server" 
    ControlToValidate="startDateTextBox" Display="None" 
    ErrorMessage="Invalid start date" MaximumValue="1/1/2015" 
    MinimumValue="1/1/2009" Type="Date"></asp:RangeValidator>
&nbsp;<asp:RangeValidator ID="endDateValidator" runat="server" 
    ControlToValidate="endDateTextBox" Display="None" 
    ErrorMessage="Invalid end date" MaximumValue="1/1/2015" MinimumValue="1/1/1999" 
    Type="Date"></asp:RangeValidator>
&nbsp;<asp:CompareValidator ID="compareDatesValidator" runat="server" 
    ControlToCompare="endDateTextBox" ControlToValidate="startDateTextBox" 
    Display="None" ErrorMessage="Start date should be more recent than end date" 
    Operator="LessThan" Type="Date"></asp:CompareValidator>
  <asp:ValidationSummary ID="validationSummary" runat="server" 
    CssClass="AdminError" HeaderText="Data validation errors:" />
  <br />
<asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="OrderID" onselectedindexchanged="grid_SelectedIndexChanged">
    <Columns>
      <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" 
        SortExpression="OrderID" />
      <asp:BoundField DataField="DateCreated" HeaderText="Date Created" 
        ReadOnly="True" SortExpression="DateCreated" />
      <asp:BoundField DataField="DateShipped" HeaderText="Date Shipped" 
        ReadOnly="True" SortExpression="DateShipped" />
        <asp:BoundField DataField="OrderStatus" HeaderText="Order Status" />
      <asp:BoundField DataField="UserName" HeaderText="Customer Name" ReadOnly="True" 
        SortExpression="CustomerName" />
      <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Select" />
    </Columns>
  </asp:GridView>

</asp:Content>
