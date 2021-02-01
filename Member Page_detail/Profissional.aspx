<%@ Page Language="VB"MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Profissional.aspx.vb" Inherits="Profissional" %>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        
        <asp:Panel ID="Panel6" runat="server" Height="1168px" Width="1171px" 
            BorderColor="#0033CC" style="margin-bottom: 0px">
            &nbsp;<asp:LinkButton ID="LinkButton13" runat="server" CausesValidation="False" 
                PostBackUrl="~/Member_Page.aspx">Home</asp:LinkButton>
            &nbsp;&gt;<asp:LinkButton ID="LinkButton14" runat="server" CausesValidation="False" 
                PostBackUrl="~/Member Page_detail/Member_of_information.aspx">Information</asp:LinkButton>
            &nbsp;&gt;Proffesional Information&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;<br />
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

       <center> <asp:Label ID="Label15" runat="server" Font-Size="X-Large" ForeColor="White" 
            Text="Proffesional Information" BackColor="Green" Font-Bold="True"></asp:Label></center>

            &nbsp;<br />
            <br />
            <table align ="center" class="style1">
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Proffesional:-"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblpoccupation" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Occupation:-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlPROoccupation" runat="server" AutoPostBack="True" 
                            Height="22px" Width="150px">
                            <asp:ListItem Selected="True"> Select Occupation</asp:ListItem>
                            <asp:ListItem>Service</asp:ListItem>
                            <asp:ListItem>Business</asp:ListItem>
                            <asp:ListItem>Home</asp:ListItem>
                            <asp:ListItem>Student</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="ddlPROoccupation" ErrorMessage="*" 
                            InitialValue="Select Occupation" ToolTip="Not blank select "></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Panel ID="Panel1_service_office" runat="server" Visible="False">
            <table align="center" class="style1">
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblpoffice_name" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Office Name:-"></asp:Label>
                        &nbsp;</td>
                    <td class="style3">
                        <asp:TextBox ID="txtpofficename" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtpofficename" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblpoffice_id_number" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Office Number:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpoffice_id_number" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                            ControlToValidate="txtpoffice_id_number" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblpaddress" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Address:-"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtPROaddress" runat="server" Height="22px" 
                            TextMode="MultiLine" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            ControlToValidate="txtPROaddress" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblpphpne_number" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Phone Number:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPROstd_code" runat="server" Height="22px" MaxLength="5" 
                            Width="56px"></asp:TextBox>
                        <asp:TextBox ID="txtPROphone_number" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                            runat="server" ControlToValidate="txtPROstd_code" ErrorMessage="*" 
                            ToolTip="give std code in numeric format" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" 
                            ControlToValidate="txtPROstd_code" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtPROphone_number" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                            ControlToValidate="txtPROphone_number" ErrorMessage="*" 
                            ToolTip="givea landline no in numeric formet" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblpemailid" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="E-mail ID:-"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtPROemailid" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="txtPROemailid" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtPROemailid" ErrorMessage="#" 
                            ToolTip="GIVE IN PROPER FORMET" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblpwebsite" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Website:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPROwebsite" runat="server" CausesValidation="True" 
                            Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="txtPROwebsite" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtPROwebsite" ErrorMessage="#" 
                            ToolTip="GIVE IN PROPER FORMET" 
                            ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblPROmonthlyincome" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Monthly Income:-"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtpmonthlyincome" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                            ControlToValidate="txtpmonthlyincome" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblpannual_income" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Annual Income:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPROannualincome" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            ControlToValidate="txtPROannualincome" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblDesignation" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Designation:-"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtodesignation" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                            ControlToValidate="txtPROannualincome" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            </asp:Panel>
    <br />
<asp:Panel ID="Panel1_Student" runat="server" Visible="False" Height="253px">
            <table align="center" class="style1">
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblpschool_uni" runat="server" Font-Bold="True" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="School/University:-"></asp:Label>
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblinstitute" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Instituate:-"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtPROinstitute" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                            ControlToValidate="txtPROinstitute" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lblqualification" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Qualificaation:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPROqUalification" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                            ControlToValidate="txtPROqUalification" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblyear" runat="server" Font-Bold="False" Font-Italic="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Year:-"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtsuyear" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                            ControlToValidate="txtsuyear" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblextra_curricular_activity" runat="server" Font-Bold="True" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Extra Curricular Activities:-"></asp:Label>
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lbleactivities" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Activities:-"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtPROactivities" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                            ControlToValidate="txtPROactivities" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lblhobbies" runat="server" Font-Bold="False" Font-Italic="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Hobbies:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPROhobbies" runat="server" Height="22px" 
                            style="width: 128px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                            ControlToValidate="txtPROhobbies" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblrecognitions" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Recognitions:-"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtPROrecognition" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                            ControlToValidate="txtPROrecognition" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lblclub_membership" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Club Memberships:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPROclub_membership" runat="server" Height="22px" 
                            Width="122px"></asp:TextBox>
                        <font-bold="true" forecolor="White" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                            ControlToValidate="txtPROclub_membership" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
</asp:Panel> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;

            <br />
            <table align="center" class="style1">
                <tr>
                    <td class="style7">
                        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Emergency Contact Person:-"></asp:Label>
                    </td>
                    <td class="style8">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblecpname" runat="server" Font-Bold="False" Font-Size="Medium" 
                            ForeColor="Blue" Text=" Name:-"></asp:Label>
                    </td>
                    <td class="style8">
                        <asp:TextBox ID="txtecpname1" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtecpname1" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtecpname2" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtecpname2" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtecpname3" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtecpname3" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblecpcontactno" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Contact No:-"></asp:Label>
                    </td>
                    <td class="style8">
                        <asp:TextBox ID="txtecpstd_code" runat="server" Height="22px" MaxLength="5" 
                            Width="56px"></asp:TextBox>
                        &nbsp;<asp:TextBox ID="txtecpcontectno" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" 
                            ControlToValidate="txtecpstd_code" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator14" 
                            runat="server" ControlToValidate="txtecpstd_code" ErrorMessage="*" 
                            ToolTip="give std code in numeric format" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtecpcontectno" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                            ControlToValidate="txtecpcontectno" ErrorMessage="*" 
                            ToolTip="givea contact no no in numeric formet" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblecprelationship" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Relationship:-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlrelationship" runat="server" AutoPostBack="True" 
                            Height="21px" Width="121px">
                            <asp:ListItem>Select Relationship</asp:ListItem>
                            <asp:ListItem>Mother</asp:ListItem>
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
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="ddlrelationship" ErrorMessage="*" InitialValue="Mother" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblecpfamilydoctor" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Family Doctor:-"></asp:Label>
                    </td>
                    <td class="style8">
                        <asp:TextBox ID="txtcpfamilydoctor" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtcpfamilydoctor" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblecpqualification" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Qualification:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtecpqualification" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                            ControlToValidate="txtecpqualification" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblcepmobilenumber" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Mobile Number:-"></asp:Label>
                    </td>
                    <td class="style8">
                        <asp:TextBox ID="txtmobilenumber" runat="server" Height="22px" MaxLength="10" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtmobilenumber" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtmobilenumber" ErrorMessage="*" ToolTip="Enter number" 
                            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblecplandlinenumber" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Landline Number:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtstd_code" runat="server" Height="22px" MaxLength="5" 
                            Width="56px"></asp:TextBox>
                        <asp:TextBox ID="txtlandlinenumber" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator15" 
                            runat="server" ControlToValidate="txtstd_code" ErrorMessage="*" 
                            ToolTip="give std code in numeric format" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" 
                            ControlToValidate="txtstd_code" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtlandlinenumber" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                            ControlToValidate="txtlandlinenumber" ErrorMessage="*" 
                            ToolTip="givea landline no in numeric formet" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblecpemailid" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="E-mail Id:-"></asp:Label>
                    </td>
                    <td class="style8">
                        <asp:TextBox ID="txtecpemailid" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                            ControlToValidate="txtecpemailid" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="txtecpemailid" ErrorMessage="*" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:Label ID="Label10" runat="server" Font-Size="Small" 
                            Text="[ex:--abc@gmail.com]"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblecpaddress" runat="server" Font-Bold="True" 
                            Font-Size="Medium" ForeColor="Blue" Text="Address:-"></asp:Label>
                    </td>
                    <td class="style8">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblphouse_number" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="House Number:-"></asp:Label>
                    </td>
                    <td class="style8">
                        <asp:TextBox ID="txtpphouse_number" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtpphouse_number" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="txtpphouse_number" ErrorMessage="*" 
                            ToolTip="give a house no in numeric format" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblpstreetaddress0" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Street Address:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtppstreetaddress" runat="server" Height="22px" 
                            TextMode="MultiLine" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                            ControlToValidate="txtppstreetaddress" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblparea" runat="server" Font-Bold="False" Font-Italic="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Area:-"></asp:Label>
                    </td>
                    <td class="style8">
                        <asp:DropDownList ID="ddlparea" runat="server" AutoPostBack="True" 
                            Height="22px" Width="121px">
                            <asp:ListItem Selected="True">Select Area</asp:ListItem>
                            <asp:ListItem>manjalpur</asp:ListItem>
                            <asp:ListItem>op road</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
                            ControlToValidate="ddlparea" ErrorMessage="*" InitialValue="Select Area" 
                            ToolTip="Not blank select any one city"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblppincode" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Pin Code:-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlppincode" runat="server" AutoPostBack="True" 
                            Height="22px" Width="121px">
                            <asp:ListItem Selected="True">Select Pin code</asp:ListItem>
                            <asp:ListItem>390011</asp:ListItem>
                            <asp:ListItem>390011</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
                            ControlToValidate="ddlppincode" ErrorMessage="*" InitialValue="Select Pin code" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblpstate" runat="server" Font-Bold="False" Font-Italic="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="State:-"></asp:Label>
                    </td>
                    <td class="style8">
                        <asp:DropDownList ID="ddlpstate" runat="server" AutoPostBack="True" 
                            Height="22px" Width="121px">
                            <asp:ListItem Selected="True">Select State</asp:ListItem>
                            <asp:ListItem>gujarat</asp:ListItem>
                            <asp:ListItem>bihar</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                            ControlToValidate="ddlpstate" ErrorMessage="*" InitialValue="Select State" 
                            ToolTip="Not blank select any one city"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblpcontry" runat="server" Font-Bold="False" Font-Italic="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Country:-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlpcountry" runat="server" AutoPostBack="True" 
                            Height="22px" Width="121px">
                            <asp:ListItem Selected="True">select country</asp:ListItem>
                            <asp:ListItem>Bharuch</asp:ListItem>
                            <asp:ListItem>Vadodara</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                            ControlToValidate="ddlpcountry" ErrorMessage="*" InitialValue="select country" 
                            ToolTip="Not blank select any one city"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblpcity" runat="server" Font-Bold="False" Font-Italic="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="City:-"></asp:Label>
                    </td>
                    <td class="style8">
                        <asp:DropDownList ID="ddlpcity" runat="server" AutoPostBack="True" 
                            Height="22px" Width="121px">
                            <asp:ListItem Selected="True">Select City</asp:ListItem>
                            <asp:ListItem>baroda</asp:ListItem>
                            <asp:ListItem>bharuch</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                            ControlToValidate="ddlpcity" ErrorMessage="*" InitialValue="Select City" 
                            ToolTip="Not blank select any one city"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>

        &nbsp;<center>    <asp:Button ID="btnsubmit" runat="server" BackColor="Green" Font-Bold="True" 
            ForeColor="White" Text="Submit" />
&nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="Green" 
            Font-Bold="True" ForeColor="White" /></center>
        &nbsp; 
   
    </asp:Panel> 
    </asp:Content> 
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    
    <style type="text/css">
        .style1
        {
            width: 437px;
            height: 62px;
        }
        .style3
        {
            width: 198px;
        }
        .style4
        {
            width: 213px;
        }
        .style5
        {
            width: 195px;
        }
        .style6
        {
            width: 196px;
        }
        .style7
        {
            width: 233px;
        }
        .style8
        {
            width: 277px;
        }
    </style>


</asp:Content>
 