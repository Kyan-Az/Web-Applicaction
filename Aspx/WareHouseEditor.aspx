<%@ Page Title="" Language="C#" MasterPageFile="~/Aspx/MasterPage.master" AutoEventWireup="true" CodeFile="WareHouseEditor.aspx.cs" Inherits="Aspx_WareHouseEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />
<center>
    <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
    <br />
    <br />

    <asp:GridView ID="GridViewWareHouse" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Horizontal" PageSize="5" 
        onpageindexchanging="GridViewWareHouse_PageIndexChanging" 
        onrowcancelingedit="GridViewWareHouse_RowCancelingEdit" 
        onrowcommand="GridViewWareHouse_RowCommand" 
        onrowdeleting="GridViewWareHouse_RowDeleting" 
        onrowediting="GridViewWareHouse_RowEditing" 
        onrowupdating="GridViewWareHouse_RowUpdating" 
        onselectedindexchanging="GridViewWareHouse_SelectedIndexChanging">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
        <Columns>

        <asp:TemplateField HeaderText="WareHouseID">
        <ItemTemplate>
            <asp:Label ID="LabelWareHouseID" runat="server" Text='<%#Bind("WareHouseID")%>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="WareHouse Name">
        <ItemTemplate>
            <asp:Label ID="LabelWareHouseName" runat="server" Text='<%#Bind("WareHouseName")%>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="TextBoxEditWareHouseName" runat="server" Text='<%#Bind("WareHouseName")%>'></asp:TextBox>
        </EditItemTemplate>
        <FooterTemplate>
            <asp:TextBox ID="TextBoxInsertWareHouseName" runat="server"></asp:TextBox>
        </FooterTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="WareHouse Containers">
        <ItemTemplate>
            <asp:Label ID="LabelWareHouseContainers" runat="server" Text='<%#Bind("WareHouseContainers")%>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="TextBoxWareHouseContainers" runat="server" Text='<%#Bind("WareHouseContainers")%>'>></asp:TextBox>
        </EditItemTemplate>
        <FooterTemplate>
            <asp:TextBox ID="TextBoxInsertWareHouse" runat="server"></asp:TextBox>
        </FooterTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Max Containers">
        <ItemTemplate>
            <asp:Label ID="LabelMaxContainers" runat="server" Text='<%#Bind("MaxContainers")%>'>></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="TextBoxEditContainers" runat="server" Text='<%#Bind("MaxContainers")%>'>></asp:TextBox>
        </EditItemTemplate>
        <FooterTemplate>
            <asp:TextBox ID="TextBoxInsertContainers" runat="server"></asp:TextBox>
        </FooterTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Edit">
        <ItemTemplate>
            <asp:LinkButton ID="LinkButtonEdit" runat="server">Edit</asp:LinkButton>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:LinkButton ID="LinkButtonUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
            <asp:LinkButton ID="LinkButtonCancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
        </EditItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Delete">
        <ItemTemplate>
            <asp:LinkButton ID="LinkButtonDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
        </ItemTemplate>
        </asp:TemplateField>



        </Columns>
    </asp:GridView>



    </center>
</asp:Content>

