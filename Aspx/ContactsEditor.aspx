<%@ Page Title="" Language="C#" MasterPageFile="~/Aspx/MasterPage.master" AutoEventWireup="true" CodeFile="ContactsEditor.aspx.cs" Inherits="Aspx_ContactsEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />
<br />
<center>
    <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>

    <asp:GridView ID="GridViewContact" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
        onpageindexchanging="GridViewContact_PageIndexChanging" 
        onrowcancelingedit="GridViewContact_RowCancelingEdit" 
        onrowcommand="GridViewContact_RowCommand" 
        onrowdeleting="GridViewContact_RowDeleting" 
        onrowediting="GridViewContact_RowEditing" 
        onrowupdating="GridViewContact_RowUpdating" 
        onselectedindexchanging="GridViewContact_SelectedIndexChanging">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
        <Columns>

        <asp:TemplateField HeaderText="ContactID">
        <ItemTemplate>
            <asp:Label ID="LabelContactID" runat="server" Text='<%#Bind("ContactID") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="UserID">

        <ItemTemplate>
            <asp:Label ID="LabelUserID" runat="server" Text='<%#Bind("UserID") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Name">

        <ItemTemplate>
            <asp:Label ID="LabelUserName" runat="server" Text='<%#Bind("UserFullName") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Email">
        <ItemTemplate>
            <asp:Label ID="LabelUserEmail" runat="server" Text='<%#Bind("UserEmail") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Message">
        <ItemTemplate>
            <asp:Label ID="LabelMessage" runat="server" Text='<%#Bind("Message") %>'></asp:Label>
        </ItemTemplate>

        <EditItemTemplate>
            <asp:TextBox ID="TextBoxEditMessage" runat="server" Text='<%#Bind("Message") %>'></asp:TextBox>
        </EditItemTemplate>

        <FooterTemplate>
            <asp:TextBox ID="TextBoxInsertMessage" runat="server"></asp:TextBox>
        </FooterTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Edit">
        <ItemTemplate>
            <asp:LinkButton ID="LinkButtonEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
        </ItemTemplate>
        <EditItemTemplate>
        <asp:LinkButton ID="LinkButtonUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
        <asp:LinkButton ID="LinkButtonCancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
        </EditItemTemplate>
        <FooterTemplate>
            <asp:LinkButton ID="LinkButtonInsert" runat="server" CommandName="Insert">Insert</asp:LinkButton>
        </FooterTemplate>
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

