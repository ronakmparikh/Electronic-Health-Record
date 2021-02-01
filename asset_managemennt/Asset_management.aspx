<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Asset_management.aspx.vb" Inherits="asset_managemennt_Asset_management" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
        }
        .style4
        {
            width: 159px;
        }
        .style8
        {
            width: 159px;
            height: 32px;
        }
        .style10
        {
            height: 32px;
        }
        .style13
        {
            width: 142px;
        }
        .style14
        {
            width: 142px;
            height: 32px;
        }
        .style15
        {
            width: 141px;
        }
        .style16
        {
            width: 141px;
            height: 32px;
        }
        .style17
        {
            width: 173px;
        }
        .style18
        {
            width: 173px;
            height: 32px;
        }
    </style>
</head>

<body bgcolor="#ff9900">
    <form id="form1" runat="server" style="background-color: #FF9933">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;       
    <asp:Label ID="lblpersonal_details" runat="server" BackColor="#009900" 
            ForeColor="White" Text="Asset Management" Font-Size="X-Large" 
            Font-Bold="True"></asp:Label>
    
        &nbsp;<br />
        <table class="style1">
            <tr>
                <td class="style17">
        <asp:Label ID="lblfather_name46" runat="server" Font-Size="Large" 
            ForeColor="Blue" Text="Asset Details:-" Font-Bold="True"></asp:Label>
                </td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Label ID="lblfather_name18" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Asset Code:-"></asp:Label>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtasset_code" runat="server" Height="22px" Width="152px"></asp:TextBox>
                </td>
                <td class="style13">
        <asp:Label ID="lblfather_name19" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Asset Name:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtasset_name" runat="server" Height="22px" Width="176px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
                    <asp:Label 
            ID="lblfather_name47" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="User:-"></asp:Label>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtuser" runat="server" Height="22px" Width="152px"></asp:TextBox>
                </td>
                <td class="style13">
        <asp:Label ID="lbldepartment" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Department:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtdepartment" runat="server" Height="22px" Width="152px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
                    <asp:Label 
            ID="lblfather_name22" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Cost Code:-"></asp:Label>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtcost_code" runat="server" Height="22px" 
        Width="152px"></asp:TextBox>
                </td>
                <td class="style13">
        <asp:Label ID="lblfather_name23" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Catagaries:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtcatagaries" runat="server" Height="22px" Width="152px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
        <asp:Label ID="lblfather_name24" runat="server" Font-Size="Large" 
            ForeColor="Blue" Text="Supplier_Details:-" Font-Bold="True"></asp:Label>
                </td>
                <td class="style16">
                </td>
                <td class="style8">
                </td>
                <td class="style14">
                </td>
                <td class="style10">
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Label ID="lblfather_name25" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Manufacture Code:-"></asp:Label>
                </td>
                <td class="style4">

        <asp:TextBox ID="txtmanufactuse_code" runat="server" Height="22px" 
        Width="152px"></asp:TextBox>
                </td>
                <td class="style13">
        <asp:Label ID="lblfather_name26" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Manufacture_Name:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtmanufacture_name" runat="server" Height="22px" 
        Width="176px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Label ID="lblfather_name27" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Unit of Mesurement:-"></asp:Label>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtunit_of_mesurement" runat="server" Height="22px" 
        Width="150px"></asp:TextBox>
                </td>
                <td class="style13">
        <asp:Label ID="lblfather_name28" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Purchase Date:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtpurchase_date" runat="server" Height="22px" 
        Width="152px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Label ID="lblfather_name48" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Validity:-"></asp:Label>
                </td>
                <td class="style4">
        <asp:DropDownList ID="ddlvalidity" runat="server" Height="22px" Width="150px">
            <asp:ListItem Selected="True">Select any one</asp:ListItem>
            <asp:ListItem>Gueranty</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="warranty">woranty</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Label ID="lblfather_name49" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Guaranty code:-"></asp:Label>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtg_code" runat="server" Height="22px" 
        Width="152px" style="top: 295px; left: 171px"></asp:TextBox>
                </td>
                <td class="style13">
        <asp:Label ID="lblfather_name31" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Guaranty Period:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtguaranty_period" runat="server" Height="22px" 
        Width="152px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Label ID="lblfather_name32" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text=" Warranty code:-"></asp:Label>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtw_code" runat="server" Height="22px" 
        Width="152px"></asp:TextBox>
                </td>
                <td class="style13">
        <asp:Label ID="lblfather_name50" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Warranty Period:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtwarranty_period" runat="server" Height="22px" 
        Width="152px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
        <asp:Label ID="lblfather_name34" runat="server" Font-Size="Large" 
            ForeColor="Blue" Text="Service_Details:-" Font-Bold="True"></asp:Label>
                </td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Label ID="lblfather_name35" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Service Center Code:-"></asp:Label>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtservice_center_code" runat="server" Height="22px" 
        Width="152px"></asp:TextBox>
                </td>
                <td class="style13">
        <asp:Label ID="lblfather_name36" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Service Name:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtservice_name" runat="server" Height="22px" 
        Width="176px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Label ID="lblfather_name37" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Address:-"></asp:Label>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtaddress" runat="server" Height="52px" 
        TextMode="MultiLine" Width="152px"></asp:TextBox>
                </td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
        <asp:Label ID="lblfather_name38" runat="server" Font-Size="Large" 
            ForeColor="Blue" Text="Purchase Details:-" Font-Bold="True"></asp:Label>
                </td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Label ID="lblfather_name39" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Purchase Price:-"></asp:Label>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtpurchase_price" runat="server" Height="22px" 
        Width="152px"></asp:TextBox>
                </td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Label ID="lblfather_name41" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Purchase Values:-"></asp:Label>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtpurchase_values" runat="server" Height="22px" 
        Width="152px"></asp:TextBox>
                </td>
                <td class="style13">
        <asp:Label ID="lblfather_name51" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Purchase Quentity:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtpurchase_quentity" runat="server" Height="22px" 
        Width="152px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
        <asp:Label ID="lblfather_name43" runat="server" Font-Size="Large" 
            ForeColor="Blue" Text="Depresiation Details:-" Font-Bold="True"></asp:Label>
                </td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Label ID="lblfather_name42" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Depresiation (%):-"></asp:Label>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtdepresiation" runat="server" Height="22px" 
        Width="152px"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:Label 
            ID="lblfather_name44" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Current Values:-"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtcurrent_values" runat="server" Height="22px" 
        Width="152px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Label ID="lblfather_name45" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Status:-"></asp:Label>
                </td>
                <td class="style4">
        <asp:TextBox ID="txtstatus" runat="server" Height="32px" 
        TextMode="MultiLine" Width="152px"></asp:TextBox>
                </td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
        <asp:Button ID="btninsert" runat="server" Text="Insert" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" Width="77px" />
                </td>
                <td class="style4">
        <asp:Button ID="btnupdate" runat="server" Text="Update" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" Width="77px" style="height: 26px" />
                </td>
                <td class="style13">
        <asp:Button ID="btndelete" runat="server" Text="Delete" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" Width="77px" CausesValidation="False" />
                </td>
                <td>
        <asp:Button ID="btnsearch" runat="server" Text="Search" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" Width="77px" />
                </td>
                <td>
        <asp:Button ID="btnsearch0" runat="server" Text="Cancel" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" Width="77px" />
                </td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
             <center>  
        <asp:Button ID="btnfirst" runat="server" Text="&lt;&lt;" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" Width="77px" CausesValidation="False" /></center> 
                </td>
                <td class="style4">
                <center>
        <asp:Button ID="btnpre" runat="server" Text="&lt;" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" Width="77px" CausesValidation="False" /></center>
                </td>
                <td class="style13">
                <center>
        <asp:Button ID="btnforward" runat="server" Text="&gt;" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" Width="77px" CausesValidation="False" /></center>
                </td>
                <td>
                <center>
        <asp:Button ID="btnlast" runat="server" Text="&gt;&gt;" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" Width="77px" CausesValidation="False" /></center>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    </form>
</body>
</html>
