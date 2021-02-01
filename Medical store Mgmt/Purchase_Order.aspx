<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Purchase_Order.aspx.vb" Inherits="Purchase_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel8" runat="server" Height="1068px" 
    Width="1171px" style="margin-right: 0px; margin-left: 70px;" 
        BorderStyle="None"  ScrollBars="Auto">
    
        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
            PostBackUrl="~/infrastructure/hospital_page.aspx">Home</asp:LinkButton>
        &nbsp;&gt;<asp:LinkButton ID="LinkButton2" runat="server" 
            CausesValidation="False" PostBackUrl="~/Link Page/Medical store.aspx">Medical store</asp:LinkButton>
        &nbsp;&gt;Purchase Order<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;<asp:Label ID="Label2" runat="server" BackColor="#009900" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="White" Text="Purchase Order "></asp:Label>
        <table align="center" class="style1">
            <tr>
                <td class="style12">
                    <asp:Label ID="lblfather_name0" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Purchase Order No:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtpono" runat="server" Height="22px" Width="121px"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="lblfather_name1" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Purchase Order Date:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtpodate" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtpodate" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="lblfather_name2" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Supplier Code:-"></asp:Label>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="ddlsuppliercode" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlsuppliercode" DataTextField="supplier_code" 
                        DataValueField="supplier_code" Width="132px" AppendDataBoundItems="True">
                        <asp:ListItem>choose supplier code</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="lblfather_name3" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Purchase Order Supplier Name:-"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtpo_supplier_name" runat="server" 
                        Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtpo_supplier_name" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;</td>
                <td class="style4">
                    <asp:Label ID="lblfather_name4" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Supplier Address:-"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtsupplier_address" runat="server" Height="22px" 
                        TextMode="MultiLine" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtsupplier_address" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="lblfather_name5" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Medicine_Code:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicinecode" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlmedicineid" DataTextField="Madicine_id" 
                        DataValueField="Madicine_id" Width="132px">
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:Label ID="lblfather_name6" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Description:-"></asp:Label>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="ddlmedicinename" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlddlmedicinename" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="132px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="lblfather_name15" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="U.O.M:-"></asp:Label>
                </td>
                <td class="style3">
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
                <td class="style4">
                    <asp:Label ID="lblfather_name7" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Quentity Purchase:-"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtquentity_purchase" runat="server" AutoPostBack="True" 
                        Height="22px" Width="121px"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                        runat="server" ControlToValidate="txtquentity_purchase" ErrorMessage="*" 
                        ToolTip="Give quentity purchase in numerical form" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtquentity_purchase" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="lblfather_name8" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Quantity Rate:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtquantity_rate" runat="server" AutoPostBack="True" 
                        Height="22px" Width="121px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                        ControlToValidate="txtquantity_rate" ErrorMessage="*" 
                        ToolTip="Give quantity rate in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtquantity_rate" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    <asp:Label ID="lblfather_name9" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Quantity Value:-"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtquantity_value" runat="server" Height="22px" 
                        ReadOnly="True" Width="121px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="lblfather_name10" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Vat(%):-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtvat" runat="server" AutoPostBack="True" Height="22px" 
                        Width="121px"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator8" 
                        runat="server" ControlToValidate="txtvat" ErrorMessage="*" 
                        ToolTip="Give vat  in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtvat" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    <asp:Label ID="lblfather_name11" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Vat Amount:-"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtvat_amount" runat="server" Height="22px" ReadOnly="True" 
                        Width="121px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="lblfather_name12" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Excise(%):-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtexcise" runat="server" AutoPostBack="True" Height="22px" 
                        Width="121px"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator9" 
                        runat="server" ControlToValidate="txtexcise" ErrorMessage="*" 
                        ToolTip="Give excise in numerical form" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtexcise" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    <asp:Label ID="lblfather_name13" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Excise Amount:-"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtexcise_amount" runat="server" Height="22px" ReadOnly="True" 
                        Width="121px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="lblfather_name14" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Net Purchase Order Amount:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtnetpurchase" runat="server" Height="22px" ReadOnly="True" 
                        Width="121px"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table align="center" class="style1">
            <tr>
                <td class="style7">
                    <asp:Button ID="btninsert" runat="server" BackColor="#009900" Font-Bold="True" 
                        ForeColor="White" Text="Add" Width="76px" />
                </td>
                <td class="style8">
                    <asp:Button ID="btnupdate" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" 
                        style="height: 26px" Text="Update" Width="77px" />
                </td>
                <td class="style9">
                    <asp:Button ID="btndelete" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Delete" 
                        Width="77px" />
                </td>
                <td class="style10">
                    <asp:Button ID="btnsearch" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Search" 
                        Width="77px" />
                </td>
                <td class="style11">
                    <asp:Button ID="btnsearch0" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" 
                        PostBackUrl="~/Medical store report/Purchse_report.aspx" Text="View Report" 
                        Width="104px" />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Button ID="btnfirst" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&lt;&lt;" 
                        Width="77px" />
                </td>
                <td class="style8">
                    <asp:Button ID="btnpre" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&lt;" 
                        Width="77px" />
                </td>
                <td class="style9">
                    <asp:Button ID="btnforward" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&gt;" 
                        Width="77px" />
                </td>
                <td class="style10">
                    <asp:Button ID="btnlast" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&gt;&gt;" 
                        Width="77px" />
                </td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <center>   <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
        <asp:SqlDataSource ID="Sqlsuppliercode" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_supplyer] WHERE ([Hospital_id] = @Hospital_id)">
            <SelectParameters>
                <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="Sqlmedicineid" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order]"></asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:SqlDataSource ID="Sqlddlmedicinename" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE ([Madicine_id] = @Madicine_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlmedicinecode" Name="Madicine_id" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
    
</asp:Panel>
</asp:content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    
    <style type="text/css">
        .style1
        {
            width: 56%;
        }
        .style3
        {
            width: 144px;
        }
        .style4
        {
            width: 142px;
        }
        .style7
        {
            width: 97px;
        }
        .style8
        {
            width: 112px;
        }
        .style9
        {
            width: 91px;
        }
        .style10
        {
            width: 117px;
        }
        .style11
        {
            width: 655px;
        }
        .style12
        {
            width: 162px;
        }
    </style>


</asp:Content>

