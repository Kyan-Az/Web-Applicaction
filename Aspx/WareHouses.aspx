<%@ Page Title="" Language="C#" MasterPageFile="~/Aspx/MasterPage.master" AutoEventWireup="true" CodeFile="WareHouses.aspx.cs" Inherits="Aspx_WareHouses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
This the WareHouses Page
<br />
<br />
<br />

    <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
    <asp:GridView ID="GridViewWareHouse" runat="server" PageIndex="5" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
        AutoGenerateColumns="False" 
        onpageindexchanging="GridViewWareHouse_PageIndexChanging">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
        <Columns>
        <asp:TemplateField HeaderText="WareHouse Location">
        <ItemTemplate>
            <asp:Label ID="LabelWHName" runat="server" Text='<%#Bind("WareHouseName") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Current Containers">
        <ItemTemplate>
            <asp:Label ID="LabelWHContainers" runat="server" Text='<%#Bind("WareHouseContainers") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Max Containers">
        <ItemTemplate>
            <asp:Label ID="LabelMaxContainers" runat="server" Text='<%#Bind("MaxContainers") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
    

        </Columns>
    </asp:GridView>


</asp:Content>

