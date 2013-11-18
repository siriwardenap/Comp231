<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterCustomer.aspx.cs" Inherits="CulinaryDelight.Account.RegisterCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left:auto; margin-right:auto">
    <asp:CreateUserWizard ID="RegisterUser" runat="server" CancelDestinationPageUrl="~/" ContinueDestinationPageUrl="~/Account/CustomerDetails.aspx" CreateUserButtonText="Sign Up" OnCreatedUser="RegisterUser_CreatedUser">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
    </div>   
</asp:Content>
