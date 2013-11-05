<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductsList.ascx.cs" Inherits="CulinaryDelight.UserControls.ProductsList" %>
<%@ Register src="Pager.ascx" tagname="Pager" tagprefix="uc1" %>

<uc1:Pager ID="topPager" runat="server" Visibility="false" />
<asp:DataList ID="list" runat="server" CssClass="ProductList" RepeatColumns="2" 
    onitemdatabound="list_ItemDataBound1" EnableViewState="False">
<ItemTemplate>
<h3 class="ProductTitle">
<a href="<%# Link.ToProduct(Eval("ProductID").ToString()) %>">
<%# HttpUtility.HtmlEncode(Eval("Name").ToString()) %>
</a>
</h3>
<a href="<%# Link.ToProduct(Eval("ProductID").ToString()) %>">
<img width="100" border="0"
src="<%# Link.ToProductImage(Eval("Thumbnail").ToString()) %>"
alt='<%# HttpUtility.HtmlEncode(Eval("Name").ToString())%>' />
</a>
<%# HttpUtility.HtmlEncode(Eval("Description").ToString()) %>
 <p class="DetailSection">
      Price:
      <%# Eval("Price", "{0:c}") %>
    </p>
    <asp:PlaceHolder ID="attrPlaceHolder" runat="server"></asp:PlaceHolder>
  </ItemTemplate>
</asp:DataList>
<uc1:Pager ID="bottomPager" runat="server" Visibility="false" />

