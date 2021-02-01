<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Copy of popup_personal_detail.aspx.vb" Inherits="popup_personal_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
<title>Personal Detail</title>
<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>

<style type="text/css">

    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 597px;
    }
    .style3
    {
        width: 153px;
    }
    .style4
    {
        width: 235px;
    }
    .style5
    {
        width: 151px;
    }
</style>
</head>
<body background="#ff9933" bgcolor="#ff9933">
    <form id="form1" runat="server">
    <div>
     
         
             <table align="center" class="style1">
              <tr>
                  <td align ="center" class="style2" >
        <asp:Label ID="lblinsurancedetail" runat="server" BackColor="Green" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="White" 
              Text="Member Registration "></asp:Label>
                 
                  </td>
                 
              </tr>
              </table>
              <table align="center" class="style1">
              <tr>
                  <td class="style4"  >
        <asp:Label ID="lblfather_name0" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text=" Name:-"></asp:Label>
                  </td>
                  <td class="style5">
        <asp:TextBox ID="txtname1" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtname1" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                  </td>
                  <td class="style3">
        <asp:TextBox ID="txtname2" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtname2" ErrorMessage="*" ToolTip="NO BLANK"></asp:RequiredFieldValidator>
                  </td>
                  <td>
          <asp:TextBox ID="txtname3" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="txtname3" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="style4"  >
                      <asp:Label 
              ID="lblfather_name" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Father Name:-"></asp:Label>
                  </td>
                  <td class="style5">
                      <asp:TextBox ID="txtfname1" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="txtfname1" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                  </td>
                  <td class="style3">
        <asp:TextBox ID="txtfname2" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="txtfname2" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                  </td>
                  <td>
          <asp:TextBox ID="txtfname3" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ControlToValidate="txtfname3" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="style4" >
        <asp:Label ID="lblmother_name" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Mother Name:-"></asp:Label>
                  </td>
                  <td class="style5">
                      <asp:TextBox ID="txtmname1" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
            ControlToValidate="txtmname1" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                  </td>
                  <td class="style3">
        <asp:TextBox ID="txtmname2" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
            ControlToValidate="txtfname2" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                  </td>
                  <td>
          <asp:TextBox ID="txtmname3" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
            ControlToValidate="txtmname3" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                  </td>
              </tr>
               </table>
                 <asp:Panel ID="Panel_of_husbandname" runat="server" Visible="False" Width="1078px">
               <table align="center" class="style1"> 
              <tr>
              
                  <td class="style4"  >
        <asp:Label ID="lblspouse_name" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text="Spouse Name:-"></asp:Label>
                  </td>
                  <td class="style5">
                      <asp:TextBox ID="txthname1" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
            ControlToValidate="txthname1" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                  </td>
                  <td class="style3">
        <asp:TextBox ID="txthname2" runat="server" Height="22px" 
            Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
            ControlToValidate="txthname2" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                  </td>
                  <td>
        <asp:TextBox ID="txthname3" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
            ControlToValidate="txthname3" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
            
                  </td>
                   
              </tr>
             </table>
              </asp:Panel>
             <table class="style1">
                 <tr>
                     <td class="style4" >
                         <asp:Label 
              ID="lblfather_name1" runat="server" Font-Size="Medium" 
            ForeColor="Blue" Text=" Date of Birth:-"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:TextBox ID="txtr_dob" runat="server" 
            Height="22px" Width="121px" CausesValidation="True"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
            ControlToValidate="txtr_dob" ErrorMessage="*" InitialValue="Date" 
            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                     </td>
                     <td class="style3">
                         <asp:Label 
              ID="lblage" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Age:-"></asp:Label>
                     </td>
                     <td>
    <asp:TextBox ID="txtage" 
        runat="server" Width="121px" MaxLength="3" Height="22px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="style4">
    <asp:Label ID="lblgender" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Gender:-"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:DropDownList ID="ddlgender" runat="server" 
            Height="22px" Width="121px">
            <asp:ListItem>Select Gender</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Enuch</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
            ControlToValidate="ddlgender" ErrorMessage="*" InitialValue="Select" 
            ToolTip="prorer gender"></asp:RequiredFieldValidator>
                         &nbsp;</td>
                     <td class="style3">
        <asp:Label ID="lblmarital_stutus" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
            Text="Marital Status:-"></asp:Label>
                     </td>
                     <td>
    <asp:DropDownList ID="ddlmarital_status" runat="server" 
            Width="158px" Height="22px" AutoPostBack="True">
            <asp:ListItem Selected="True">Select Marital Status</asp:ListItem>
            <asp:ListItem>Un married</asp:ListItem>
            <asp:ListItem>Single</asp:ListItem>
            <asp:ListItem>Divorcee</asp:ListItem>
            <asp:ListItem Value="Saparated">Saparated</asp:ListItem>
            <asp:ListItem>Married</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
            ControlToValidate="ddlmarital_status" ErrorMessage="*" InitialValue="Select" 
            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="style4">
    <asp:Label ID="lblidentification_mark" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
            Text="Identification Mark:-"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:TextBox ID="txtid_mark" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            runat="server" ControlToValidate="txtid_mark" ErrorMessage="*" 
            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                     </td>
                     <td class="style3">
        <asp:Label ID="lblemail" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="E-mail ID :-"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtemail" runat="server" 
        Height="22px" Width="121px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label10" runat="server" Font-Size="Small" 
            Text="[ex:abc@gmail.com]"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
            ControlToValidate="txtemail" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtemail" ErrorMessage="*" ToolTip="write proper email" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
 
                     </td>
                 </tr>
                 <tr>
                     <td class="style4">
 
        <asp:Label ID="lblmobile_number" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
            Text="Mobile Number:-"></asp:Label>
                     </td>
                     <td class="style5">
        <asp:TextBox ID="txtmobilenumber" runat="server" MaxLength="10" 
        Height="22px" Width="121px"></asp:TextBox>
        <asp:RegularExpressionValidator 
        ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="txtmobilenumber" ErrorMessage="*" ToolTip="give a numeric mobile no" 
            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
            ControlToValidate="txtmobilenumber" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                     </td>
                     <td class="style3">
                         <asp:Label ID="lbllandline_number" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
            Text="Landline Number:-"></asp:Label>
                     </td>
                     <td>
 
    <asp:TextBox ID="txtstd_code" 
        runat="server" MaxLength="5" 
        Width="56px" Height="22px"></asp:TextBox>
    <asp:TextBox ID="txtlandline_number" runat="server" MaxLength="12" 
        Height="22px" Width="158px"></asp:TextBox>
    <asp:RegularExpressionValidator 
        ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="txtlandline_number" ErrorMessage="*" ToolTip="give a numeric landline no" 
            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
            ControlToValidate="txtlandline_number" ErrorMessage="*" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>

        &nbsp;<asp:RequiredFieldValidator 
        ID="RequiredFieldValidator57" runat="server" 
            ControlToValidate="txtlandline_number" ErrorMessage="*" InitialValue="Select" 
            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
            ControlToValidate="txtstd_code" ErrorMessage="*" ToolTip="give a numeric std code" 
            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
 
                     </td>
                 </tr>
                 <tr>
                     <td class="style4">
        <asp:Label ID="lblidentification" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
        Text="Identification type:-"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:DropDownList ID="ddlidentification_type" runat="server">
            <asp:ListItem Selected="True">Select Identification</asp:ListItem>
            <asp:ListItem>Pan Card</asp:ListItem>
            <asp:ListItem>Addhar Card</asp:ListItem>
            <asp:ListItem>Ration Card</asp:ListItem>
            <asp:ListItem>Voter Card</asp:ListItem>
        </asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" 
            ControlToValidate="ddlidentification_type" ErrorMessage="*" 
            InitialValue="Select Identification" ToolTip="Select Type"></asp:RequiredFieldValidator>
                     </td>
                     <td class="style3">
          <asp:Label ID="lblidentification_number" runat="server" Font-Bold="False" 
              Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
              Text="Identification_Number:-"></asp:Label>
                     </td>
                     <td>
          <asp:TextBox ID="txtidentificatio_number" runat="server" Height="22px" 
              Width="121px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" 
              ControlToValidate="txtidentificatio_number" ErrorMessage="*" 
              ToolTip="require number"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="style4">
                         &nbsp;</td>
                     <td class="style5">
                         &nbsp;</td>
                     <td class="style3">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="style4">
          <asp:Label ID="lblcommunicationaddress" runat="server" Font-Bold="True" 
              Font-Italic="False" Font-Size="Large" ForeColor="Blue" 
              Text="Communication Address:-"></asp:Label>
                     </td>
                     <td class="style5">
                         &nbsp;</td>
                     <td class="style3">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="style4">
                         &nbsp;</td>
                     <td class="style5">
                         &nbsp;</td>
                     <td class="style3">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="style4">
          <asp:Label ID="lblhousenumber" runat="server" Font-Bold="False" 
              Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
              Text="House Number:-"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:TextBox ID="txthousenumber" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" 
            ControlToValidate="txthousenumber" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                     </td>
                     <td class="style3">
                         <asp:Label 
              ID="lblstreetaddress" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
              Text="Street Address:-"></asp:Label>
                     </td>
                     <td>
        <asp:TextBox ID="txta_streetaddress" runat="server" Height="22px" 
            TextMode="MultiLine" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" 
            ControlToValidate="txta_streetaddress" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="style4">
          <asp:Label ID="lblarea" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Area:-"></asp:Label>
                     </td>
                     <td class="style5">
        <asp:DropDownList ID="ddlarea" runat="server" Height="22px" 
            Width="127px" AutoPostBack="True" DataSourceID="sqlarea" 
              DataTextField="Area" DataValueField="Area" AppendDataBoundItems="True">
            <asp:ListItem Selected="True">Select Area</asp:ListItem>
        </asp:DropDownList>
                     </td>
                     <td class="style3">
        <asp:Label ID="lblpincode0" runat="server" Font-Bold="False" Font-Italic="False" 
            Font-Size="Medium" ForeColor="Blue" Text="Pin Code:-"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList 
            ID="ddlpincode" runat="server" Height="22px" Width="121px" 
              AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pincode" 
              DataValueField="Pincode">
        </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td class="style4">
        <asp:Label ID="lblstate" runat="server" Font-Bold="False" Font-Italic="False" 
            Font-Size="Medium" ForeColor="Blue" Text="State:-"></asp:Label>
                     </td>
                     <td class="style5">
        <asp:DropDownList ID="ddlstate" runat="server" 
            Height="22px" Width="121px" AutoPostBack="True" DataSourceID="Sqlstate" 
              DataTextField="State" DataValueField="State">
        </asp:DropDownList>
                     </td>
                     <td class="style3">
          <asp:Label ID="lblcontry" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Country:-"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList 
              ID="ddl_country" runat="server" 
            Height="22px" Width="121px" AutoPostBack="True" DataSourceID="Sqlcountry" 
              DataTextField="Country" DataValueField="Country">
        </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td class="style4">
        <asp:Label ID="lblcity" runat="server" Font-Bold="False" Font-Italic="False" 
            Font-Size="Medium" ForeColor="Blue" Text="City:-"></asp:Label>
                     </td>
                     <td class="style5">
          <asp:TextBox ID="txtcity" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
            ControlToValidate="txtcity" ErrorMessage="*" InitialValue="Select City" 
            ToolTip="Not blank select any one city"></asp:RequiredFieldValidator>
                     </td>
                     <td class="style3">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="style4">
                         &nbsp;</td>
                     <td class="style5">
                         &nbsp;</td>
                     <td class="style3">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="style4">
        <asp:Label ID="lblperrmedent_address" runat="server" Font-Bold="True" 
            Font-Italic="False" Font-Size="Large" ForeColor="Blue" 
            Text="Parmanent Address:"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="Blue" 
            Text="&quot;Same as Communication&quot;"></asp:Label>
                     </td>
                     <td class="style3">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="style4">
        <asp:Label ID="lblppincode0" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Address:-"></asp:Label>
                     </td>
                     <td class="style5">
        <asp:RadioButton ID="rdbpermanentyes" runat="server" AutoPostBack="True" 
            ForeColor="Blue" GroupName="per_add" Text="Yes" Checked="True" />
                     </td>
                     <td class="style3">
        <asp:RadioButton ID="rdbpermanentno" runat="server" AutoPostBack="True" 
              ForeColor="Blue" GroupName="per_add" Text="No" />
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
             </table>
             <asp:Panel ID="Panel_of_per_add" runat="server" Height="123px" 
            Visible="False">
             <table class="style1">
                 <tr>
                     <td class="style4">
                         <asp:Label ID="lblphouse_number" runat="server" Font-Bold="False" 
                             Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="House Number:-"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:TextBox ID="txtphouse_number" runat="server" Height="22px" Width="121px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" 
                             ControlToValidate="txtphouse_number" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                     </td>
                     <td class="style3">
                         <asp:Label ID="lblpstreetaddress0" runat="server" Font-Bold="False" 
                             Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Street Address:-"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtpstreetaddress" runat="server" Height="22px" 
                             TextMode="MultiLine" Width="121px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" 
                             ControlToValidate="txta_streetaddress" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="style4">
                         <asp:Label ID="lblparea" runat="server" Font-Bold="False" Font-Italic="False" 
                             Font-Size="Medium" ForeColor="Blue" Text="Area:-"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:DropDownList ID="ddlParea" runat="server" AutoPostBack="True" 
                             DataSourceID="Sqlparea" DataTextField="Area" DataValueField="Area" 
                             Height="22px" Width="121px">
                         </asp:DropDownList>
                     </td>
                     <td class="style3">
                         <asp:Label ID="lblppincode" runat="server" Font-Bold="False" 
                             Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Pin Code:-"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList ID="ddlPpincode" runat="server" AutoPostBack="True" 
                             DataSourceID="Sqlppincode" DataTextField="Pincode" DataValueField="Pincode" 
                             Height="22px" Width="121px">
                         </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td class="style4">
                         <asp:Label ID="lblpstate" runat="server" Font-Bold="False" Font-Italic="False" 
                             Font-Size="Medium" ForeColor="Blue" Text="State:-"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:DropDownList ID="ddlPstate" runat="server" AutoPostBack="True" 
                             DataSourceID="Sqlpstate" DataTextField="State" DataValueField="State" 
                             Height="22px" Width="121px">
                         </asp:DropDownList>
                     </td>
                     <td class="style3">
                         <asp:Label ID="lblpcity0" runat="server" Font-Bold="False" Font-Italic="False" 
                             Font-Size="Medium" ForeColor="Blue" Text="Country:-"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList ID="ddlpcountry" runat="server" AutoPostBack="True" 
                             DataSourceID="Sqlpcountry" DataTextField="Country" DataValueField="Country" 
                             Height="22px" Width="121px">
                         </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td class="style4">
                         <asp:Label ID="lblpcity" runat="server" Font-Bold="False" Font-Italic="False" 
                             Font-Size="Medium" ForeColor="Blue" Text="City:-"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:TextBox ID="txtpcity" runat="server" Height="22px" Width="121px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                             ControlToValidate="txtpcity" ErrorMessage="*" InitialValue="Select City" 
                             ToolTip="Not blank select any one city"></asp:RequiredFieldValidator>
                     </td>
                     <td class="style3">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
             </table>
             </asp:panel>
             <table class="style1">
                 <tr>
                     <td class="style4">
        
        <asp:Label ID="lblpdepartment" runat="server" Font-Bold="False" 
            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Dependent:-"></asp:Label>
                     </td>
                     <td class="style5">
        <asp:RadioButton ID="rdbdeptyes" runat="server" AutoPostBack="True" 
            ForeColor="Blue" GroupName="dependent" Text="Yes" />
                     </td>
                     <td class="style3">
        <asp:RadioButton ID="rdbdeptno" runat="server" AutoPostBack="True" 
            Checked="True" ForeColor="Blue" GroupName="dependent" Text="No" />
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
             </table>
             <br />
             <asp:Panel ID="Panel1_dependent" runat="server" Visible="False">
             <table class="style1">
                 <tr>
                     <td class="style4">
                         <asp:Label ID="lbluid" runat="server" Font-Bold="False" Font-Italic="False" 
                             Font-Size="Medium" ForeColor="Blue" Text="Uid:-"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:TextBox ID="txtpu_id" runat="server" Height="22px" Width="121px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                             ControlToValidate="txtpu_id" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                     </td>
                     <td class="style3">
                         <asp:Label ID="lblprelationship" runat="server" Font-Bold="False" 
                             Font-Size="Medium" ForeColor="Blue" Text="Relationship:-"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList ID="ddlprelationship" runat="server" Height="22px" 
                             Width="121px">
                             <asp:ListItem Selected="True">Select Relationships</asp:ListItem>
                             <asp:ListItem>Mohter</asp:ListItem>
                             <asp:ListItem>Brother</asp:ListItem>
                             <asp:ListItem>Sister</asp:ListItem>
                             <asp:ListItem>Meternal ancle</asp:ListItem>
                             <asp:ListItem>Peternal ancle</asp:ListItem>
                             <asp:ListItem>Meternal ant</asp:ListItem>
                             <asp:ListItem>Peternal ant</asp:ListItem>
                             <asp:ListItem>Meternal Grandfather</asp:ListItem>
                             <asp:ListItem>Meternal Grandmother</asp:ListItem>
                             <asp:ListItem>Peternal Grandfather</asp:ListItem>
                             <asp:ListItem>Peternal Grandmother</asp:ListItem>
                             <asp:ListItem>Father</asp:ListItem>
                             <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                             ControlToValidate="ddlprelationship" ErrorMessage="*" InitialValue="Mother" 
                             ToolTip="Not blank"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
             </table>
             </asp:panel>
             <table class="style1">
                 <tr>
                     <td class="style4">
                         <asp:Label ID="lblnoofdept" 
              runat="server" Font-Bold="False" 
                Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                Text="No of Dependent:-"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:TextBox 
                ID="txtnoofdependent" runat="server" Height="22px" 
                Width="121px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                ControlToValidate="txtnoofdependent" ErrorMessage="*" 
              ToolTip="Not blank"></asp:RequiredFieldValidator>
                     </td>
                     <td class="style3">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="style4">
                         <asp:Label ID="lblpassword" 
              runat="server" Font-Bold="False" 
                Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                Text="Password"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="22px" 
                             Width="121px"></asp:TextBox>
             &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" 
            ControlToValidate="txtpassword" ErrorMessage="*" 
            ToolTip="Password is not blank"></asp:RequiredFieldValidator>
                     </td>
                     <td class="style3">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="style4">
                         
                         <asp:Label ID="lblfather_name2" 
              runat="server" Font-Size="Medium" 
              ForeColor="Blue" Text="Upload Photo:-"></asp:Label>
                         
                     </td>
                     <td class="style3">
          <asp:FileUpload ID="FileUpload_photo" runat="server" Width="215px" />
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="style4">
                         
                         <asp:Label ID="lblfather_name3" 
              runat="server" Font-Size="Medium" 
              ForeColor="Blue" Text="Identification Image:-"></asp:Label>
                         
                     </td>
                     <td class="style3">
                         <asp:FileUpload ID="FileUpload_identification" runat="server" />
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
             </table>
             <br />
          <asp:Panel ID="Panel9" runat="server" BackColor="White" Font-Bold="True" 
              Height="173px" ScrollBars="Vertical" Width="580px">
              <p class="MsoNormal" style="text-align:justify">
                  I hereby declare that all details are recorded as per my declarations are true 
                  to the best of my Knowledge. No information differs from the declaration can be 
                  changeable in future related to Past history and Family History. I relieve the 
                  Company from all the legal liabilities arising out of any false information 
                  given in the data.</p>
              <p class="MsoNormal" style="text-align:justify">
                  I further give my consent to record all these details with the record and same 
                  can be furnished to the government organizations, research work , Insurance 
                  companies and other such organizations as deemed fit by Health Guard on the 
                  satisfaction of confidentiality by the organization.</p>
          </asp:Panel>
          &nbsp;<br />
&nbsp;&nbsp;&nbsp;
          <asp:CheckBox ID="Chkaggrement" runat="server" Font-Bold="True" 
              Text="I Have Accept and Read the Terms And Condition" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    
 

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
             <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" />
&nbsp;
        
   
        <asp:Button ID="btncancel" runat="server" Text="Cancel" BackColor="#009900" 
            Font-Bold="True" ForeColor="White" style="height: 26px" />

   
             <br />
             <br />
             <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                 Font-Size="X-Large" Font-Underline="True" 
                 PostBackUrl="~/infrastructure/Patient admit card.aspx" 
                 CausesValidation="False">Admit Patient</asp:LinkButton>

   
             <br />
             <br />
             <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;
          <asp:SqlDataSource ID="sqlarea" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [Area_Master]"></asp:SqlDataSource>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="ddlarea" Name="Area" 
                      PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;
          <asp:SqlDataSource ID="Sqlstate" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [Area_Master] WHERE ([Pincode] = @Pincode)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="ddlpincode" Name="Pincode" 
                      PropertyName="SelectedValue" Type="Decimal" />
              </SelectParameters>
          </asp:SqlDataSource>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;<asp:SqlDataSource ID="Sqlcountry" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [Area_Master] WHERE ([State] = @State)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="ddlstate" Name="State" 
                      PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        &nbsp;
          &nbsp;&nbsp;&nbsp;<br />
        &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:SqlDataSource ID="Sqlparea" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT * FROM [Area_Master]"></asp:SqlDataSource>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:SqlDataSource ID="Sqlppincode" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="ddlParea" Name="Area" 
                          PropertyName="SelectedValue" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:SqlDataSource ID="Sqlpstate" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="ddlParea" Name="Area" 
                          PropertyName="SelectedValue" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:SqlDataSource ID="Sqlpcountry" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="ddlParea" Name="Area" 
                          PropertyName="SelectedValue" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
   
    </div>
    </form>
</body>
</html>
