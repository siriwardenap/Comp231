<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminProdoct.aspx.cs" Inherits="CulinaryDelight.AdminProdoct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>Culinary Delight Products Administration</h1>
    <h4><asp:Label ID="statusLabel" runat="server" Text=""></asp:Label></h4>
   
    <asp:GridView ID="ProductGrid" runat="server" DataKeyNames="id" AutoGenerateColumns="False" Width="100%"  OnRowDeleting="grid_RowDeleting">
        <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" /> 
        <AlternatingRowStyle BackColor="#F8F8F8" />
        <Columns>
            <asp:BoundField DataField="itemid" HeaderText="Product ID" SortExpression="itemid" />
            <asp:BoundField DataField="itemname" HeaderText="Product Name" SortExpression="itemname" />
            <asp:BoundField DataField="price" DataFormatString="{0:c}" HeaderText="Unit Price" />
            <asp:TemplateField HeaderText="Category">
                <ItemTemplate>
                    <asp:DropDownList runat="server" ID="category" SelectedValue='<%# Bind("productcat") %>'>
                        <asp:ListItem>Gujarati</asp:ListItem>
                        <asp:ListItem>Srilankan</asp:ListItem>
                        <asp:ListItem>Tandoori</asp:ListItem>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <%--<asp:ButtonField HeaderText="Update" Text="Update" CommandName="Update" />--%>
            <asp:ButtonField HeaderText="Delete" Text="Delete" CommandName="Delete" />
        </Columns>

    </asp:GridView>


    <p><b>Create a new product and assign it to this category:</b></p>
  <p>
      Product ID<span class="WideLabel">:</span>
    <asp:TextBox ID="newId" runat="server" Width="400px" />
  </p>
    <p>
        Product Name<span class="WideLabel">:</span>&nbsp;
        <asp:TextBox ID="newName" runat="server" Width="400px"></asp:TextBox>
  </p>
  <p>
    Price<span class="WideLabel">:</span>
    <asp:TextBox ID="newPrice" runat="server" Width="400px">0.00</asp:TextBox>
  </p>
    <p>
        Category:&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Gujarati</asp:ListItem>
            <asp:ListItem>Srilankan</asp:ListItem>
            <asp:ListItem>Tandoori</asp:ListItem>
        </asp:DropDownList>
  </p>  
  <asp:Button ID="createProduct" runat="server" Text="Create Product" 
    onclick="createProduct_Click" />
</asp:Content>
