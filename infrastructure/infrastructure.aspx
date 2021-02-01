<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="infrastructure.aspx.vb" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="451px" 
        Width="1171px">
        <br />
&nbsp;
        <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
            Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx">&lt;&lt; HOME</asp:LinkButton>
        <br />
        <br />
&nbsp;
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label9" runat="server" BackColor="#009900" Font-Bold="True" 
                        Font-Size="X-Large" ForeColor="White" Text="DEPARTMENT AND ACCOMONDATION"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <br />
            <br />
            <table class="style1">
                <tr>
                    <td class="style3">
            <asp:Label ID="lbldep" runat="server" Font-Bold="True" Text=" Deparments:-" 
                Font-Size="Small" ForeColor="Blue"></asp:Label>
                    </td>
                    <td class="style2">
            <asp:DropDownList ID="ddldepartment" runat="server" Height="23px" Width="132px">
                <asp:ListItem>Select Department</asp:ListItem>
                <asp:ListItem>Gynecology</asp:ListItem>
                <asp:ListItem>Pediatric</asp:ListItem>
                <asp:ListItem>Medicine</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddldepartment"
            ErrorMessage="*" InitialValue="Select Department" ToolTip="Department Must Be Selected"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="IPD :-" 
                Font-Size="Small" ForeColor="Blue"></asp:Label>
                    </td>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Label ID="lbltyp" 
                runat="server" Text="Type" Font-Size="Small" 
                ForeColor="Black"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="lblroo" runat="server" Text="Number of Room" Font-Size="Small" 
                ForeColor="Black"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="lblbed" runat="server" Text="Number of Bed" Font-Size="Small" 
                ForeColor="Black"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblare" runat="server" Text="Area" Font-Size="Small" 
                ForeColor="Black"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="lblpba" runat="server" Text="Per Bed Area" Font-Size="Small" 
                ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:DropDownList 
                ID="ddltype" runat="server" Height="33px" Width="136px">
    <asp:ListItem>Select IPD</asp:ListItem>
                <asp:ListItem>General Ward</asp:ListItem>
                <asp:ListItem>Sharing Ward</asp:ListItem>
                <asp:ListItem>Private Ward</asp:ListItem>
                <asp:ListItem>AC Sharing</asp:ListItem>
                <asp:ListItem>AC Private</asp:ListItem>
                <asp:ListItem>ICU</asp:ListItem>
                <asp:ListItem>Recovery</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddltype"
            ErrorMessage="*" InitialValue="Select IPD" ToolTip="IPD Type Must Be Selected"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtroom" runat="server" Width="43px" 
                Height="22px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
            ControlToValidate="txtroom" ErrorMessage="*" ToolTip="Room Must Be Entered" Width="8px"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtroom" ErrorMessage="*" ToolTip="numeric value only" 
                ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtbed" runat="server" Width="43px" Height="22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtbed"
            ErrorMessage="*" ToolTip="Number Of Bed Must Be Entered"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtbed" ErrorMessage="*" ToolTip="numeric value only" 
                ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtarea" runat="server" 
                Width="93px" Height="22px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txtarea" ErrorMessage="*" ToolTip="VALUE REQUIRED"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                runat="server" ControlToValidate="txtarea" ErrorMessage="*" 
                ToolTip="numeric value only" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                    <td>
            <asp:TextBox ID="txtpba" runat="server" Width="93px" 
                Height="22px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
            <asp:Label ID="lblopd" runat="server" Font-Bold="True" Text="OPD :" 
                Font-Size="Small" ForeColor="Blue"></asp:Label>
                    </td>
                    <td class="style2">
            <asp:DropDownList ID="ddlopd" runat="server" Height="30px" Width="136px">
                <asp:ListItem>Select OPD</asp:ListItem>
                <asp:ListItem>Consulting Room</asp:ListItem>
                <asp:ListItem>Admin Rooms</asp:ListItem>
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlopd"
            ErrorMessage="*" InitialValue="Select OPD" ToolTip="OPD Must Be Selected"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
        </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                BackColor="#009900" ForeColor="White" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Delete" BackColor="#009900" 
                ForeColor="White" />

            
   
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
            width: 476px;
            margin-left: 49px;
            height: 56px;
            margin-right: 118px;
            margin-top: 0px;
        }
        .style2
        {
            width: 304px;
        }
        .style3
        {
            width: 89px;
        }
    </style>
    
    </asp:Content>