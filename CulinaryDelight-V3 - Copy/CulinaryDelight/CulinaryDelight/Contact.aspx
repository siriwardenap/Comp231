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
                <iframe width="350" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.ca/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=44+Root+Crescent,+Ajax,+ON&amp;aq=&amp;sll=43.829955,-79.146678&amp;sspn=0.142906,0.338173&amp;ie=UTF8&amp;hq=&amp;hnear=44+Root+Crescent,+Ajax,+Ontario+L1T+4M3&amp;ll=43.884223,-79.033928&amp;spn=0.017847,0.042272&amp;t=m&amp;z=14&amp;output=embed"></iframe><br /><small><a href="https://maps.google.ca/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=44+Root+Crescent,+Ajax,+ON&amp;aq=&amp;sll=43.829955,-79.146678&amp;sspn=0.142906,0.338173&amp;ie=UTF8&amp;hq=&amp;hnear=44+Root+Crescent,+Ajax,+Ontario+L1T+4M3&amp;ll=43.884223,-79.033928&amp;spn=0.017847,0.042272&amp;t=m&amp;z=14" style="color:#0000FF;text-align:left">View Larger Map</a></small>
            </p>
        </header>

    </section>
</asp:Content>