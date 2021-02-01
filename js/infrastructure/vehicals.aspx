<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="vehicals.aspx.vb" Inherits="vehicals" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="523px" 
        Width="1171px">
    
        &nbsp;
        <asp:LinkButton ID="LinkButton13" runat="server" 
            PostBackUrl="~/Link Page/Link Page.aspx">&lt;&lt;Home</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="#009933" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="White" Text="Vehichal Master"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style8">
        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Medium" 
            ForeColor="Blue" Text="Vehicle No:-"></asp:Label>
                </td>
                <td class="style7">
        <asp:TextBox ID="txtvehical_no" runat="server" Height="22px" Width="121px"></asp:TextBox><asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtvehical_no"
            ErrorMessage="*" ToolTip="Vehical No. Must Be Enter"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="Medium" 
            ForeColor="Blue" Text="Vehicle Name:-"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtvehical_name" runat="server" Height="22px" 
            Width="121px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                runat="server" ControlToValidate="txtvehical_name" ErrorMessage="*" ToolTip="Vehical Name Must Be Enter"></asp:RequiredFieldValidator>
                </td>
                <td class="style6">
        <asp:Label ID="Label4" runat="server" Text="Vehical Make:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtvehical_make" runat="server" Height="22px" 
            Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtvehical_make"
            ErrorMessage="*" ToolTip="Vehical Make Date Must Be Enter"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
        <asp:Label ID="Label5" runat="server" Text="Purchase Date:-"></asp:Label>
                </td>
                <td class="style7">
        <asp:TextBox ID="txtpurchase_date" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpurchase_date"
            ErrorMessage="*" ToolTip="Purchase Date Must Be Enter"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
        <asp:Label ID="Label6" runat="server" Text="RTO Registration No:-"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txttoregistrationnumber" runat="server" Height="22px" 
            Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txttoregistrationnumber"
            ErrorMessage="*" ToolTip="RTO Registration No. Must Be Enter"></asp:RequiredFieldValidator>
                </td>
                <td class="style6">
                    <asp:Label ID="Label7" runat="server" Text="Driver Code:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtdriver_code" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtdriver_code"
            ErrorMessage="*" ToolTip="Driver Code Must Be Enter"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
        <asp:Label ID="Label8" runat="server" Text="Driver Name:-"></asp:Label>
                </td>
                <td class="style7">
        <asp:TextBox ID="txtdrivername" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtdrivername"
            ErrorMessage="*" ToolTip="Driver Name Must Be Enter"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
        <asp:Label ID="Label9" runat="server" Text="Driver Lisence No:-"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtdriver_lisence_number" runat="server" Height="22px" 
            Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtdriver_lisence_number"
            ErrorMessage="*" ToolTip="Driver Lisence No. Must Be Enter"></asp:RequiredFieldValidator>
                </td>
                <td class="style6">
                    <asp:Label ID="Label10" runat="server" Text="Teretory Code:-"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlteretory_code" runat="server" Height="22px" 
            Width="121px">
            <asp:ListItem>Select Code</asp:ListItem>
            <asp:ListItem>Local/In Station</asp:ListItem>
            <asp:ListItem>Out station</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlteretory_code"
            ErrorMessage="*" ToolTip="Teretory Code Must Be Select"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
        <asp:Label ID="Label11" runat="server" Text="Km From:-"></asp:Label>
                </td>
                <td class="style7">
        <asp:TextBox ID="txtkm_from" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtkm_from"
            ErrorMessage="*" ToolTip="Km From Must Be Enter"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    <asp:Label ID="Label12" runat="server" Text="Km To:-"></asp:Label>
                </td>
                <td class="style5">
        <asp:TextBox ID="txtkm_to" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtkm_to"
            ErrorMessage="*" ToolTip="Km To Must Be Enter"></asp:RequiredFieldValidator>
                </td>
                <td class="style6">
                    <asp:Label ID="Label13" runat="server" Text="Engine No:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtengine_no" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtengine_no"
            ErrorMessage="*" ToolTip="Engine No. Must Be Enter"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
        <asp:Label ID="Label14" runat="server" Text="Chares No:-"></asp:Label>
                </td>
                <td class="style7">
        <asp:TextBox ID="txtchares_no" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtchares_no"
            ErrorMessage="*" ToolTip="Chares No. Must Be Enter"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
        <asp:Label ID="Label16" runat="server" Text="Date From:-"></asp:Label>
                </td>
                <td class="style5">
        <asp:TextBox ID="txtdate_from" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtdate_from"
            ErrorMessage="*" ToolTip="Date From Must Be Enter"></asp:RequiredFieldValidator>
                </td>
                <td class="style6">
        <asp:Label ID="Label17" runat="server" Text="Date To:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtdate_to" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtdate_to"
            ErrorMessage="*" ToolTip="Date To Must Be Enter"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
        <asp:Label ID="Label15" runat="server" Text="Insurance Policy No:-"></asp:Label>
                </td>
                <td class="style7">
        <asp:TextBox ID="txtinsurance_policy_no" runat="server" Height="22px" 
            Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtinsurance_policy_no"
            ErrorMessage="*" ToolTip="Insurance Policy No. Must Be Enter"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    <asp:Label ID="Label18" runat="server" Text="Primimum Amt.:-"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtprimimum_amt" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtprimimum_amt"
            ErrorMessage="*" ToolTip="Primimum Amount Must Be Enter"></asp:RequiredFieldValidator>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style7">

        <asp:Button ID="Btnadd" runat="server" BackColor="#009900" ForeColor="White" 
            Height="25px" Text="Add" Width="50px" />
                </td>
                <td class="style4">
        <asp:Button ID="Btnupdate" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Update" />
                </td>
                <td class="style5">
        <asp:Button ID="Btndelete" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Delete" />
                </td>
                <td class="style6">
        <asp:Button ID="Btnsearch" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Search" CausesValidation="False" />
                </td>
                <td>
        <asp:Button ID="Btnreset" runat="server" BackColor="#009900" ForeColor="White" 
            Text="Reset" />
    
    
                </td>
            </tr>
        </table>
     
        &nbsp;<br />
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
        {}
        .style4
        {
            width: 149px;
        }
        .style5
        {
            width: 133px;
        }
        .style6
        {
            width: 128px;
        }
        .style7
        {
            width: 141px;
        }
        .style8
        {
            width: 139px;
        }
    </style>
    </asp:content>