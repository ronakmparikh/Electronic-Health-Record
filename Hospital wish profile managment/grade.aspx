<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="grade.aspx.vb" Inherits="Default13" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="414px" 
        Width="1171px">
<asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Link Page/Link Page.aspx" CausesValidation="False" 
            Font-Bold="True">HOME</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <center>    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="White" Text="GRADE WISH OPERATION CHARGES" BackColor="#009900"></asp:Label></center>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
        <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Code:-"></asp:Label>
&nbsp;</td>
                <td class="style3">
                    <asp:TextBox ID="txtcode" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtcode" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>

                </td>
                <td class="style2">

        <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="GRADE"></asp:Label>
&nbsp;</td>
                <td class="style4">
                    <asp:DropDownList ID="ddlgrade" runat="server" Height="22px">
            <asp:ListItem Selected="True">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtrate" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
        
        <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="CLASS"></asp:Label>
&nbsp;</td>
                <td class="style6">
                    <asp:DropDownList ID="ddlclass" runat="server" Height="22px">
            <asp:ListItem Selected="True">A</asp:ListItem>
            <asp:ListItem>B</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>D</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="ddlclass" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style6">
        <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Rate:-"></asp:Label>
&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtrate" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtrate" ErrorMessage="*" 
            ToolTip="Feild Cannot Be Left Blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />

        &nbsp;
        &nbsp;&nbsp;&nbsp;
        
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
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
            width: 58px;
        }
        .style3
        {
            width: 141px;
        }
        .style4
        {
            width: 67px;
        }
        .style5
        {
            width: 43px;
        }
        .style6
        {
            width: 53px;
        }
    </style>
    </asp:content>