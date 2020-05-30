<%@ Page Title="" Language="C#" MasterPageFile="~/Aspx/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Aspx_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<br />
This is the Admin Page

<html>
<head>
<title></title>
<style></style>
</head>
<body>
<fieldset>
<legend>Users Settings</legend>
<ul>
<li><a href="Users.aspx"> Show All Users</a></li>
<li>Add User</li>
<li><a href="UsersEditor.aspx">User Editor</a></li>
<li><a href="Users.aspx">User</a></li>
</ul>
</fieldset>

<br />
<br />

<fieldset>
<legend><a href="#">Contact Messages Settings</a></legend>
<ul>
<li> All Messages</li>
<li><a href="ContactsEditor.aspx">Delete Messages</a></li>
</ul>
</fieldset>

<br />
<br />

<fieldset>
<legend>WareHouses</legend>
<ul>
<li> All WareHouses</li>
<li><a href="WareHouseEditor.aspx">Edit WareHouses</a></li>
</ul>
</fieldset>

<br />
<br />

<fieldset>
<legend><a href="#">Accessories Settings</a></legend>
<ul>
<li>Get All Accessories</li>
<li>Add Accessories</li>
<li>Edit Accessories</li>
<li>Delete Accessories</li>
</ul>
</fieldset>

<br />
<br />

<fieldset>
<legend><a href="#">Orders Settings</a></legend>
<ul>
<li>Get All Orders</li>
<li>Delete Orders</li>
</ul>
</fieldset>

<fieldset>
<legend><a href="#">Files</a></legend>
<ul>
<li> All Files</li>
<li><a href="FileUpload.aspx">View Files</a></li>
</ul>
</fieldset>
</body>
</html>

</asp:Content>

