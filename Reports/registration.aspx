<%@ Page Language="VB" AutoEventWireup="false" CodeFile="registration.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>

    <form id="form1" runat="server">


   
    <div style="background-color: #FF9933">
    <asp:Panel ID="Panel8" runat="server" Height="758px" 
    Width="1350px" ScrollBars="Vertical">     
         
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_heading" runat="server" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="Blue" 
            Text="REGISTRATION  FORM" style="text-align: center"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="Small" Text="NAME" 
            Font-Bold="True" ForeColor="Blue" Font-Names="Arial"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtfirstname" runat="server" style="text-align: justify" 
                Width="449px"></asp:TextBox>
        &nbsp;
         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
             ControlToValidate="txtfirstname" ErrorMessage="*" 
             ToolTip="Name Must Be Entered"></asp:RequiredFieldValidator>
         <br />
        <br />
            &nbsp;<asp:Label ID="Label11" runat="server" Font-Size="Small" 
            Text="ADDRESS" Font-Bold="True" ForeColor="Blue" Font-Names="Arial"></asp:Label>
        &nbsp;
        &nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
            <asp:TextBox ID="txtpin_code" runat="server" Width="89px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
             ControlToValidate="txtpin_code" ErrorMessage="*" 
             ToolTip="Pin code Must Be Entered"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
            runat="server" ControlToValidate="txtpin_code" ErrorMessage="*" 
            ToolTip="numeric value only" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtcountry" 
             runat="server" Width="80px"></asp:TextBox>
         &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
             ControlToValidate="txtcountry" ErrorMessage="*" 
             ToolTip="Country Must Be Entered"></asp:RequiredFieldValidator>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblpincode" runat="server" 
            Font-Bold="False" Font-Names="Arial" Font-Size="Small" ForeColor="Black" 
            Text="PIN Code"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblcountry" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Black" Text="Country"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtstate" runat="server" Width="100px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
            ControlToValidate="txtstate" ErrorMessage="*" ToolTip="State Must Be Entered"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtcity" runat="server" Width="110px"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
            ControlToValidate="txtcity" ErrorMessage="*" ToolTip="City Must Be Entered"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblstate" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Black" Text="State"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblcity" runat="server" Font-Size="Small" Text="City" 
                Font-Names="Arial" ForeColor="Black"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtstreet" runat="server" Width="110px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
             ControlToValidate="txtstreet" ErrorMessage="*" ToolTip="Street Must Be Entered"></asp:RequiredFieldValidator>
         &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtarea" runat="server" Width="120px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
             ControlToValidate="txtarea" ErrorMessage="*" ToolTip="Area Must Be Entered"></asp:RequiredFieldValidator>
         &nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label22" runat="server" Text="Street" Font-Names="Arial" 
                Font-Size="Small" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label32" runat="server" Font-Names="Arial" ForeColor="Black" 
                Text="Area" Font-Size="Small"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtland_mark" runat="server" Width="120px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
            ControlToValidate="txtland_mark" ErrorMessage="*" 
            ToolTip="Landmark Must Be Entered"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label23" runat="server" 
            Font-Names="Arial" Font-Size="Small" ForeColor="Black" Text="Land Mark"></asp:Label>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Small" 
                Text="PHONE NUMBER" ForeColor="Blue" Font-Names="Arial"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label31" runat="server" 
            Font-Names="Arial" Font-Size="Small" ForeColor="Black" Text="Country Code:-"></asp:Label>
        &nbsp; <asp:TextBox ID="txtcountry_code" runat="server" Width="40px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" 
             runat="server" ControlToValidate="txtcountry_code" ErrorMessage="*" 
             ToolTip="Country Code Must Be Entered"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
            runat="server" ControlToValidate="txtcountry_code" ErrorMessage="*" 
            ToolTip="numeric value only" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Black" Text="STD Code:-"></asp:Label>
        &nbsp;<asp:TextBox ID="txtstd_code" runat="server" Width="49px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" 
             runat="server" ControlToValidate="txtstd_code" ErrorMessage="*" 
             ToolTip="Std Code Must Be Entered"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
            runat="server" ControlToValidate="txtstd_code" ErrorMessage="*" 
            ToolTip="numeric value only" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label14" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Black" Text="Land Line no:-"></asp:Label>
        &nbsp;<asp:TextBox ID="txtland_line" runat="server" Width="101px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
            ControlToValidate="txtland_line" ErrorMessage="*" 
            ToolTip="Land Line Must Be Entered"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="txtland_line" ErrorMessage="*" ToolTip="numeric value only" 
            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
        <br />
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label15" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Black" Text="Facimile no:-"></asp:Label>
            <asp:TextBox ID="txtfacimile" runat="server" Width="105px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
             ControlToValidate="txtfacimile" ErrorMessage="*" 
             ToolTip="Facimal Must Be Entered"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator6" 
            runat="server" ControlToValidate="txtfacimile" ErrorMessage="*" 
            ToolTip="numeric value only" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
         &nbsp;<br />
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label24" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Black" Text="Mobile No:-"></asp:Label>
        <asp:TextBox ID="txtmobile_no" runat="server" Width="83px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
            ControlToValidate="txtmobile_no" ErrorMessage="*" 
            ToolTip="Mobile No Must Be Entered"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
            ControlToValidate="txtmobile_no" ErrorMessage="*" ToolTip="numeric value only" 
            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
        &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label25" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Black" Text="Toll Free No:-"></asp:Label>
        <asp:TextBox ID="txttoll_free_no" runat="server" Width="103px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
            ControlToValidate="txttoll_free_no" ErrorMessage="*" 
            ToolTip="Toll Free No Must Be Entered"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
            ControlToValidate="txttoll_free_no" ErrorMessage="*" 
            ToolTip="numeric value only" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Small" 
                Text="SOFT CONTACT" Font-Names="Arial" ForeColor="Blue"></asp:Label>
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label26" runat="server" 
            Font-Names="Arial" Font-Size="Small" ForeColor="Black" Text="E - Mail:-"></asp:Label>
        &nbsp;<asp:TextBox ID="txte_mail" runat="server" Width="232px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" 
             runat="server" ControlToValidate="txte_mail" ErrorMessage="*" 
             ToolTip="Email id Must Be Entered"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" 
            runat="server" ControlToValidate="txte_mail" ErrorMessage="*" 
            ToolTip="numeric value only" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label27" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Black" Text="Web URL:-"></asp:Label>
        &nbsp;<asp:TextBox ID="txtweb_url" runat="server" Width="227px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
            ControlToValidate="txtweb_url" ErrorMessage="*" 
            ToolTip="Web URL Must Be Entered"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label38" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Password:-"></asp:Label>
        &nbsp;<asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
            ControlToValidate="txtpassword" ErrorMessage="*" ToolTip="password is must"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" Font-Bold="True" 
                Font-Names="Arial" onclick="Button1_Click" style="height: 26px" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Arial" 
            Text="Cancel" />
            <br />
            <br />
    </asp:Panel>      
    </div>
 
    </form>

</body>
</html>
