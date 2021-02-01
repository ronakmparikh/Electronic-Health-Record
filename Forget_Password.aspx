<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Forget_Password.aspx.vb" Inherits="Forget_Password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;
        <asp:Label ID="lblforget" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="Forget Password" ForeColor="Blue"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblusername" runat="server" Font-Bold="True" Font-Size="Large" 
            Text="User Name" ForeColor="Blue"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txtuserid" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblusername0" runat="server" Font-Bold="True" Font-Size="Large" 
            Text="User Type" ForeColor="Blue"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddluser_type" runat="server" 
                    Width="123px">
                    <asp:ListItem>Member</asp:ListItem>
                    <asp:ListItem Selected="True">User Type</asp:ListItem>
                    <asp:ListItem>Provider Organisation</asp:ListItem>
                    <asp:ListItem>Provider Individual</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="ddluser_type" ErrorMessage="*" InitialValue="User Type"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="OK" Width="75px" 
            BackColor="#009900" ForeColor="White" />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
