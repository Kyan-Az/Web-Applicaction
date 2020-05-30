<%@ Page Title="" Language="C#" MasterPageFile="~/Aspx/MasterPage.master" AutoEventWireup="true" CodeFile="UsersEditor.aspx.cs" Inherits="Aspx_UsersEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />
<center>
    <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>

    <asp:GridView ID="GridViewUsers" runat="server" BackColor="White" Caption="Available Files" DataKeyNames="ID" 
        AllowPaging="true" PageSize="5" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Horizontal" 
        onselectedindexchanged="GridViewUsers_SelectedIndexChanged" 
        onpageindexchanging="GridViewUsers_PageIndexChanging" 
        onrowcancelingedit="GridViewUsers_RowCancelingEdit" 
        onrowdeleting="GridViewUsers_RowDeleting" 
        onrowediting="GridViewUsers_RowEditing" 
        onrowupdating="GridViewUsers_RowUpdating" 
        onrowcommand="GridViewUsers_RowCommand" AutoGenerateColumns="False">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
        <Columns>
        <asp:TemplateField HeaderText="UserID">
        <ItemTemplate>
            <asp:Label ID="LabelUserID" runat="server" Text='<%# Bind("UserID")%>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="User Name">
        <ItemTemplate>
            <asp:Label ID="LabelUserName" runat="server" Text='<%# Bind("UserFullName")%>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="TextBoxEditUserName" runat="server" Text='<%# Bind("UserFullName")%>'></asp:TextBox>
        </EditItemTemplate>
        <FooterTemplate>
            <asp:TextBox ID="TextBoxInsertUserName" runat="server"></asp:TextBox>
        </FooterTemplate>

        </asp:TemplateField>

        <asp:TemplateField HeaderText="User Email">
        <ItemTemplate>
            <asp:Label ID="LabelUserEmail" runat="server" Text='<%# Bind("UserEmail")%>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="TextBoxEditUserEmail" runat="server" Text='<%# Bind("UserEmail")%>'></asp:TextBox>
        </EditItemTemplate>
        <FooterTemplate>
            <asp:TextBox ID="TextBoxInsertUserEmail" runat="server"></asp:TextBox>
        </FooterTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="User PassWord">
        <ItemTemplate>
            <asp:Label ID="LabelUserPassWord" runat="server" Text='<%# Bind("UserPassWord") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="TextBoxEditUserPassWord" runat="server" Text='<%# Bind("UserPassWord") %>'></asp:TextBox>
        </EditItemTemplate>
        <FooterTemplate>
            <asp:TextBox ID="TextBoxInsertUserPassWord" runat="server"></asp:TextBox>
        </FooterTemplate>
        </asp:TemplateField>
            
            <asp:TemplateField HeaderText="User Type">
            <ItemTemplate>
                <asp:Label ID="LabelUserType" runat="server" Text='<%# Bind("UserType") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="TextBoxEditUserType" runat="server" Text='<%# Bind("UserType") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="TextBoxInsertUserType" runat="server"></asp:TextBox>
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

