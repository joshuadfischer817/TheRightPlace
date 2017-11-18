<%@ Page Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Pricing.aspx.cs" Inherits="FischerMcCormick.Pricing" %>

<asp:Content ID="mainPricing" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <%--Connecting to database for room information--%>
    <asp:SqlDataSource ID="sqlPricingAndInfo" runat="server" 
        ConnectionString="<%$ ConnectionStrings:F17_kspmccorConnectionString %>" 
        SelectCommand="SELECT [RoomType], [RoomPrice], [RoomDescription] FROM [Rooms]"></asp:SqlDataSource>
    
    <%--listing information from database--%>
    <asp:GridView ID="RoomAndPriceGrid" runat="server" DataSourceID="sqlPricingAndInfo" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
            <asp:BoundField DataField="RoomPrice" HeaderText="RoomPrice" SortExpression="RoomPrice" />
            <asp:BoundField DataField="RoomDescription" HeaderText="RoomDescription" SortExpression="RoomDescription" />
        </Columns>
    </asp:GridView>
    </asp:Content>