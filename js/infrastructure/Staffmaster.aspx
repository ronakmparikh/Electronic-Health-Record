<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="Staffmaster.aspx.vb" Inherits="Staffmaster" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="451px" 
        Width="1171px">
        <br />
&nbsp;<asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
            Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx">&lt;&lt;HOME</asp:LinkButton>
        <br />
        <table class="style20">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label21" runat="server" BackColor="#009900" Font-Bold="True" 
                        Font-Size="XX-Large" ForeColor="White" Text="STAFF MASTER"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style7">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Emp_id"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="txtemp_id" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtemp_id" ErrorMessage="*" 
                        ToolTip="Please Enter The Emp_id"></asp:RequiredFieldValidator>
                </td>
                <td class="style13">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Name"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="txtname" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="*" ToolTip="Please Enter The Name"></asp:RequiredFieldValidator>
                </td>
                <td class="style13">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Address"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtaddress" ErrorMessage="*" 
                        ToolTip="Please Enter The Address"></asp:RequiredFieldValidator>
                </td>
                <td class="style17">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Email_id"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtemail_id" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtemail_id" ErrorMessage="*" 
                        ToolTip="Please Enter The Email_id"></asp:RequiredFieldValidator>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Mobile no"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="txtmobile_no" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtmobile_no" ErrorMessage="*" 
                        ToolTip="Please Enter The Email_id"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtmobile_no" ErrorMessage="*" ToolTip="Enter Only Number" 
                        ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style13">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Govt reg no"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtgovt_regi_no" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtgovt_regi_no" ErrorMessage="*" 
                        ToolTip="Please Enter The Govt_reg_no"></asp:RequiredFieldValidator>
                </td>
                <td class="style17">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Category"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlcategory" runat="server" Height="22px" Width="121px">
                        <asp:ListItem>middle</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="ddlcategory" ErrorMessage="*" 
                        ToolTip="Please Select The Category"></asp:RequiredFieldValidator>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Type"></asp:Label>
                </td>
                <td class="style12">
                    <asp:DropDownList ID="ddltype" runat="server" Height="22px" Width="121px">
                        <asp:ListItem>doctor</asp:ListItem>
                        <asp:ListItem>nurse</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="ddltype" ErrorMessage="*" 
                        ToolTip="Please Select The Email_id"></asp:RequiredFieldValidator>
                </td>
                <td class="style13">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Designation"></asp:Label>
                </td>
                <td class="style5">
                    <asp:DropDownList ID="ddldesignation" runat="server" Height="22px" 
                        Width="121px">
                        <asp:ListItem>senior doc</asp:ListItem>
                        <asp:ListItem>senior nurse</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="ddldesignation" ErrorMessage="*" 
                        ToolTip="Please Select The Email_id"></asp:RequiredFieldValidator>
                </td>
                <td class="style17">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Dept no"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtdept_no" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtdept_no" ErrorMessage="*" 
                        ToolTip="Please Enter The Department Number"></asp:RequiredFieldValidator>
                </td>
                <td class="style16">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Dept Name"></asp:Label>
                </td>
                <td class="style11">
                    <asp:DropDownList ID="ddldepartment_name" runat="server" Height="22px" 
                        Width="121px">
                        <asp:ListItem>gyno</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="ddldepartment_name" ErrorMessage="*" 
                        ToolTip="Please Enter The Department"></asp:RequiredFieldValidator>
                </td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Qualification"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="txtqualification" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtqualification" ErrorMessage="*" 
                        ToolTip="Please Enter The Qualification"></asp:RequiredFieldValidator>
                </td>
                <td class="style13">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Basic Salary"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtbasic_salary" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txtbasic_salary" ErrorMessage="*" 
                        ToolTip="Please Enter The Basic Salary"></asp:RequiredFieldValidator>
                </td>
                <td class="style17">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Pan no"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtpan_no" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtpan_no" ErrorMessage="*" 
                        ToolTip="Please Enter The Pancard No"></asp:RequiredFieldValidator>
                </td>
                <td class="style16">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Bank A/c no"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtbank_ac_no" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtbank_ac_no" ErrorMessage="*" 
                        ToolTip="Please Enter The Bank A/C Number"></asp:RequiredFieldValidator>
                </td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Pf Reg no"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="txtpf_regi_no" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="txtpf_regi_no" ErrorMessage="*" 
                        ToolTip="Please Enter The Pf Regi_no"></asp:RequiredFieldValidator>
                </td>
                <td class="style13">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Date of Birth"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtdob" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="txtdob" ErrorMessage="*" ToolTip="Please Enter The DOB"></asp:RequiredFieldValidator>
                </td>
                <td class="style17">
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Date of Joining"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtdate_of_joining" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="txtdate_of_joining" ErrorMessage="*" 
                        ToolTip="Please Enter The Date of joining"></asp:RequiredFieldValidator>
                </td>
                <td class="style16">
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Type of Resident"></asp:Label>
                </td>
                <td class="style11">
                    <asp:DropDownList ID="ddltype_of_resident" runat="server" Height="22px" 
                        Width="121px">
                        <asp:ListItem>Resident</asp:ListItem>
                        <asp:ListItem>Non Resident</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                        ControlToValidate="ddltype_of_resident" ErrorMessage="*" 
                        ToolTip="Please Select The Type of Resident"></asp:RequiredFieldValidator>
                </td>
                <td class="style18">
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="code"></asp:Label>
                </td>
                <td class="style19">
                    <asp:TextBox ID="txtcode" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                        ControlToValidate="txtcode" ErrorMessage="*" ToolTip="Please Enter The Code"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
                <td class="style13">
                    <center>
                        <asp:Button ID="Btnadd" runat="server" BackColor="#009900" ForeColor="White" 
                            Height="25px" Text="Add" Width="50px" />
                    </center>
                </td>
                <td class="style5">
                    <center>
                        <asp:Button ID="Btnupdate" runat="server" BackColor="#009900" ForeColor="White" 
                            Text="Update" />
                    </center>
                </td>
                <td class="style17">
                    <center>
                        <asp:Button ID="Btndelete" runat="server" BackColor="#009900" ForeColor="White" 
                            Text="Delete" />
                    </center>
                </td>
                <td class="style3">
                    <center>
                        <asp:Button ID="Btnsearch" runat="server" BackColor="#009900" 
                            CausesValidation="False" ForeColor="White" Text="Search" />
                    </center>
                </td>
                <td class="style16">
                    <center>
                        <asp:Button ID="Btnreset" runat="server" BackColor="#009900" ForeColor="White" 
                            Text="Reset" />
                    </center>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        &nbsp;&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
            
    
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
<br /><br />
<br />
<br /></asp:Panel> 
</asp:content>

    

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">	

    <style type="text/css">
        .style1
        {}
        .style3
        {
            width: 138px;
        }
        .style5
        {
            width: 194px;
        }
        .style7
        {
            width: 93px;
        }
        .style11
        {
            width: 134px;
        }
        .style12
        {
            width: 145px;
        }
        .style13
        {
            width: 80px;
        }
        .style16
        {
            width: 109px;
        }
        .style17
        {
            width: 115px;
        }
        .style18
        {
            width: 36px;
        }
        .style19
        {
            width: 229px;
        }
        .style20
        {
            width: 100%;
        }
    </style>
    
    </asp:content>