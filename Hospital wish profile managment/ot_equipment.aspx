<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="ot_equipment.aspx.vb" Inherits="Hospital_wish_profile_managment_ot_equipment" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="414px" 
        Width="1171px">

<asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Link Page/Link Page.aspx" CausesValidation="False" 
            Font-Bold="True">HOME</asp:LinkButton>    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <center> <asp:Label ID="Label1" runat="server" BackColor="#009900" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="White" Text="OPERATIONC THREATOR: EQUIPMENT"></asp:Label></center>
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Code:-"></asp:Label>
                </td>
                <td class="style3">
        <asp:TextBox ID="txtcode" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtcode" ErrorMessage="*" ToolTip="feild required"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Particular:-"></asp:Label>
                </td>
                <td class="style5">
        <asp:TextBox ID="txtparticular" runat="server" Width="348px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtparticular" ErrorMessage="*" ToolTip="feild required"></asp:RequiredFieldValidator>
                </td>
                <td class="style6">
        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Blue" 
            Text="Rate:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtrate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtrate" ErrorMessage="*" ToolTip="feild required"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <center>       <asp:Button ID="Button1" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Insert" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Delete" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Search" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Clear" /></center>


    
    
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
            width: 35px;
        }
        .style3
        {
            width: 136px;
        }
        .style4
        {
            width: 65px;
        }
        .style5
        {
            width: 356px;
        }
        .style6
        {
            width: 43px;
        }
    </style>
    </asp:content>