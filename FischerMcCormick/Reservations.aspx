<%@ Page Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="FischerMcCormick.Reservations" %>

<asp:Content ID="mainReservation" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <div class="row">
        <div class="col-md-5">
            <%--Grabbing room information from database for a list--%>
        <asp:SqlDataSource ID="sqlRoomInformation" runat="server" 
                ConnectionString="<%$ ConnectionStrings:F17_kspmccorConnectionString %>" 
                SelectCommand="SELECT [RoomID], [RoomType], [RoomPrice], [RoomDescription] FROM [Rooms]"></asp:SqlDataSource>
            <%--This is the list of room information (name/price/descrip)--%>
            <asp:DropDownList ID="ddlRoomInformation" runat="server" AutoPostBack="True" DataSourceID="sqlRoomInformation" DataTextField="RoomType" DataValueField="RoomType"></asp:DropDownList>
            <br />
            <asp:Button ID="btnAddToCart" runat="server" CssClass="btn-primary" Text="Add To Cart" />
        </div>
        <div class="col-md-4">
            Shopping Cart:
            <asp:Label ID="lblShoppingCart" runat="server" Text="Selected Rooms"></asp:Label>
        </div>
    </div>
    Please contact the Catering Coordinator listed on the Staff Page for catering pricing and information.
</asp:Content>