<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Oops.aspx.cs" Inherits="CulinaryDelight.Oops" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script runat="server">
protected void Page Load(object sender, EventArgs e)
{
// set the 500 status code
Response.Status = "500 Internal Server Error";
}
</script>
    <title>CulinaryDelight: Oops!</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HyperLink ID="HeaderLink" ImageUrl="~/Images/bannerfans_9215914(3).png"
NavigateUrl="~/" ToolTip="CulinaryDelight Banner" Text="CulinaryDelight Banner"
runat="server" />
<p>Your request generated an internal error!</p>
<p>We apologize for the inconvenience. The error has been reported and will
be fixed as soon as possible. Thank you!</p>
<p>The <b>CulinaryDelight Team</b> team</p>
    </form>
</body>
</html>
