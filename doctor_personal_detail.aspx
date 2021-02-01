<%@ Page Language="VB" AutoEventWireup="false" CodeFile="doctor_personal_detail.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 165px;
        }
        .style6
        {
            width: 143px;
        }
        .style8
        {
            width: 45px;
        }
        .style9
        {
            width: 158px;
        }
        .style10
        {
            width: 147px;
        }
        .style11
        {
            width: 164px;
        }
        .style12
        {
            width: 145px;
        }
        .style14
        {
            width: 154px;
        }
        .style17
        {
            width: 149px;
        }
        .style18
        {
            width: 161px;
        }
        .style19
        {
            width: 137px;
        }
    </style>
</head>
<body bgcolor="#ff9933" text="blue">
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label8" runat="server" BackColor="Green" Font-Overline="False" 
            Font-Size="X-Large" ForeColor="White" Text="Doctor's Personal Details" 
            Font-Bold="True"></asp:Label>
        <br />
        <br />
        <br />
        <table align="center" class="style1">
            <tr>
                <td class="style4">
        <asp:Label ID="lblsearch" runat="server" Font-Bold="True" Font-Names="Arial"
            Font-Size="Small" Text="Search Id:-" Visible="False"></asp:Label>
    
                </td>
                <td class="style6">
        <asp:TextBox ID="txtsearch" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
        <asp:Label ID="nametitle_txt" runat="server" Font-Bold="True" Font-Names="Arial"
            Font-Size="Small" Text="Personal Name Detail :-"></asp:Label>
    
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
        <asp:Label ID="Name_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Full Name" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style9">
        <asp:Label ID="middle_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Middle Name" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style10">
                    <asp:Label ID="surname_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Surname" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
        <asp:TextBox ID="txtFull_Name" runat="server"
            Font-Names="Arial" Font-Size="Small" Width="121px" Height="22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*" ControlToValidate="txtFull_Name"></asp:RequiredFieldValidator>
                </td>
                <td class="style9">
        <asp:TextBox ID="txtMiddle_Name" runat="server" Font-Names="Arial" 
        Font-Size="Small" Width="121px" Height="22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
        runat="server" ErrorMessage="*" ControlToValidate="txtMiddle_Name"></asp:RequiredFieldValidator>
                </td>
                <td class="style10">
        <asp:TextBox ID="txtSurname" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="*" ControlToValidate="txtSurname"></asp:RequiredFieldValidator>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" 
        ForeColor="Blue" Text="Password:-"></asp:Label>
                </td>
                <td class="style6">
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="22px" 
        Width="121px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
        <asp:Label ID="addresstitle_txt" runat="server" Font-Bold="True" Font-Names="Arial"
            Font-Size="Small" Text="Contact Details:-"></asp:Label>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
        <asp:Label ID="residence_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Residence Address :-"></asp:Label>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
        <asp:Label ID="houseno_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="House Name / Number" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style9">
        <asp:Label ID="socname_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Society / Complex Name" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    <asp:TextBox ID="txtHousenn" 
        runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="*" ControlToValidate="txtHousenn"></asp:RequiredFieldValidator>
                </td>
                <td class="style9">
        <asp:TextBox ID="txtRSociety_or_Complex_Name" runat="server" 
        Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ErrorMessage="*" ControlToValidate="txtRSociety_or_Complex_Name"></asp:RequiredFieldValidator>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="street_txt"
            runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small" 
        Text="Street Name" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style9">
        <asp:Label ID="area_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Area" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style10">
        <asp:Label ID="landmark_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small" Text="Land Mark" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
        
        <asp:TextBox ID="txtRStreet_Name" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtRStreet_Name" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
                </td>
                <td class="style9">
        <asp:DropDownList ID="ddlrarea" runat="server" AutoPostBack="True" 
         DataTextField="Area" DataValueField="Area" Height="22px" 
        Width="121px" DataSourceID="Sqlrarea">
    </asp:DropDownList>
                </td>
                <td class="style10">
        <asp:TextBox ID="txtRLand_Mark" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style9">
    <asp:SqlDataSource ID="Sqlrarea" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Area_Master]"></asp:SqlDataSource>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="city_txt"
            runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small" 
        Text="City" ForeColor="Blue"></asp:Label></td>
                <td class="style9">
    <asp:Label ID="pinno_txt" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small"
            Text="PIN Code" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style10">
    <asp:Label ID="state_txt" 
        runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small"
            Text="State" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style8">
    <asp:Label ID="country_txt" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small"
            Text="Country" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
        <asp:TextBox ID="txtRCity" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="txtRCity" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
                </td>
                <td class="style9">
    <asp:DropDownList ID="ddlrpincode" runat="server" AutoPostBack="True" 
         DataTextField="Pincode" DataValueField="Pincode" Height="22px" 
        Width="121px" DataSourceID="Sqlrpincode">
    </asp:DropDownList>
                </td>
                <td class="style10">
    <asp:DropDownList ID="ddlrstate" runat="server" 
         DataTextField="State" DataValueField="State" Height="22px" 
        Width="121px" DataSourceID="Sqlrstate" AutoPostBack="True">
    </asp:DropDownList>
                </td>
                <td class="style8">
    <asp:DropDownList ID="ddlrcountry" runat="server" 
         DataTextField="Country" DataValueField="Country" Height="22px" 
        Width="121px" DataSourceID="Sqlrcountry" AutoPostBack="True">
    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style9">
    <asp:SqlDataSource ID="Sqlrpincode" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlrarea" Name="Area" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
                </td>
                <td class="style10">
    <asp:SqlDataSource ID="Sqlrstate" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Area_Master] WHERE ([Pincode] = @Pincode)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlrpincode" Name="Pincode" 
                PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
                </td>
                <td class="style8">
    <asp:SqlDataSource ID="Sqlrcountry" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Area_Master] WHERE ([Pincode] = @Pincode)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlrpincode" Name="Pincode" 
                PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style4">
        <asp:Label ID="clinic_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Clinic / Hospital Address :-"></asp:Label>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
        <asp:Label ID="houseno1_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="House Name / Number" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style9">
        <asp:Label ID="socname1_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Society / Complex Name" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
    <asp:TextBox ID="txtCHouse_Name_and_Number" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
        ControlToValidate="txtCHouse_Name_and_Number" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtCSociety_or_Complex_Name" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
        ControlToValidate="txtCSociety_or_Complex_Name" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
    <asp:Label ID="street1_txt"
            runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small" 
        Text="Street Name" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style9">
    <asp:Label ID="area1_txt" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small"
            Text="Area" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style10">
    <asp:Label ID="landmark1_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Land Mark" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
        <asp:TextBox ID="txtCStreet_Name" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
        ControlToValidate="txtCStreet_Name" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
                </td>
                <td class="style9">
                    <asp:DropDownList ID="ddlcharea" runat="server" 
         DataTextField="Area" DataValueField="Area" Height="22px" 
        Width="121px" DataSourceID="Sqlcharea" AutoPostBack="True">
    </asp:DropDownList>
                </td>
                <td class="style10">
                    <asp:TextBox ID="txtCLand_Mark" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
        ControlToValidate="txtCLand_Mark" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style9">
    <asp:SqlDataSource ID="Sqlcharea" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Area_Master]"></asp:SqlDataSource>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
    <asp:Label ID="city1_txt"
            runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small" 
        Text="City" ForeColor="Blue"></asp:Label></td>
                <td class="style9">
    <asp:Label ID="pinno1_txt" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small"
            Text="PIN Code" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style10">
    <asp:Label ID="state1_txt" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small"
            Text="State" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style8">
    <asp:Label ID="country1_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Country" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
        <asp:TextBox ID="txtCRCity" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
        ControlToValidate="txtACity" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
                </td>
                <td class="style9">
                    <asp:DropDownList ID="ddlchpincode" runat="server" 
        AutoPostBack="True" Height="22px" Width="121px" 
        DataSourceID="Sqlchpincode" DataTextField="Pincode" DataValueField="Pincode">
    </asp:DropDownList>
                </td>
                <td class="style10">
        <asp:DropDownList ID="ddlchstate" runat="server" AutoPostBack="True" 
        Height="22px" Width="121px" DataSourceID="Sqlchstate" 
        DataTextField="State" DataValueField="State">
    </asp:DropDownList>
                </td>
                <td class="style8">
        <asp:DropDownList ID="ddlchcountry" runat="server" AutoPostBack="True" 
        Height="22px" Width="121px" DataSourceID="Sqlchcountry" 
        DataTextField="Country" DataValueField="Country">
    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style9">
        <asp:SqlDataSource ID="Sqlchpincode" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlcharea" Name="Area" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
                </td>
                <td class="style10">
        <asp:SqlDataSource ID="Sqlchstate" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Area_Master] WHERE ([Pincode] = @Pincode)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlchpincode" Name="Pincode" 
                    PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
    </asp:SqlDataSource>
                </td>
                <td class="style8">
    <asp:SqlDataSource ID="Sqlchcountry" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Area_Master] WHERE ([Pincode] = @Pincode)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlchpincode" Name="Pincode" 
                PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style4">
        <asp:Label ID="voice_txt" runat="server" Font-Bold="True" 
        Font-Names="Arial" Font-Size="Small"
            Text="Voice Contact Details :-"></asp:Label>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:Label ID="home_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Home" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style18">
    <asp:Label ID="work_txt" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small"
            Text="Work" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style19">
        <asp:Label ID="mobile_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Mobile" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style11">
    <asp:Label ID="tollfree_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Toll Free" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
                <asp:TextBox ID="txtHome" runat="server" Font-Names="Arial" 
        Font-Size="Small" Width="121px" Height="22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
        ControlToValidate="txtHome" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="txtHome" ErrorMessage="*" ToolTip="numeric value only" 
        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
            </td>
            <td class="style18">
        <asp:TextBox ID="txtVCDWork" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
        ControlToValidate="txtVCDWork" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ControlToValidate="txtVCDWork" ErrorMessage="*" ToolTip="numeric value only" 
        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
            </td>
            <td class="style19">
        <asp:TextBox ID="txtMobile" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
        ControlToValidate="txtMobile" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
        ControlToValidate="txtMobile" ErrorMessage="*" ToolTip="numeric value only" 
        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
            </td>
            <td class="style11">
        <asp:TextBox ID="txtTollFree" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
        ControlToValidate="txtTollFree" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
        ControlToValidate="txtTollFree" ErrorMessage="*" ToolTip="numeric value only" 
        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
        <asp:Label ID="soft_txt" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small"
            Text="Soft Contact Details :-"></asp:Label>
            </td>
            <td class="style17">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:Label ID="mailid_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="E - Mail ID" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style18">
    <asp:Label ID="website_txt" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small"
            Text="Web Site" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
                <asp:TextBox ID="txtEmail_id" runat="server" 
        Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
        ControlToValidate="txtEmail_id" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
        ControlToValidate="txtEmail_id" ErrorMessage="*" ToolTip="email is mot correct" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="style18">
    <asp:TextBox ID="txtWeb_site" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
        <asp:Label ID="qulititle_txt" runat="server" Font-Bold="True" Font-Names="Arial"
            Font-Size="Small" Text="Qualification and Registration Detail :-"></asp:Label>
            </td>
            <td class="style17">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
                <asp:Label 
        ID="category_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Category" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style18">
    <asp:Label ID="Label1" runat="server" Text="Specilisation" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style19">
        <asp:Label ID="quali_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Qualification" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style11">
    <asp:Label ID="regiauthority_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Registering Authority" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
    <asp:DropDownList ID="ddlCategory"
                runat="server" Font-Names="Arial" Font-Size="Small" Width="121px" 
        Height="22px">
                <asp:ListItem>Paramedical</asp:ListItem>
                <asp:ListItem>Medical</asp:ListItem>
                <asp:ListItem>Administration</asp:ListItem>
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
        ControlToValidate="ddlCategory" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style18">
        <asp:DropDownList ID="ddlspecilisation" runat="server" AutoPostBack="True" 
                    Width="141px">
            <asp:ListItem Selected="True">Select Specilisation</asp:ListItem>
            <asp:ListItem>Heart</asp:ListItem>
            <asp:ListItem>Cardiologist</asp:ListItem>
            <asp:ListItem>Dermatologist</asp:ListItem>
            <asp:ListItem>Gastroenterologist
            </asp:ListItem>
            <asp:ListItem>Hematologist/Oncologist</asp:ListItem>
            <asp:ListItem>Internal Medicine Physician</asp:ListItem>
            <asp:ListItem>Nephrologist</asp:ListItem>
            <asp:ListItem>Neurologist</asp:ListItem>
            <asp:ListItem>Neurosurgeon</asp:ListItem>
            <asp:ListItem>Obstetrician</asp:ListItem>
            <asp:ListItem>Gynecologist</asp:ListItem>
            <asp:ListItem>Nurse-Midwifery</asp:ListItem>
            <asp:ListItem>Ophthalmologist</asp:ListItem>
            <asp:ListItem>Orthopaedic Surgeon</asp:ListItem>
            <asp:ListItem>Otolaryngologist
            </asp:ListItem>
            <asp:ListItem>Pathologist</asp:ListItem>
            <asp:ListItem>Pediatrician</asp:ListItem>
            <asp:ListItem>Plastic Surgeon</asp:ListItem>
            <asp:ListItem>Podiatrist</asp:ListItem>
            <asp:ListItem>Psychiatrist
            </asp:ListItem>
            <asp:ListItem>Pulmonary Medicine Physician</asp:ListItem>
            <asp:ListItem>Radiation Onconlogist
            </asp:ListItem>
            <asp:ListItem>Diagnostic Radiologist</asp:ListItem>
            <asp:ListItem>Rheumatologist</asp:ListItem>
            <asp:ListItem>Urologist
            </asp:ListItem>
        </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
        ControlToValidate="ddlspecilisation" ErrorMessage="*" 
        ToolTip="value is required" InitialValue="Select Specilisation"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
    <asp:DropDownList ID="ddlQualification" runat="server"
                Font-Names="Arial" Font-Size="Small" Height="22px" Width="121px">
                <asp:ListItem>Diploma</asp:ListItem>
                <asp:ListItem>Graduation</asp:ListItem>
                <asp:ListItem>PG Diploma</asp:ListItem>
                <asp:ListItem>PG Certificate</asp:ListItem>
                <asp:ListItem>Post Graduation</asp:ListItem>
                <asp:ListItem>Superspeciality</asp:ListItem>
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
        ControlToValidate="ddlQualification" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style11">
        <asp:TextBox ID="txtRegistering_Authority" runat="server" 
        Font-Names="Arial" Font-Size="Small" Height="22px" Width="121px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
        ControlToValidate="txtRegistering_Authority" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:Label ID="regino_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Registration Number" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style18">
        <asp:Label ID="dateofregi_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Date of First Registration" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:TextBox ID="txtRegistration_Number" runat="server" Font-Names="Arial" 
        Font-Size="Small" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
        ControlToValidate="txtRegistration_Number" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style18">
        <asp:TextBox ID="txtDate_of_First_Registration" runat="server" 
        Font-Names="Arial" Font-Size="Small" style="width: 128px" Height="22px" 
        Width="121px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
        ControlToValidate="txtDate_of_First_Registration" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
                <asp:Label 
        ID="validfrom_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Valid From" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style18">
        <asp:Label ID="validupto_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Valid Upto" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:TextBox ID="txtValid_From" runat="server" Font-Names="Arial" 
        Font-Size="Small" Height="22px" Width="121px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
        ControlToValidate="txtValid_From" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style18">
        <asp:TextBox ID="txtValid_upto" runat="server" Font-Names="Arial" 
        Font-Size="Small" Height="22px" Width="121px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
        ControlToValidate="txtValid_upto" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
        <asp:Label ID="spectitle_txt" runat="server" Font-Bold="True" Font-Names="Arial"
            Font-Size="Small" Text="Specialisation and Experience Detail :"></asp:Label>
            </td>
            <td class="style17">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:Label ID="speci_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Specialisation" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style18">
    <asp:Label ID="field_txt" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small"
            Text="Field" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:TextBox ID="txtSESpecialisation" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" 
        ControlToValidate="txtSESpecialisation" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style18">
    <asp:TextBox ID="txtField" runat="server" Font-Names="Arial" 
        Font-Size="Small" Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
        ControlToValidate="txtField" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:Label ID="expyear_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Experience in Year" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style18">
    <asp:Label ID="nopatient_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Number of Patients" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:TextBox ID="txtExperience_in_Year" runat="server" Font-Names="Arial" 
        Font-Size="Small" Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
        ControlToValidate="txtExperience_in_Year" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
        ControlToValidate="txtExperience_in_Year" ErrorMessage="*" 
        ToolTip="numeric value only" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
            </td>
            <td class="style18">
    <asp:TextBox ID="txtNumber_of_Patients" runat="server" Font-Names="Arial" 
        Font-Size="Small" Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
        ControlToValidate="txtNumber_of_Patients" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
        ControlToValidate="txtNumber_of_Patients" ErrorMessage="*" 
        ToolTip="numeric value only" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
        <asp:Label ID="attatitle_txt" runat="server" Font-Bold="True" Font-Names="Arial"
            Font-Size="Small" Text="Attachment to Other Detail :"></asp:Label>
            </td>
            <td class="style17">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:Label ID="atta_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Attachment" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style18">
        <asp:Label ID="attaname_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Name" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style19">
    <asp:Label ID="city3_txt" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small"
            Text="City" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:DropDownList ID="ddlAttachment" runat="server"
                Font-Names="Arial" Font-Size="Small" Height="22px" Width="121px">
            <asp:ListItem>Hospital</asp:ListItem>
            <asp:ListItem>Association</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
        ControlToValidate="ddlAttachment" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style18">
        <asp:TextBox ID="txtAName" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
        ControlToValidate="txtAName" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
    <asp:TextBox ID="txtACity" runat="server" Font-Names="Arial" Font-Size="Small" 
        Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
        ControlToValidate="txtACity" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Blue" 
        Text="Membership"></asp:Label>
            </td>
            <td class="style17">
    <asp:DropDownList ID="ddlmembership" runat="server" Height="22px" Width="121px">
        <asp:ListItem>red cross</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" 
        ControlToValidate="ddlmembership" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:Label ID="eno_txt" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Small"
            Text="Enrollment Number" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style18">
        <asp:Label ID="validfrom1_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Valid From" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style19">
        <asp:Label ID="validupto1_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Valid Upto" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
        <asp:TextBox ID="txtEnrollment_Number" runat="server" Font-Names="Arial" Font-Size="Small"
            Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" 
        ControlToValidate="txtEnrollment_Number" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style18">
        <asp:TextBox ID="txtMValid_from" runat="server" Font-Names="Arial" 
        Font-Size="Small" Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" 
        ControlToValidate="txtMValid_from" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
        <asp:TextBox ID="txtMSValid_upto" runat="server" Font-Names="Arial" 
        Font-Size="Small" Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" 
        ControlToValidate="txtMSValid_upto" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Blue" 
        Text="CME"></asp:Label>
            </td>
            <td class="style17">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style17">
                <asp:Label 
        ID="notable_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Notable Acheivements" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style18">
    <asp:Label ID="area3_txt" runat="server" 
        Font-Bold="False" Font-Names="Arial" Font-Size="Small"
            Text="Area" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style19">
        <asp:Label ID="details_txt" runat="server" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Small"
            Text="Details" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style11">
        <asp:Label ID="nopatients1_txt" runat="server" Font-Bold="False" Font-Names="Arial"
            Font-Size="Small" Text="Number of Patients" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
        <asp:TextBox ID="txtNotable_Acheivements" runat="server" Font-Names="Arial" 
        Font-Size="Small" Height="22px" Width="121px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" 
        ControlToValidate="txtNotable_Acheivements" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style11">
    <asp:TextBox ID="txtNAArea" runat="server" Font-Names="Arial" 
        Font-Size="Small" Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" 
        ControlToValidate="txtNAArea" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style14">
        <asp:TextBox ID="txtDetails" runat="server" Font-Names="Arial" 
        Font-Size="Small" Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" 
        ControlToValidate="txtDetails" ErrorMessage="*" ToolTip="value is required"></asp:RequiredFieldValidator>
            </td>
            <td class="style11">
        <asp:TextBox ID="txtCMENumber_of_Patients" runat="server" 
        Font-Names="Arial" Font-Size="Small" Width="121px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" 
        ControlToValidate="txtCMENumber_of_Patients" ErrorMessage="*" 
        ToolTip="value is required"></asp:RequiredFieldValidator>
  
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
        <asp:Button ID="submit_button1" runat="server" Font-Bold="True" Font-Names="Arial"
            Font-Size="Small" Text="Submit" BackColor="#009933" 
        ForeColor="White" />
            </td>
            <td class="style11">
        <asp:Button ID="btnupdate" runat="server" Font-Bold="True" Font-Names="Arial"
            Font-Size="Small" Text="Update" BackColor="#009933" 
        ForeColor="White" CausesValidation="False" Visible="False" />
            </td>
            <td class="style14">
                <asp:Button ID="btnsearch" runat="server" BackColor="#009933" 
        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Search" />
            </td>
            <td class="style11">
                <asp:Button ID="cancal_button" runat="server" Font-Bold="True" Font-Names="Arial"
            Font-Size="Small" Text="Cancel" BackColor="#009933" 
        ForeColor="White" />

            </td>
        </tr>
    </table>
    &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;

    </form>

</body>
</html>
