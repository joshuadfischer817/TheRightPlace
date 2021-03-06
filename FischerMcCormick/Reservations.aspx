﻿<%@ Page Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="FischerMcCormick.Reservations" %>

<asp:Content ID="mainReservation" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <div class="row">
        <div class="col-md-5">
            <label>Once you have decided on a room from the Rooms and Pricing page, please select the desired room to add to your cart:</label>
            <%--Grabbing room information from database for a list--%>
            <asp:SqlDataSource ID="sqlRoomInformation" runat="server"
                ConnectionString="<%$ ConnectionStrings:F17_kspmccorConnectionString %>"
                SelectCommand="SELECT [RoomID], [RoomType], [RoomPrice ($)] AS column1, [RoomDescription] FROM [Rooms]"></asp:SqlDataSource>
            <%--This is the list of room information (name/price/descrip)--%>
            <asp:DropDownList ID="ddlRoomInformation" runat="server" AutoPostBack="True" DataSourceID="sqlRoomInformation" DataTextField="RoomType" DataValueField="RoomID"></asp:DropDownList>
            <br />
            <asp:Button ID="btnAddToCart" runat="server" CssClass="btn-primary" Text="Add To Cart" />
            <asp:Button ID="btnClearCart" runat="server" Text="Clear Cart" />
        </div>
        <div class="col-md-4 jumbotron">
            Shopping Cart:
            <asp:Label ID="lblShoppingCart" runat="server"></asp:Label>
        </div>
    </div>
    Please contact the Catering Coordinator listed on the Staff Page for catering pricing and information.
</asp:Content>
