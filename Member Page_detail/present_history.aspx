<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="present_history.aspx.vb" Inherits="present_history" %>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        
        <asp:Panel ID="Panel6" runat="server" Height="726px" Width="1171px">
    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton13" runat="server" 
                PostBackUrl="~/Member_Page.aspx" CausesValidation="False">Home</asp:LinkButton>
            &nbsp;&gt;<asp:LinkButton ID="LinkButton14" runat="server" 
            CausesValidation="False" 
            PostBackUrl="~/Member Page_detail/Member_of_information.aspx">Information</asp:LinkButton>
&nbsp;&gt;Present History<br />
    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
    
        <asp:Label ID="curent_vital_status" runat="server" BackColor="#009900" 
            ForeColor="White" Text="Present History" Font-Size="X-Large" 
            Font-Bold="True"></asp:Label>
    
            &nbsp;<br />
            <table align="center" class="style1">
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Current Vital Status:-"></asp:Label>
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        <asp:Label ID="lblcvs_patient_id" runat="server" Font-Size="Small" 
                            ForeColor="Blue" Text="Patient ID:-"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txtcvs_patientid" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblcvs_weight0" runat="server" Font-Size="Small" 
                            ForeColor="Blue" Text="Weight:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcvs_weight" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            ControlToValidate="txtcvs_weight" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator18" 
                            runat="server" ControlToValidate="txtcvs_weight" ErrorMessage="*" 
                            ToolTip="Give weight in numeric formet" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        <asp:Label ID="Label7" runat="server" Text="[k.g]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        <asp:Label ID="lblcvs_height" runat="server" Font-Size="Small" ForeColor="Blue" 
                            Text="Height:-"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txtcvs_height" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtcvs_height" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                            ControlToValidate="txtcvs_height" ErrorMessage="*" 
                            ToolTip="Give details of height in numeric formet" 
                            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        <asp:Label ID="Label2" runat="server" Text="[cms]"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblcvs_hip2" runat="server" Font-Size="Small" ForeColor="Blue" 
                            Text="HIP:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcvs_hip" runat="server" AutoPostBack="True" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            ControlToValidate="txtcvs_hip" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator19" 
                            runat="server" ControlToValidate="txtcvs_hip" ErrorMessage="*" 
                            ToolTip="Give HIP in numeric formet" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        <asp:Label ID="Label8" runat="server" Text="[Hip]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        <asp:Label ID="lblcvs_waist" runat="server" Font-Size="Small" ForeColor="Blue" 
                            Text="Waist:-"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txtcvs_waist" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtcvs_waist" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                            ControlToValidate="txtcvs_waist" ErrorMessage="*" 
                            ToolTip="Give waist in numeric formet" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        <asp:Label ID="Label4" runat="server" Text="[cms]"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblcvs_hip3" runat="server" Font-Size="Small" ForeColor="Blue" 
                            Text="BMI Status:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcvs_bmi_stutus" runat="server" Height="22px" 
                            ReadOnly="True" Width="121px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        <asp:Label ID="lblcvs_hip0" runat="server" Font-Size="Small" ForeColor="Blue" 
                            Text="BMI:-"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txtcvs_bmi" runat="server" Height="22px" ReadOnly="True" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtcvs_bmi" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label6" runat="server" Text="[bmi]"></asp:Label>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        <asp:Label ID="lbltemprature" runat="server" Font-Size="Small" ForeColor="Blue" 
                            Text="Temprature:-"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txttemprature" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txttemprature" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator17" 
                            runat="server" ControlToValidate="txttemprature" ErrorMessage="*" 
                            ToolTip="Give temprature in numeric formet" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblcvs_blood_pressure0" runat="server" Font-Size="Small" 
                            ForeColor="Blue" Text="Blood Pressure:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcvs_blood_pressure" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="txtcvs_blood_pressure" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator20" 
                            runat="server" ControlToValidate="txtcvs_blood_pressure" ErrorMessage="*" 
                            ToolTip="Give blood pressure details h in numeric formet" 
                            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        <asp:Label ID="lblcvs_pulse" runat="server" Font-Size="Small" 
                            ForeColor="Blue" Text="Pulse:-"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txtcvs_pulse" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                            runat="server" ControlToValidate="txtcvs_pulse" ErrorMessage="*" 
                            ToolTip="Give pulse in numeric formet" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtcvs_pulse" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblcvs_respiratory_rate0" runat="server" Font-Size="Small" 
                            ForeColor="Blue" Text="Respiratory Rate:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtrespiratory_rate" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                            ControlToValidate="txtrespiratory_rate" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator21" 
                            runat="server" ControlToValidate="txtrespiratory_rate" ErrorMessage="*" 
                            ToolTip="Give respiratory rate details in numeric formet" 
                            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        <asp:Label ID="lblcvs_blood_sugar" runat="server" Font-Size="Small" ForeColor="Blue" 
                            Text="Blood Sugar:-"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txtcvs_blood_sugar" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtcvs_blood_sugar" ErrorMessage="*" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator14" 
                            runat="server" ControlToValidate="txtcvs_blood_sugar" ErrorMessage="*" 
                            ToolTip="Give Blood Sugar in numeric formet" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblcvs_blood_group1" runat="server" ForeColor="Blue" 
                            Text="Blood Group:-" Font-Size="Small"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlblood_group" runat="server" AutoPostBack="True" Height="24px" 
                            Width="138px">
                            <asp:ListItem Selected="True">Select Blood Group</asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>AB</asp:ListItem>
                            <asp:ListItem>O</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:Label ID="lblcvs_blood_group2" runat="server" ForeColor="Blue" Text="Rh:-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlrh" runat="server" AutoPostBack="True" Height="26px" 
                            Width="138px">
                            <asp:ListItem Selected="True">Select + or -</asp:ListItem>
                            <asp:ListItem>+</asp:ListItem>
                            <asp:ListItem>-</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                            ControlToValidate="ddlrh" ErrorMessage="*" InitialValue="Select + or -" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<center><asp:Button ID="btnsubmit0" 
                runat="server" BackColor="Green" Font-Bold="True" ForeColor="White" 
                Text="Insert" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsubmit3" runat="server" BackColor="Green" Font-Bold="True" 
                ForeColor="White" Text="reset" /></center>
            &nbsp;&nbsp;
            <asp:Button ID="btnsubmit1" runat="server" BackColor="Green" Font-Bold="True" 
                ForeColor="White" Text="Delete" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsubmit2" runat="server" BackColor="Green" Font-Bold="True" 
                ForeColor="White" style="height: 26px" Text="Search" />
            &nbsp;
            <asp:Button ID="btnsubmit4" runat="server" BackColor="Green" Font-Bold="True" 
                ForeColor="White" Height="26px" style="height: 26px" Text="Update" 
                Width="67px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
 
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
 
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
 
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    
</asp:Panel>
</asp:content> 
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 176px;
        }
        .style3
        {
            width: 81px;
        }
        .style4
        {
            width: 179px;
        }
        .style5
        {
            width: 52px;
        }
    </style>


</asp:Content>
 
