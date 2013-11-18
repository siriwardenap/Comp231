<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CustomerDetailsEdit.ascx.cs" Inherits="CulinaryDelight.UserControls.CustomerDetailsEdit" %>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="ProfileWrapper" SelectMethod="GetData" TypeName="ProfileDataSource" UpdateMethod="UpdateData"></asp:ObjectDataSource>
<asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1">
    <EditItemTemplate>
    <table class="UserDetailsTable">
        <tr><td>
        &nbsp; FirstName:</td><td width="350px">
        <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
        </td></tr><tr><td>
        &nbsp; LastName:</td><td>
        <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
        </td></tr><tr><td>
        &nbsp; StreetNo:</td><td>
        <asp:TextBox ID="StreetNoTextBox" runat="server" Text='<%# Bind("StreetNo") %>' />
        </td></tr><tr><td>
        &nbsp; StreetName:</td><td>
        <asp:TextBox ID="StreetNameTextBox" runat="server" Text='<%# Bind("StreetName") %>' />
        </td></tr><tr><td>
        &nbsp; City:</td><td>
        <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
        </td></tr><tr><td>
        &nbsp; Province:</td><td>
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
        &nbsp; PostalCode:</td><td>
        <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a correct postal code!" ValidationExpression="^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[A-z]{1} *\d{1}[A-z]{1}\d{1}$" ControlToValidate="PostalCodeTextBox" Enabled="True"></asp:RegularExpressionValidator>
                    
        </td></tr><tr><td>
        &nbsp; Phone:</td><td>
        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />Format: 999-999-9999
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a correct phone number!" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ControlToValidate="PhoneTextBox"> </asp:RegularExpressionValidator>
                
        </td></tr><tr><td>
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </td></tr>
    </table>
    </EditItemTemplate>
    
    <ItemTemplate>
    <table class="UserDetailsTable">
        <tr><td>
        &nbsp; FirstName:</td><td width="350px">
        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />        
        </td></tr><tr><td>
        &nbsp; LastName:</td><td>
        <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
        </td></tr><tr><td>
        &nbsp; StreetNo:</td><td>
        <asp:Label ID="StreetNoLabel" runat="server" Text='<%# Bind("StreetNo") %>' />
        </td></tr><tr><td>
        &nbsp; StreetName:</td><td>
        <asp:Label ID="StreetNameLabel" runat="server" Text='<%# Bind("StreetName") %>' />
        </td></tr><tr><td>
        &nbsp; City:</td><td>
        <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
        </td></tr><tr><td>
        &nbsp; Province:</td><td>
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
        &nbsp; PostalCode:</td><td>
        <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>' />

        </td></tr><tr><td>
        &nbsp; Phone:</td><td>
        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
        </td></tr><tr><td>
        &nbsp; <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        </td></tr>
    </table>
    </ItemTemplate>
</asp:FormView>

