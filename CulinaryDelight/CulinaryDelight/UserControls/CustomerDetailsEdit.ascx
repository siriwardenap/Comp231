<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CustomerDetailsEdit.ascx.cs" Inherits="CulinaryDelight.UserControls.CustomerDetailsEdit" %>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="ProfileWrapper" SelectMethod="GetData" TypeName="ProfileDataSource" UpdateMethod="UpdateData"></asp:ObjectDataSource>
<asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1">
    <EditItemTemplate>
        <table class="UserDetailsTable">
        <tr><td width="150px" >
         &nbsp;First Name: </td><td width="450px">
        <asp:TextBox width="440px" ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
        </td></tr><tr><td >
         &nbsp;Last Name: </td><td>
        <asp:TextBox width="440px"  ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
        </td></tr><tr><td >
         &nbsp;Street No: </td><td>
        <asp:TextBox  width="440px" ID="StreetNoTextBox" runat="server" Text='<%# Bind("StreetNo") %>' />
        </td></tr><tr><td>
         &nbsp;Street Name: </td><td>
        <asp:TextBox width="440px"  ID="StreetNameTextBox" runat="server" Text='<%# Bind("StreetName") %>' />
        </td></tr><tr><td>
         &nbsp;City: </td><td>
        <asp:TextBox width="440px" ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
        </td></tr><tr><td>
         &nbsp;Province: </td><td>
        <asp:DropDownList Height="30px" Width="450px" ID="ProvinceDropDown" runat="server" SelectedValue='<%# Bind("Province") %>' >
            <asp:ListItem>British Columbia</asp:ListItem>
            <asp:ListItem>Ontario</asp:ListItem>
            <asp:ListItem>Saskatchewan</asp:ListItem>
            <asp:ListItem>Alberta</asp:ListItem>
            <asp:ListItem>Yukon</asp:ListItem>
            <asp:ListItem>Manitoba</asp:ListItem>
            <asp:ListItem>New Brunswick</asp:ListItem>
            <asp:ListItem>Newfoundland</asp:ListItem>
            <asp:ListItem>Prince Edward Island</asp:ListItem>
            <asp:ListItem>Nova Scotia</asp:ListItem>
            <asp:ListItem>Quebec</asp:ListItem>
            <asp:ListItem>Nunavut</asp:ListItem>
            <asp:ListItem>Northwest Territories</asp:ListItem>
        </asp:DropDownList>
        </td></tr><tr><td>
         &nbsp;Postal Code: </td><td>
        <asp:TextBox width="440px"  ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a correct postal code!" ValidationExpression="^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[A-z]{1} *\d{1}[A-z]{1}\d{1}$" ControlToValidate="PostalCodeTextBox" Enabled="True"></asp:RegularExpressionValidator>
                    
        </td></tr><tr><td>
         &nbsp;Phone: </td><td>
        <asp:TextBox width="440px"  ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />Format: 999-999-9999
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a correct phone number!" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ControlToValidate="PhoneTextBox"> </asp:RegularExpressionValidator>
             
        </td></tr><tr><td>
         &nbsp;Email: </td><td>
        <asp:TextBox width="440px" ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
        
        </td></tr><tr><td valign="top">
         &nbsp;Credit Card: </td><td width="480px">
           <table cellpadding="0" cellspacing="0" border="0">
               <tr><td width="220px">
               CardHolder Name:</td><td >
                <asp:TextBox width="250" ID="CreditCardHolderTextBox" runat="server" Text='<%# Bind("CreditCardHolder") %>' />
              </td></tr> <tr><td>
                Card Number:</td><td>
                <asp:TextBox width="250" ID="CreditCardNumberTextBox" runat="server" Text='<%# Bind("CreditCardNumber") %>' />
            </td></tr> <tr><td>
                Card Issue Date:</td><td>
                <asp:TextBox width="250" ID="CreditCardIssueDateTextBox" runat="server" Text='<%# Bind("CreditCardIssueDate") %>' />
          </td></tr> <tr><td>
                Card Issue Number:</td><td>
                <asp:TextBox width="250" ID="CreditCardIssueNumberTextBox" runat="server" Text='<%# Bind("CreditCardIssueNumber") %>' />
            </td></tr> <tr><td>
                Card Expiry Date:</td><td>
                <asp:TextBox width="250" ID="CreditCardExpiryDateTextBox" runat="server" Text='<%# Bind("CreditCardExpiryDate") %>' />
           </td></tr> <tr><td>
                Card Type:</td><td>
                <asp:TextBox width="250" ID="CreditCardTypeTextBox" runat="server" Text='<%# Bind("CreditCardType") %>' />
          </td></tr>
           </table>     
        </td></tr><tr><td>
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" /></td><td>
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </td></tr>
    </table>        
    </EditItemTemplate>    
    
    <ItemTemplate>
       
    <table class="UserDetailsTable">
        <tr><td>
        &nbsp;First Name:</td><td width="350px">
        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />        
        </td></tr><tr><td>
        &nbsp;Last Name:</td><td>
        <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
        </td></tr><tr><td>
        &nbsp;Street No:</td><td>
        <asp:Label ID="StreetNoLabel" runat="server" Text='<%# Bind("StreetNo") %>' />
        </td></tr><tr><td>
        &nbsp;Street Name:</td><td>
        <asp:Label ID="StreetNameLabel" runat="server" Text='<%# Bind("StreetName") %>' />
        </td></tr><tr><td>
        &nbsp;City:</td><td>
        <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
        </td></tr><tr><td>
        &nbsp;Province:</td><td>
        <%--<asp:Label ID="ProvinceLabel" runat="server" Text='<%# Bind("Province") %>' />--%>
        <asp:DropDownList Width="350px" ID="ProvinceDropDown" runat="server" SelectedValue='<%# Bind("Province") %>' >
            <asp:ListItem>British Columbia</asp:ListItem>
            <asp:ListItem>Ontario</asp:ListItem>
            <asp:ListItem>Saskatchewan</asp:ListItem>
            <asp:ListItem>Alberta</asp:ListItem>
            <asp:ListItem>Yukon</asp:ListItem>
            <asp:ListItem>Manitoba</asp:ListItem>
            <asp:ListItem>New Brunswick</asp:ListItem>
            <asp:ListItem>Newfoundland</asp:ListItem>
            <asp:ListItem>Prince Edward Island</asp:ListItem>
            <asp:ListItem>Nova Scotia</asp:ListItem>
            <asp:ListItem>Quebec</asp:ListItem>
            <asp:ListItem>Nunavut</asp:ListItem>
            <asp:ListItem>Northwest Territories</asp:ListItem>
        </asp:DropDownList>
        </td></tr><tr><td>
        &nbsp;Postal Code:</td><td>
        <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>' />
        </td></tr><tr><td>
        &nbsp;Phone:</td><td>
        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            </td></tr><tr><td>
        &nbsp;Email:</td><td>
        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            </td></tr><tr><td>
        &nbsp;Credit Card: </td><td>
        <asp:Label ID="CreditCardLabel" runat="server" Text='<%# Bind("CreditCard") %>' />
        </td></tr><tr><td>
        &nbsp;<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        </td></tr>
    </table>
    </ItemTemplate>
</asp:FormView>

