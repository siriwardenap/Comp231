<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="CulinaryDelight.Account.CustomerDetails" %>

<%@ Register Src="~/UserControls/CustomerDetailsEdit.ascx" TagPrefix="uc1" TagName="CustomerDetailsEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
     
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="color: #ac2929;">Welcome <%: Membership.GetUser() %> </h1>
    <h2 style="color: #ff6a00">Edit Your Details</h2>
    <uc1:CustomerDetailsEdit runat="server" id="CustomerDetailsEdit" />
</asp:Content>
