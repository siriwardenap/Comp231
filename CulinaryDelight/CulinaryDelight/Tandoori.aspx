<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tandoori.aspx.cs" Inherits="CulinaryDelight.Tandoori" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div>
         <h1>Tandoori Menu</h1>
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
                            Text="Add to Cart" CommandArgument='<%# Eval("id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>  
        </asp:GridView>  

    </div>

</asp:Content>

