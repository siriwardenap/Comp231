<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CulinaryDelight.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Contact us</h1>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            905-683-3719</p>
        <p>
            <span class="label">After Hours:</span>
            647-862-2978
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <a href="mailto:Support@example.com">rumsha1@</a>rediff.mail.com</p>
        <p>
            <span class="label">Marketing:</span>
            <a href="mailto:Support@example.com">rumsha1@</a>rediff.mail.com
        </p>
        <p>
            <span class="label">General:</span>
            <a href="mailto:General@example.com">culinarydelight.info@gmail.com</a></p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            44, Root Crescent</p>
        <p>
            Ajax ON L1T4M3</p>
        <p>
            Canada</p>
        <header>
            <h3>Reach us:</h3>
            <p>                
                <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps?t=m&amp;q=l1t4m3&amp;ie=UTF8&amp;hq=&amp;hnear=Ajax,+Ontario+L1T+4M3,+Canada&amp;source=embed&amp;z=14&amp;ll=43.884853,-79.033782&amp;output=embed"></iframe><br /><small><a href="https://www.google.com/maps?t=m&amp;q=l1t4m3&amp;ie=UTF8&amp;hq=&amp;hnear=Ajax,+Ontario+L1T+4M3,+Canada&amp;source=embed&amp;z=14&amp;ll=43.884853,-79.033782" style="color:#0000FF;text-align:left">View Larger Map</a></small>

            </p>
        </header>
    </section>
</asp:Content>