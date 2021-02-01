<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="Chemothrapy_Charge.aspx.vb" Inherits="Chemothrapy_Charge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="414px" 
        Width="1171px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;
        <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
            Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx">&lt;&lt; HOME</asp:LinkButton>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="#009900" Font-Size="X-Large" 
            ForeColor="White" Text="Chemothrapy Charge"></asp:Label>
       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        <br />

        <br />
<br />
<br />
        <table class="style1">
            <tr>
                <td class="style2">
        <asp:Label ID="Label2" runat="server" Text="Code:-"></asp:Label>
                </td>
                <td class="style16">
        <asp:TextBox ID="txtcode" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtcode" ErrorMessage="*" ToolTip="feild required"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
        <asp:Label ID="Label5" runat="server" Text="Services:-"></asp:Label>
                </td>
                <td class="style18">
                    <asp:TextBox ID="txtservices" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtservices" ErrorMessage="*" ToolTip="feild required"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
        <asp:Label ID="Label3" runat="server" Text="Room Type:-"></asp:Label>
                </td>
                <td class="style20">
        <asp:DropDownList ID="ddlroomtype" runat="server" Height="22px" Width="121px">
            <asp:ListItem>Select Room</asp:ListItem>
            <asp:ListItem>A</asp:ListItem>
            <asp:ListItem>B</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>D</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
                </td>
                <td class="style7">
        <asp:Label ID="Label6" runat="server" Text="Rate:-"></asp:Label>
                </td>
                <td class="style15">
        <asp:TextBox ID="txtrate" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtrate" ErrorMessage="*" ToolTip="feild required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtrate" ErrorMessage="*" ToolTip="numeric value only" 
            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                </td>
                <td class="style17">
</td>
                    <td class="style10">
<center>
        <asp:Button ID="btninsert" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Insert" /></center>
                    </td>
                    <td class="style19">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <center>
        <asp:Button ID="btnupdate" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Update" /></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="style11">
                    <center>
        <asp:Button ID="btndelete" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Delete" /></center>
                    </td>
                    <td class="style21">
          <center>          
        <asp:Button ID="btnsearch" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Search" /></center>
                    </td>
                    <td class="style13">
         <center>                     
        <asp:Button ID="btnreset" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Reset" /></center>
                    </td>
                    <td class="style14">
                    </td>
                </tr>
            </table>
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
            width: 912px;
            height: 111px;
        }
        .style2
        {
            width: 56px;
        }
        .style4
        {
            width: 67px;
        }
        .style5
        {
            width: 82px;
        }
        .style7
        {
            width: 18px;
        }
        .style8
        {
            width: 56px;
            height: 59px;
        }
        .style10
        {
            width: 67px;
            height: 59px;
        }
        .style11
        {
            width: 82px;
            height: 59px;
        }
        .style13
        {
            width: 18px;
            height: 59px;
        }
        .style14
        {
            height: 59px;
            width: 158px;
        }
        .style15
        {
            width: 158px;
        }
        .style16
        {
            width: 136px;
        }
        .style17
        {
            width: 136px;
            height: 59px;
        }
        .style18
        {
            width: 131px;
        }
        .style19
        {
            width: 131px;
            height: 59px;
        }
        .style20
        {
            width: 113px;
        }
        .style21
        {
            width: 113px;
            height: 59px;
        }
    </style>
    </asp:Content>