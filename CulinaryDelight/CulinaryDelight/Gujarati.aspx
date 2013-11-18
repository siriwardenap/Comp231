<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gujarati.aspx.cs" Inherits="CulinaryDelight.Gujarati" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>

         <asp:GridView ID="GridView1" runat="server" AllowPaging="True"   
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id"  onrowcommand="GridView1_OnRowCommand">  
            <Columns>  
                <asp:BoundField DataField="itemid" HeaderText="Item ID"   
                    SortExpression="itemid" />  
                <asp:BoundField DataField="itemname" HeaderText="Item Name"   
                    SortExpression="itemname" />  
                <asp:BoundField DataField="price" HeaderText="Price"   
                    SortExpression="price" /> 
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="AddtoCart"
                            Text="Buy" CommandArgument='<%# Eval("id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>  
        </asp:GridView>  

    </div>
</asp:Content>
