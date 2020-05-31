<%@ Page Title="" Language="C#" MasterPageFile="~/Aspx/MasterPage.master" AutoEventWireup="true" CodeFile="FileUploadUsers.aspx.cs" Inherits="Aspx_FileUploadUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

    <asp:Label ID="Label1" runat="server" Text="Please Select the Files type"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
    <br />
 <asp:TextBox ID="TextBoxDescription" runat="server" placeholder="Enter Description" Width="500px" ></asp:TextBox> <br /> <br />
 <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Inter Description Please.." ControlToValidate="TextBoxDescription" Display="Dynamic"></asp:RequiredFieldValidator>
 <br />
    <asp:Label ID="LabelErrorMsg" runat="server" Text=""></asp:Label>
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" Width="500px" />
     &nbsp
    <asp:Button ID="ButtonUpload" runat="server" Text="Upload" 
        onclick="ButtonUpload_Click" />
    <hr />


   


    <asp:GridView ID="GridViewFiles" runat="server" AutoGenerateColumns="False" 
        Caption="Available Files" DataKeyNames="FileID"
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
        onrowdatabound="GridView1_RowDataBound" onrowdeleting="GridView1_RowDeleting">
    <Columns>

    <asp:TemplateField HeaderText="FileID">
    <ItemTemplate>
        <asp:Label ID="LabelFileID" runat="server" Text='<%#Bind("FileID") %>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="File Name">
    <ItemTemplate>
        <asp:Label ID="LabelFileName" runat="server" Text='<%#Bind("FileName") %>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="File Size">
    <ItemTemplate>
        <asp:Label ID="LabelFileSize" runat="server" Text='<%#Bind("FileSize") %>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Description">
    <ItemTemplate>
        <asp:Label ID="LabelDescription" runat="server" Text='<%#Bind("Description") %>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Upload Date">
    <ItemTemplate>
        <asp:Label ID="LabelUploadDate" runat="server" Text='<%#Bind("UploadDate") %>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Download">
    <ItemTemplate>        
        <asp:HyperLink ID="HyperLinkFileName" runat="server" NavigateUrl='<%#GetFileName(Eval("FileName")) %>' Text="Download"></asp:HyperLink>
    </ItemTemplate>
    </asp:TemplateField>

    


    </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>


</asp:Content>

