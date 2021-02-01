<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="manpower.aspx.vb" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="710px" 
        Width="1171px">
        &nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;
        <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
            Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx">&lt;&lt; HOME</asp:LinkButton>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="#009900" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="X-Large" ForeColor="White" 
            style="text-align: justify" Text="MANPOWER"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" 
                        Font-Size="Small" ForeColor="Blue" Text="Medical Staff : -"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicalstaff" runat="server" Height="22px" 
                        Width="121px">
                        <asp:ListItem>Consultant</asp:ListItem>
                        <asp:ListItem>SuperSpecility</asp:ListItem>
                        <asp:ListItem>Specility</asp:ListItem>
                        <asp:ListItem>PGD</asp:ListItem>
                        <asp:ListItem>Duty MO</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="ddlmedicalstaff" ErrorMessage="*" 
                        ToolTip="Medical staff Must Be Selectede "></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TXTMEDICAL_STAFF" runat="server" Width="50px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="TXTMEDICAL_STAFF" ErrorMessage="*" 
                        ToolTip="NO Medical staff Must Be Selectede "></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TXTMEDICAL_STAFF" ErrorMessage="*" ToolTip="NUMERIC ONLY" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial" 
                        Font-Size="Small" ForeColor="Blue" Text="Paramedical Staff : -"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlparamedicalstaff" runat="server" Height="22px" 
                        Width="121px">
                        <asp:ListItem>Nurses</asp:ListItem>
                        <asp:ListItem>Dietician</asp:ListItem>
                        <asp:ListItem>Physiothearipist</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="ddlparamedicalstaff" ErrorMessage="*" 
                        ToolTip="Paramedical Staff Must Be Selectede "></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Arial" 
                        Font-Size="Small" ForeColor="Blue" Text="Nurses:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlnurses" runat="server" Height="22px" Width="121px">
                        <asp:ListItem>PG Nursing</asp:ListItem>
                        <asp:ListItem>BPNA/ B.Sc.</asp:ListItem>
                        <asp:ListItem>GNM</asp:ListItem>
                        <asp:ListItem>ANM</asp:ListItem>
                        <asp:ListItem>Trained</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="ddlnurses" ErrorMessage="*" 
                        ToolTip="Nurses Must Be Selectede "></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtnurses" runat="server" Width="50px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="txtnurses" ErrorMessage="*" ToolTip="value cant be blank"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txtnurses" ErrorMessage="*" ToolTip="NUMERIC ONLY" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Dietician"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Physiotherapist"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:TextBox ID="txtdietician" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtdietician" ErrorMessage="*" 
                        ToolTip="Dietician Must Be Entered "></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="txtdietician" ErrorMessage="*" ToolTip="NUMERIC ONLY" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtphysiotherapist" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtphysiotherapist" ErrorMessage="*" 
                        ToolTip="Physiotherapist Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="txtphysiotherapist" ErrorMessage="*" ToolTip="NUMERIC ONLY" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Arial" 
                        Font-Size="Small" ForeColor="Blue" Text="Administration : -"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label10" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Higher Mangement"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label11" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Department"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Label ID="Label12" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Name"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label13" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Mobile Number
"></asp:Label>
                </td>
                <td class="style6">
                    <asp:Label ID="Label14" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text=" Email ID"></asp:Label>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:DropDownList ID="ddlhighermanagement" runat="server" Height="22px" 
                        Width="145px">
                        <asp:ListItem>Designation</asp:ListItem>
                        <asp:ListItem>Owner / Trustee</asp:ListItem>
                        <asp:ListItem>Chief Exeutive Officer</asp:ListItem>
                        <asp:ListItem>Medical Director</asp:ListItem>
                        <asp:ListItem>General Manager</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="ddlhighermanagement" Display="Dynamic" ErrorMessage="*" 
                        ToolTip="Highere Management Must Be Selectede "></asp:RequiredFieldValidator>
                </td>
                <td class="style10">
                    <asp:DropDownList ID="ddldepartment" runat="server" Height="22px" Width="121px">
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Administration</asp:ListItem>
                        <asp:ListItem>Operations</asp:ListItem>
                        <asp:ListItem>Credit cell</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="ddldepartment" ErrorMessage="*" 
                        ToolTip="Department Must Be Selectede "></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txthname" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txthname" ErrorMessage="*" ToolTip="Name Must Be Entered"></asp:RequiredFieldValidator>
                </td>
                <td class="style12">
                    <asp:TextBox ID="txthmobilenumber" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtmmobilenumber" ErrorMessage="*" 
                        ToolTip="Mobile Number Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                        ControlToValidate="txthmobilenumber" ErrorMessage="*" ToolTip="NUMERIC ONLY" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style13">
                    <asp:TextBox ID="txthEmail_id" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txthEmail_id" ErrorMessage="*" 
                        ToolTip="Emailid Must Be  Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                        ControlToValidate="txthEmail_id" ErrorMessage="*" ToolTip="NUMERIC ONLY" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label19" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Middle Management"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label33" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Name"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Label ID="Label34" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Mobile Number
"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label35" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text=" Email ID"></asp:Label>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:DropDownList ID="ddlmiddlemangement" runat="server" Height="22px" 
                        Width="145px">
                        <asp:ListItem>Centre Head</asp:ListItem>
                        <asp:ListItem>Hospital Manager</asp:ListItem>
                        <asp:ListItem>Hospital Administrator</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="ddlmiddlemangement" ErrorMessage="*" 
                        ToolTip="Middle Management Must  Be Selected "></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtmname" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txtmname" ErrorMessage="*" ToolTip="Name Must Be Entered"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtmmobilenumber" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtmmobilenumber" ErrorMessage="*" 
                        ToolTip="Mobile Number Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txthmobilenumber" ErrorMessage="*" 
                        ToolTip="numeric is require" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtmEmail_id" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txthEmail_id" ErrorMessage="*" 
                        ToolTip="Emailid Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txthEmail_id" ErrorMessage="*" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="style6">
                    <asp:Button ID="Button7" runat="server" Text="Add" />
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label28" runat="server" Font-Names="Arial" Font-Size="Small" 
                        ForeColor="Blue" Text="Lower Management"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:DropDownList ID="ddllowermanagement" runat="server" Height="23px" 
                        Width="145px">
                        <asp:ListItem>Floor Manager</asp:ListItem>
                        <asp:ListItem>Receptionist</asp:ListItem>
                        <asp:ListItem>Billing Clerk</asp:ListItem>
                        <asp:ListItem>TPA Co-ordinator</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="ddllowermanagement" ErrorMessage="*" 
                        ToolTip="Lower Management Must Be Selectede "></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtlmgmt" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                        ControlToValidate="txtlmgmt" ErrorMessage="*" 
                        ToolTip="NO Medical staff Must Be Selectede "></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                        ControlToValidate="txtlmgmt" ErrorMessage="*" ToolTip="NUMERIC ONLY" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <center>
                        <asp:Button ID="Button1" runat="server" BackColor="#009900" ForeColor="White" 
                            Text="Submit" />
                    </center>
                </td>
                <td class="style5">
                    <center>
                        <asp:Button ID="Button2" runat="server" BackColor="#009900" ForeColor="White" 
                            Text="Cancel" />
                    </center>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
        </table>
    
    
      
</asp:Panel> 
</asp:content>

    

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">	



    <style type="text/css">
        .style1
        {
            width: 826px;
        }
        .style2
        {
            width: 186px;
        }
        .style3
        {
            width: 139px;
        }
        .style4
        {
            width: 149px;
        }
        .style5
        {
            width: 152px;
        }
        .style6
        {
            width: 218px;
        }
        .style8
        {
            width: 134px;
        }
        .style9
        {
            width: 186px;
            height: 12px;
        }
        .style10
        {
            width: 139px;
            height: 12px;
        }
        .style11
        {
            width: 149px;
            height: 12px;
        }
        .style12
        {
            width: 152px;
            height: 12px;
        }
        .style13
        {
            width: 218px;
            height: 12px;
        }
        .style14
        {
            width: 134px;
            height: 12px;
        }
    </style>
    
    </asp:content>