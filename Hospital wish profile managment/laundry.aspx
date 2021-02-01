<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="laundry.aspx.vb" Inherits="laundry" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="414px" 
        Width="1171px">

<asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Link Page/Link Page.aspx" CausesValidation="False" 
            Font-Bold="True">HOME</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <center>  <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Text="Laundry Record" BackColor="#009900" ForeColor="White"></asp:Label></center>
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
        <asp:Label ID="Label1" runat="server" ForeColor="Blue" 
            Text="WasherMan\Women_id:-"></asp:Label>
                </td>
                <td class="style3">
        <asp:TextBox ID="txtwasherman_women_id" runat="server" Height="22px" 
            Width="121px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtwasherman_women_id" ErrorMessage="*" 
            ToolTip="WasherMan\Women_id Must be Entered"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
        <asp:Label ID="Label3" runat="server" Text="WasherMan\Women_Name:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtwasherman_women_name" runat="server" Height="22px" 
            Width="121px"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtwasherman_women_name" ErrorMessage="*" 
            ToolTip="WasherMan\Women Must be Entered"></asp:RequiredFieldValidator>
        &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label13" runat="server" Text="Inward_Date:-"></asp:Label>
                </td>
                <td class="style3">
        <asp:TextBox ID="txtinward_date" runat="server" Height="22px" Width="121px"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtinward_date" ErrorMessage="*" 
            ToolTip="Inward Date Must be Entered"></asp:RequiredFieldValidator>
        &nbsp;</td>
                <td class="style4">
        <asp:Label ID="Label14" runat="server" Text="Phone_Number:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtphone_number" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
            ControlToValidate="txtphone_number" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtphone_number" ErrorMessage="*" 
            ToolTip="Phone Number Must be Entered" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
        <asp:Label ID="Label4" runat="server" Text="Item_Code"></asp:Label>
                </td>
                <td class="style3">
        <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="style4">
        <asp:Label ID="Label6" runat="server" Text="Size"></asp:Label>
                </td>
                <td>
        <asp:Label ID="Label7" runat="server" Text="Ward"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
        <asp:TextBox ID="txtitem_code" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtitem_code" ErrorMessage="*" 
            ToolTip="Item Code Must be Entered"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
        <asp:TextBox ID="txtname" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtname" ErrorMessage="*" ToolTip="Name Must be Entered"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtsize" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtsize" ErrorMessage="*" 
            ToolTip="WasherMan\Women Must be Entered"></asp:RequiredFieldValidator>
                </td>
                <td>
        <asp:TextBox ID="txtward" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtward" ErrorMessage="*" 
            ToolTip="WasherMan\Women Must be Entered"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
        <asp:Label ID="Label8" runat="server" Text="Qty_Given"></asp:Label>
                </td>
                <td class="style3">
        <asp:Label ID="Label9" runat="server" Text="Rate"></asp:Label>
                </td>
                <td class="style4">
        <asp:Label ID="Label10" runat="server" Text="Received_date"></asp:Label>
                </td>
                <td>
        <asp:Label ID="Label11" runat="server" Text="Received_Qty"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
        <asp:TextBox ID="txtqty_given" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtqty_given" ErrorMessage="*" 
            ToolTip="WasherMan\Women Must be Entered"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="txtqty_given" ErrorMessage="*" ToolTip="only numeric value" 
            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style3">
        <asp:TextBox ID="txtrate" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="txtrate" ErrorMessage="*" 
            ToolTip="WasherMan\Women Must be Entered"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="txtrate" ErrorMessage="*" ToolTip="only numeric value" 
            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtreceived_date" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="txtreceived_date" ErrorMessage="*" 
            ToolTip="WasherMan\Women Must be Entered"></asp:RequiredFieldValidator>
                </td>
                <td>
        <asp:TextBox ID="txtreceived_qty" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="txtreceived_qty" ErrorMessage="*" 
            ToolTip="WasherMan\Women Must be Entered"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label12" runat="server" Text="Washing_Amount:-"></asp:Label>
                </td>
                <td class="style3">
        <asp:TextBox ID="txtwashing_amount" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ControlToValidate="txtwashing_amount" ErrorMessage="*" 
            ToolTip="WasherMan\Women Must be Entered"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="txtwashing_amount" ErrorMessage="*" 
            ToolTip="only numeric value" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        &nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp; &nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<br />
&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<br />
        <br />
        <center><asp:Button ID="Button1" runat="server" Text="Insert" BackColor="#009900" 
            ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Update" BackColor="#009900" 
            ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Delete" BackColor="#009900" 
            ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Search" BackColor="#009900" 
            ForeColor="White" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Clear" BackColor="#009900" 
            ForeColor="White" /></center>
&nbsp;&nbsp;&nbsp;
    
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" Width="1181px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>

<br />
<br />
<br />
<br />



    
</asp:Panel> 
</asp:content>

    

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">	




    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 164px;
        }
        .style3
        {
            width: 157px;
        }
        .style4
        {
            width: 188px;
        }
    </style>
    </asp:Content>