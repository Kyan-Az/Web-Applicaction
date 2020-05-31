<%@ Page Title="" Language="C#" MasterPageFile="~/Aspx/MasterPage.master" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Aspx_Contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

/* Style inputs */
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

/* Style the container/contact section */
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 10px;
}

/* Create two columns that float next to eachother */
.column {
  float: left;
  width: 50%;
  margin-top: 6px;
  padding: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>



<div class="container">
  <div style="text-align:center">
    <h2>Contact Us</h2>
    <p>Swing by for a cup of coffee, or leave us a message:</p>
  </div>
  <div class="row">
    <div class="column">
      <img src="../Images/map.jpg" style="width:100%">
    </div>
    <div class="column">
      <form action="/action_page.php">
        <label for="fname">Full Name</label>
      <asp:TextBox ID="TextBoxName" runat="server" placeholder="Your Name.."></asp:TextBox>
        
        <label for="lname">Email Address</label>
      <asp:TextBox ID="TextBoxEmail" runat="server" placeholder="Your Email Address.."></asp:TextBox>

        <label for="subject">Subject</label>
      <asp:TextBox ID="TextBoxSubject" runat="server" placeholder="Write Your Message.." style="height:170px"></asp:TextBox>
        
        
      <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" 
            onclick="ButtonSubmit_Click" />
            <br />
      <asp:Label ID="LabelMsg" runat="server" Text=""></asp:Label>
      </form>
    </div>
  </div>
</div>

</body>
</html>



</asp:Content>

