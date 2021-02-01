<%@ Page Language="VB" AutoEventWireup="false" CodeFile="registration.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 158px;
        }
        .style8
        {
            height: 46px;
        }
        .style10
        {
            width: 139px;
        }
        .style11
        {
            width: 153px;
        }
        .style12
        {
            width: 76px;
        }
        .style13
        {
            height: 46px;
            width: 47px;
        }
        .style14
        {
            width: 47px;
        }
        .style16
        {
            width: 64px;
        }
        .style17
        {
            width: 124px;
        }
        .style18
        {
            width: 185px;
        }
        .style19
        {
            width: 975px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">


   
    <div style="background-color: #FF9900">
    <asp:Panel ID="Panel8" runat="server" Height="925px" 
    Width="1350px" ScrollBars="Auto" BackColor="#FF9900" HorizontalAlign="Justify">     
         
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <table class="style1">
            <tr>
                <td style="text-align: center" class="style19">
                    <asp:Label ID="lbl_heading" runat="server" BackColor="#009933" Font-Bold="True" 
                        Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="White" 
                        style="text-align: center" Text="REGISTRATION  FORM"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" 
                        Font-Size="Small" ForeColor="Blue" Text="NAME"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtfirstname" runat="server" CausesValidation="True" 
                        style="text-align: justify" Width="449px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txtfirstname" ErrorMessage="*" 
                        ToolTip="Name Must Be Entered"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td class="style13">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Arial" 
                        Font-Size="Small" ForeColor="Blue" Text="ADDRESS"></asp:Label>
                </td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style8">
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label32" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Area:-"></asp:Label>
                </td>
                <td class="style17" style="text-align: left">
                    <asp:DropDownList ID="ddlarea" runat="server" AutoPostBack="True" 
                        DataSourceID="sqlarea" DataTextField="Area" DataValueField="Area" Height="22px" 
                        Width="121px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sqlarea" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Area_Master]"></asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:Label ID="lblpincode" runat="server" Font-Bold="False" Font-Names="Arial" 
                        Font-Size="Small" ForeColor="Blue" Text="PIN Code:-"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddlpincode" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlpincode" DataTextField="Pincode" DataValueField="Pincode" 
                        Height="22px" Width="121px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlpincode" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlarea" Name="Area" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="lblstate" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="State:-"></asp:Label>
                </td>
                <td class="style17">
                    <asp:DropDownList ID="ddlstste" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlstate" DataTextField="State" DataValueField="State" 
                        ForeColor="#000016" Width="121px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlstate" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlarea" Name="Area" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:Label ID="lblcountry" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Country"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlcountry" runat="server" DataSourceID="Sqlcountry" 
                        DataTextField="Country" DataValueField="Country" Height="22px" Width="121px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlcountry" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlarea" Name="Area" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label22" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Street:-"></asp:Label>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtstreet" runat="server" CausesValidation="True" 
                        Height="22px" style="margin-left: 0px" Width="121px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="txtstreet" ErrorMessage="*" ToolTip="Street Must Be Entered"></asp:RequiredFieldValidator>
                </td>
                <td class="style16">
                    <asp:Label ID="lblcity" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="City:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcity" runat="server" CausesValidation="True" Height="22px" 
                        style="margin-left: 4px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="txtcity" ErrorMessage="*" ToolTip="City Must Be Entered"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label23" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Land Mark:-"></asp:Label>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtland_mark" runat="server" CausesValidation="True" 
                        Height="22px" style="margin-left: 0px; margin-right: 0px" Width="121px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                        ControlToValidate="txtland_mark" ErrorMessage="*" 
                        ToolTip="Landmark Must Be Entered"></asp:RequiredFieldValidator>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;<table class="style1">
            <tr>
                <td class="style10">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Arial" 
                        Font-Size="Small" ForeColor="#000099" Text="PHONE NUMBER"></asp:Label>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label31" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Country Code:-"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtcountry_code" runat="server" CausesValidation="True" 
                        Width="40px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                        ControlToValidate="txtcountry_code" ErrorMessage="*" 
                        ToolTip="Country Code Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtcountry_code" ErrorMessage="*" 
                        ToolTip="numeric value only" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style12">
                    <asp:Label ID="Label13" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="STD Code:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtstd_code" runat="server" CausesValidation="True" 
                        Width="49px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                        ControlToValidate="txtstd_code" ErrorMessage="*" 
                        ToolTip="Std Code Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txtstd_code" ErrorMessage="*" ToolTip="numeric value only" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label14" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Land Line no:-"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtland_line" runat="server" CausesValidation="True" 
                        Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                        ControlToValidate="txtland_line" ErrorMessage="*" 
                        ToolTip="Land Line Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="txtland_line" ErrorMessage="*" ToolTip="numeric value only" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style12">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label15" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Facimile no:-"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtfacimile" runat="server" CausesValidation="True" 
                        Height="22px" Width="121px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                        ControlToValidate="txtfacimile" ErrorMessage="*" 
                        ToolTip="Facimal Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="txtfacimile" ErrorMessage="*" ToolTip="numeric value only" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style12">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label24" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Mobile No:-"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtmobile" runat="server" CausesValidation="True" 
                        Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                        ControlToValidate="txtmobile" ErrorMessage="*" 
                        ToolTip="Mobile No Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                        ControlToValidate="txtmobile" ErrorMessage="*" ToolTip="numeric value only" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style12">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label25" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Toll Free No:-"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txttoll_free_no" runat="server" CausesValidation="True" 
                        Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                        ControlToValidate="txttoll_free_no" ErrorMessage="*" 
                        ToolTip="Toll Free No Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                        ControlToValidate="txttoll_free_no" ErrorMessage="*" 
                        ToolTip="numeric value only" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style12">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        &nbsp;<table class="style1">
            <tr>
                <td style="text-align: left" class="style18">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Arial" 
                        Font-Size="Small" ForeColor="#000099" Text="SOFT CONTACT"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="Label26" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="E - Mail:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txte_mail" runat="server" CausesValidation="True" 
                        Height="22px" Width="240px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                        ControlToValidate="txte_mail" ErrorMessage="*" 
                        ToolTip="Email id Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                        ControlToValidate="txte_mail" ErrorMessage="*" ToolTip="numeric value only" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="Label27" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Web URL:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtweb_url" runat="server" CausesValidation="True" 
                        Width="240px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                        ControlToValidate="txtweb_url" ErrorMessage="*" 
                        ToolTip="Web URL Must Be Entered"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="Label28" runat="server" Font-Bold="False" Font-Names="Arial" 
                        Font-Size="Small" ForeColor="Blue" Text="Ownership"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlownership" runat="server" Height="22px" Width="121px">
                        <asp:ListItem>Goverment</asp:ListItem>
                        <asp:ListItem>Trust</asp:ListItem>
                        <asp:ListItem>Proprety</asp:ListItem>
                        <asp:ListItem>Partnership</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="Label29" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Type of Organisation"></asp:Label>
                    &nbsp;
                </td>
                <td>
                    <asp:DropDownList ID="ddlorganisation" runat="server" AutoPostBack="True">
                        <asp:ListItem>Select Organization</asp:ListItem>
                        <asp:ListItem>Hospital</asp:ListItem>
                        <asp:ListItem>Day Care Center</asp:ListItem>
                        <asp:ListItem>Clinic</asp:ListItem>
                        <asp:ListItem>Pharmacy</asp:ListItem>
                        <asp:ListItem>Helth Care Center</asp:ListItem>
                        <asp:ListItem>Laboratory</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="Label38" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="#000099" Text="Password:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" CausesValidation="True" 
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
                        ControlToValidate="txtpassword" ErrorMessage="*" ToolTip="password is must"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        &nbsp;<asp:Panel ID="Panel11" runat="server" Height="32px" style="margin-left: 0px" 
            Width="525px">
            <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                Checked="True" GroupName="sp" Text="General" />
            &nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                GroupName="sp" Text="Single Specialist" />
            &nbsp;
            <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
                GroupName="sp" Text="Multi Specialist" />
        </asp:Panel>
        <asp:Panel ID="single_specialist" runat="server" Height="27px" Visible="False" 
                Width="735px" style="margin-top: 0px">
                <asp:DropDownList ID="ddlspeciality" runat="server">
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
                </asp:panel>
                <asp:Panel ID="Panel12" runat="server" Width="855px" Visible="False">
                    <asp:DropDownList ID="ddlspeciality1" runat="server">
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
                    &nbsp;<asp:DropDownList ID="ddlspeciality2" runat="server">
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
                    &nbsp;<asp:DropDownList ID="ddlspeciality3" runat="server">
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
                    &nbsp;
                    <asp:DropDownList ID="ddlspeciality4" runat="server">
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
                </asp:Panel>
            
    </asp:Panel>    
        &nbsp;<center>
            <asp:Button ID="btnsubmit" runat="server" Font-Bold="True" Font-Names="Arial" 
            onclick="Button1_Click" style="height: 26px" Text="Submit" Height="48px" 
                BackColor="Green" ForeColor="White" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Arial" 
            Text="Cancel" BackColor="Green" ForeColor="White" /></center>
            <br />
            <br />
          
    </div>
 
    </form>

</body>
</html>
