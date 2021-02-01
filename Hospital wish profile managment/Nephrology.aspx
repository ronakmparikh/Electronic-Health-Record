<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="Nephrology.aspx.vb" Inherits="Default32" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="414px" 
        Width="1171px">
<asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Link Page/Link Page.aspx" CausesValidation="False" 
            Font-Bold="True">HOME</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <center> <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="White" Text="NEPHROLOGY" BackColor="#009900"></asp:Label></center>
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Code:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtcode" runat="server" Width="121px" Height="22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtcode" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Service:-"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtservice" runat="server" Width="208px" Height="22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtservice" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style6">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Type of Room:-"></asp:Label>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddltype_of_room" runat="server" Height="22px">
            <asp:ListItem>General Ward</asp:ListItem>
            <asp:ListItem>Semi Special &amp; Special Non AC</asp:ListItem>
            <asp:ListItem>Semi Special &amp; Special AC</asp:ListItem>
            <asp:ListItem>ICU Isolatior, ICU, Sult</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="ddltype_of_room" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style8">
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Rate:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtrate" runat="server" Width="121px" 
            Height="22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtrate" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            width: 51px;
        }
        .style3
        {
            width: 134px;
        }
        .style4
        {
            width: 53px;
        }
        .style5
        {
            width: 226px;
        }
        .style6
        {
            width: 91px;
        }
        .style7
        {
            width: 220px;
        }
        .style8
        {
            width: 50px;
        }
    </style>
    </asp:content>