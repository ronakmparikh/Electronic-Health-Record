<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Medicine_master.aspx.vb" Inherits="Inventory_Medical_store_Purchase_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:Panel ID="Panel1" runat="server" Height="945px" 
    Width="1171px" style="margin-right: 54px; margin-left: 70px;" 
        BorderStyle="None"  ScrollBars="Auto">
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
            CausesValidation="False" PostBackUrl="~/infrastructure/hospital_page.aspx">Home</asp:LinkButton>
        &nbsp;&gt;<asp:LinkButton ID="LinkButton2" runat="server" 
            PostBackUrl="~/Link Page/Medical store.aspx">Medical store</asp:LinkButton>
        &nbsp;&gt;Medicine Store&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="#009900" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="White" Text="Medicine Store"></asp:Label>
        <br />
        <table align="center" class="style1">
            <tr>
                <td class="style8">
                    <asp:Label ID="lblfather_name18" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Medicine id"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtmedicine_id" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="txtmedicine_id" ErrorMessage="*" ToolTip="require Medicine"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    <asp:Label ID="lblfather_name1" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Name Of Medicine"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmedicine_name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtmedicine_name" ErrorMessage="*" 
                        ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblfather_name2" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Company Name"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtcompany_name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtcompany_name" ErrorMessage="*" 
                        ToolTip="Give Company name  text format"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="lblfather_name3" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Company Address"></asp:Label>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtcompany_address" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txtcompany_address" ErrorMessage="*" 
                        ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblfather_name4" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Purchase Date"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtpurchase_date" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtpurchase_date" ErrorMessage="*" 
                        ToolTip="Give Batch no  in text format"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    <asp:Label ID="lblfather_name5" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="MFG Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmfg_date" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtmfg_date" ErrorMessage="*" 
                        ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblfather_name6" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Batch No"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtbatch_no" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtbatch_no" ErrorMessage="*" 
                        ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="lblfather_name7" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="LOT No"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtlotno" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtlotno" ErrorMessage="*" ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblfather_name8" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Expiry Date"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtexpiry_date" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtexpiry_date" ErrorMessage="*" 
                        ToolTip="Give Expir Datey  text format"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    <asp:Label ID="lblfather_name9" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Medicine-Grade"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlmedicine_grade" runat="server" Width="169px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Tab</asp:ListItem>
                        <asp:ListItem>Capsule</asp:ListItem>
                        <asp:ListItem>Liquid</asp:ListItem>
                        <asp:ListItem>Ointment</asp:ListItem>
                        <asp:ListItem>Cream base</asp:ListItem>
                        <asp:ListItem>Injection</asp:ListItem>
                        <asp:ListItem>Saline</asp:ListItem>
                        <asp:ListItem>Consumables</asp:ListItem>
                        <asp:ListItem>Implant</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="ddlmedicine_grade" ErrorMessage="*" InitialValue="Select" 
                        ToolTip="select medicine grade"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblfather_name10" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="U.O.M"></asp:Label>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddluom" runat="server" Width="132px">
                        <asp:ListItem Selected="True">Select UOM</asp:ListItem>
                        <asp:ListItem>GM</asp:ListItem>
                        <asp:ListItem>MG</asp:ListItem>
                        <asp:ListItem>KG</asp:ListItem>
                        <asp:ListItem>LT</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                        ControlToValidate="ddluom" ErrorMessage="*" InitialValue="Select UOM" 
                        ToolTip="select UOM"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    <asp:Label ID="lblfather_name11" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Quantity"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtquantity" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtquantity" ErrorMessage="*" 
                        ToolTip="Give Quantity in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtquantity" ErrorMessage="*" 
                        ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblfather_name12" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Rate"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtrate" runat="server"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                        runat="server" ControlToValidate="txtrate" ErrorMessage="*" 
                        ToolTip="Give Quantity in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtrate" ErrorMessage="*" ToolTip="Give rate  text format"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="lblfather_name13" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Tax-Rate"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttax_rate" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txttax_rate" ErrorMessage="*" 
                        ToolTip="Give Quantity in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txttax_rate" ErrorMessage="*" 
                        ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblfather_name14" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Min-Level"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtmin_level" runat="server"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                        runat="server" ControlToValidate="txtmin_level" ErrorMessage="*" 
                        ToolTip="Give Quantity in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtmin_level" ErrorMessage="*" 
                        ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;</td>
                <td class="style3">
                    <asp:Label ID="lblfather_name15" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="ABC CLassification"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtabc_classification" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="txtabc_classification" ErrorMessage="*" 
                        ToolTip="Give abc classification  text format"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblfather_name16" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Max-Level"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtmax_level" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                        runat="server" ControlToValidate="txtmax_level" ErrorMessage="*" 
                        ToolTip="Give Quantity in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtmax_level" ErrorMessage="*" 
                        ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;</td>
                <td class="style3">
                    <asp:Label ID="lblfather_name17" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Re Order-Level"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtreader_level" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="txtreader_level" ErrorMessage="*" 
                        ToolTip="Give Quantity in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtreader_level" ErrorMessage="*" 
                        ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                    <asp:Button ID="btninsert" runat="server" BackColor="#009900" Font-Bold="True" 
                        ForeColor="White" Text="Add" Width="77px" />
                </td>
                <td class="style9">
                    <asp:Button ID="btnupdate" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Update" 
                        Width="77px" />
                </td>
                <td class="style10">
                    <asp:Button ID="btndelete" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Delete" 
                        Width="77px" />
                </td>
                <td class="style5">
                    <asp:Button ID="btnsearch" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Search" 
                        Width="77px" />
                </td>
                <td class="style6">
                    <asp:Button ID="btnsearch0" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" 
                        PostBackUrl="~/Medical store report/Medcine_report.aspx" Text="View Report" 
                        Width="104px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnfirst" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&lt;&lt;" 
                        Width="77px" />
                </td>
                <td class="style9">
                    <asp:Button ID="btnpre" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&lt;" 
                        Width="77px" />
                </td>
                <td class="style10">
                    <asp:Button ID="btnforward" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" 
                        style="height: 26px" Text="&gt;" Width="77px" />
                </td>
                <td class="style5">
                    <asp:Button ID="btnlast" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&gt;&gt;" 
                        Width="77px" />
                </td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
      </table>
        <br />
        <br />
        <center>
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2" Width="586px">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
      </center>
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
            width: 40px;
        }
        .style3
        {
            width: 152px;
        }
        .style5
        {
            width: 82px;
        }
        .style6
        {
            width: 231px;
        }
        .style7
        {
            width: 233px;
        }
        .style8
        {
            width: 147px;
        }
        .style9
        {
            width: 14px;
        }
        .style10
        {
            width: 37px;
        }
    </style>


</asp:Content>
 

