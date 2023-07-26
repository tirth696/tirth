<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="project2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Your contact page.</h3>
        <address>
            Heighfiled Ascott Gaurav Path<br />
            Surat,GJ 98052-6399<br />
            <abbr title="Phone">P:</abbr>
            9909681625
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:uniqcare.com">Support@example.com</a><br />
            <strong>Booking:</strong> <a href="mailto:uniqbook.com">Marketing@example.com</a>
        </address>
    </main>
</asp:Content>
