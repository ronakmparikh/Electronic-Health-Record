﻿<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="c_arm_chrg.aspx.vb" Inherits="Hospital_wish_profile_managment_c_arm_chrg" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="414px" 
        Width="1171px">
<asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Link Page/Link Page.aspx" CausesValidation="False" 
            Font-Bold="True">HOME</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <center>  <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="White" Text="EQUIPMENT CHARGES:  &quot;C&quot; ARM CHARGES" 
            BackColor="#009900"></asp:Label></center>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
        <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Code:-"></asp:Label>
&nbsp;</td>
                <td class="style3">
                    <asp:TextBox ID="txtcode" runat="server" Height="22px" Width="121px" 
                        style="margin-left: 0px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="txtcode" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
&nbsp;<asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Service:-"></asp:Label>
        &nbsp; 
                </td>
                <td class="style5">
        <asp:TextBox ID="txtservice" runat="server" Width="268px" 
            Height="22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtservice" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style6">
        <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Rate:-"></asp:Label>
&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtrate" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtrate" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    

<br />
<br />
    
    </asp:Panel> 
    </asp:Content>
    <asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 50px;
        }
        .style3
        {
            width: 143px;
        }
        .style4
        {
            width: 76px;
        }
        .style5
        {
            width: 294px;
        }
        .style6
        {
            width: 53px;
        }
    </style>
    </asp:Content>