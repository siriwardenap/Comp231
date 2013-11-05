<%@ Page Title="Culinary Delight: What are you looking for?" Language="C#" MasterPageFile="~/CulinaryDelight.Master" AutoEventWireup="true" CodeBehind="NotFound.aspx.cs" Inherits="CulinaryDelight.NotFound" %>

<script runat="server">
protected void Page Load(object sender, EventArgs e)
{
// set the 404 status code
Response.StatusCode = 404;
}
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Looking for other Cuisines?</h1>
<p>Unfortunately, the page that you asked for doesn't exist in our web site!
</p>
<p>Please visit our
<asp:HyperLink ID="HyperLink1" runat="server" Target="~/" Text="catalog" />,
or contact us at friendly support@example.com!
</p>
<p>The <b>Culinary Delight</b> team</p>
</asp:Content>
