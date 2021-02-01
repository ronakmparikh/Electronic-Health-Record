<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="Doctor Visit Charge.aspx.vb" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="414px" 
        Width="1171px">
<asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Link Page/Link Page.aspx" CausesValidation="False" 
            Font-Bold="True">HOME</asp:LinkButton>
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
       <center style="text-align: justify"> 
           <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="White" Text="Doctor Visit Charge" BackColor="#009900"></asp:Label></center>
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
      
            <asp:Label ID="Label11" runat="server" Text="Doctor:-" ForeColor="Blue" 
            Font-Bold="True" Font-Size="Small"></asp:Label>
            &nbsp;</td>
                <td class="style3">
                    <asp:TextBox ID="txtdoctor" runat="server" Height="22px" 
            Width="121px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtdoctor" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
            <asp:Label ID="Label12" runat="server" ForeColor="Blue" Text="Rate:-" 
            Font-Bold="True" Font-Size="Small"></asp:Label>
            &nbsp;</td>
                <td class="style4">
                    <asp:TextBox ID="txtrate" runat="server" Height="22px" Width="121px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtrate" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;</td>
                <td class="style6">
            <asp:RadioButton ID="RadioButton6" runat="server" Font-Bold="False" 
                Font-Size="Small" ForeColor="Blue" Text="Routine" />
                </td>
                <td>
            <asp:RadioButton ID="RadioButton7" runat="server" Font-Bold="False" 
                Font-Size="Small" ForeColor="Blue" Text="Emergency" />
      
                </td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<center><asp:Button ID="Button7" runat="server" Text="Insert" Width="58px" BackColor="#009900" 
            ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button9" runat="server" Text="Update" 
            BackColor="#009900" ForeColor="White" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button8" runat="server" Text="Delete" 
            BackColor="#009900" ForeColor="White" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button10" runat="server" 
            Text="Search" BackColor="#009900" ForeColor="White" 
            CausesValidation="False" />

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button11" runat="server" Text="Clear" 
            BackColor="#009900" ForeColor="White" /></center>

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
    
   </asp:panel>
   </asp:content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
<style type="text/css">
            .style1
            {
                width: 100%;
            }
            .style2
            {
                width: 72px;
            }
            .style3
            {
                width: 144px;
            }
            .style4
            {
                width: 148px;
            }
            .style5
            {
                width: 56px;
            }
            .style6
            {
                width: 75px;
            }
        </style>
        </asp:content>