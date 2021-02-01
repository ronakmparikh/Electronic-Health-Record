<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Medicine_supplyer.aspx.vb" Inherits="Inventory_Medical_store_Purchase_Return" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel8" runat="server" Height="944px" 
    Width="1171px" style="margin-right: 0px; margin-left: 70px;" 
        BorderStyle="None" ScrollBars="Auto">
    
        &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
            PostBackUrl="~/infrastructure/hospital_page.aspx">Home</asp:LinkButton>
        &nbsp;&gt;<asp:LinkButton ID="LinkButton2" runat="server" 
            CausesValidation="False" PostBackUrl="~/Link Page/Medical store.aspx">Medical store</asp:LinkButton>
        &nbsp;&gt;Medicine 
        Supplier&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
  <center>      <asp:Label ID="Label1" runat="server" BackColor="#009900" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="White" Text="Medicine Supplier"></asp:Label></center>
        <br />
        <br />
        <table align="center" class="style1">
            <tr>
                <td class="style5">
                    <asp:Label ID="lblfather_name0" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Supplier Code"></asp:Label>
                    s</td>
                <td class="style10">
                    <asp:TextBox ID="txtsupplier_code" runat="server" Height="22px" Width="121px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:Label ID="lblfather_name9" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Supplier Name"></asp:Label>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtsupplier_name" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtsupplier_name" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="lblfather_name1" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Type"></asp:Label>
                </td>
                <td class="style10">
                    &nbsp;<asp:DropDownList ID="ddltype" runat="server" Height="22px" Width="117px">
                        <asp:ListItem>Select type</asp:ListItem>
                        <asp:ListItem>Dealer</asp:ListItem>
                        <asp:ListItem>Manufacturer</asp:ListItem>
                        <asp:ListItem>Reatailer</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="ddltype" ErrorMessage="*" InitialValue="Select type" 
                        ToolTip="Select type"></asp:RequiredFieldValidator>
                </td>
                <td class="style7">
                    <asp:Label ID="lblfather_name2" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Address"></asp:Label>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtaddress" runat="server" Height="30px" TextMode="MultiLine" 
                        Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtaddress" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="lblfather_name3" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Pan No"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="txtpan_no" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txtpan_no" ErrorMessage="*" 
                        ToolTip="Give Supplier pan no in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtpan_no" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style7">
                    <asp:Label ID="lblfather_name4" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Tax(%)"></asp:Label>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txttax" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                        runat="server" ControlToValidate="txttax" ErrorMessage="*" 
                        ToolTip="Give Supplier code in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txttax" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="lblfather_name5" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Vat No"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtvat_no" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="txtvat_no" ErrorMessage="*" 
                        ToolTip="Give Supplier vot no in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtvat_no" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style8">
                    <asp:Label ID="lblfather_name7" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Line No"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtline_no" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                        ControlToValidate="txtline_no" ErrorMessage="*" 
                        ToolTip="Give line no in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtline_no" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="lblfather_name8" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Line Balance Amt"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="txtline_balance_amount" runat="server" Height="22px" 
                        Width="121px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                        ControlToValidate="txtline_balance_amount" ErrorMessage="*" 
                        ToolTip="Give balance amt in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtline_balance_amount" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style7">
                    <asp:Label ID="lblfather_name6" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Mode Of Delivery"></asp:Label>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtmode_of_delivery" runat="server" Height="22px" 
                        Width="121px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                        ControlToValidate="txtmode_of_delivery" ErrorMessage="*" 
                        ToolTip="Give Supplier mode of delivary in numerical form" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtmode_of_delivery" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table align="center" class="style9">
            <tr>
                <td class="style12">
                    <asp:Button ID="btninsert" runat="server" BackColor="#009900" Font-Bold="True" 
                        ForeColor="White" style="margin-left: 0px" Text="Add" Width="77px" />
                </td>
                <td class="style13">
                    <asp:Button ID="btnupdate" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Update" 
                        Width="77px" />
                </td>
                <td class="style14">
                    <asp:Button ID="btndelete" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Delete" 
                        Width="77px" />
                </td>
                <td class="style15">
                    <asp:Button ID="btnsearch" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Search" 
                        Width="77px" />
                </td>
                <td class="style16">
                    <asp:Button ID="btnsearch0" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" 
                        PostBackUrl="~/Medical store report/Supplier_report.aspx" Text="View Report" 
                        Width="104px" />
                </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Button ID="btnfirst" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&lt;&lt;" 
                        Width="77px" />
                </td>
                <td class="style13">
                    <asp:Button ID="btnpre" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&lt;" 
                        Width="77px" />
                </td>
                <td class="style14">
                    <asp:Button ID="btnforward" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&gt;" 
                        Width="77px" />
                </td>
                <td class="style15">
                    <asp:Button ID="btnlast" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&gt;&gt;" 
                        Width="77px" />
                </td>
                <td class="style16">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
        <br />
    <center>    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2">
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView></center>
        <br />
        <br />
        <br />
    
 </asp:Panel>
 </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    
    <style type="text/css">
        .style1
        {
            width: 53%;
        }
        .style2
        {
            height: 1px;
            width: 248px;
        }
        .style5
        {
            width: 138px;
        }
        .style6
        {
            height: 1px;
            width: 138px;
        }
        .style7
        {
            width: 135px;
        }
        .style8
        {
            height: 1px;
            width: 135px;
        }
        .style9
        {
            width: 54%;
            margin-left: 308px;
        }
        .style10
        {
            width: 185px;
        }
        .style11
        {
            height: 1px;
            width: 185px;
        }
        .style12
        {
            width: 91px;
        }
        .style13
        {
            width: 99px;
        }
        .style14
        {
            width: 90px;
        }
        .style15
        {
            width: 88px;
        }
        .style16
        {
            width: 531px;
        }
        .style17
        {
            width: 248px;
        }
    </style>


</asp:Content>
