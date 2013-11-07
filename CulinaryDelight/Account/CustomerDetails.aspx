<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="CustomerDetails.aspx.cs" Inherits="Account_CustomerDetails" %>

<%@ Register Src="~/UserControls/CustomerDetailsEdit.ascx" TagPrefix="uc1" TagName="CustomerDetailsEdit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
     <h1>Welcome <%: Membership.GetUser() %> </h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
   <h1> <span>Edit Your Details</span></h1>
    <uc1:CustomerDetailsEdit runat="server" ID="CustomerDetailsEdit" />
</asp:Content>

