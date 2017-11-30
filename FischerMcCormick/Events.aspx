<%@ Page Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="FischerMcCormick.Events" %>

<asp:Content ID="mainEvents" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <asp:Label ID="EventsLabel" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="True" Text="Upcoming Events" Width="203px"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Kate and Jeffs Wedding"></asp:Label>
&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label2" runat="server" Text="The wedding is on 12/12/2017"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Little People, Big Ideas Art Show"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" Text="The Art Show will be Friday 12/7/2017 - Sunday 12/9/2017"></asp:Label>
&nbsp;
</asp:Content>
