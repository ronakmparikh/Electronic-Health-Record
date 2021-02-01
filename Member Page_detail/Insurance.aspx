<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Insurance.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        
        <asp:Panel ID="panel_ofinsurance" runat="server" Height="2146px" Width="1207px">



            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton13" runat="server" 
                PostBackUrl="~/Member_Page.aspx" CausesValidation="False">Home</asp:LinkButton>
            &nbsp;&gt;<asp:LinkButton ID="LinkButton14" runat="server" 
            CausesValidation="False" 
            PostBackUrl="~/Member Page_detail/Member_of_information.aspx">Information</asp:LinkButton>
&nbsp;&gt;Insurance<br />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblinsurancedetail" runat="server" BackColor="Green" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Insurance Detail"></asp:Label>
            &nbsp;<br />
            <br />
           
            <table align ="center" class="style1">
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblmediclaim" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Mediclaim:"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:RadioButton ID="rdbmadiclaimyes" runat="server" AutoPostBack="True" 
                            ForeColor="Navy" GroupName="mediclaim" Text="Yes" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdbmediclaimno" runat="server" AutoPostBack="True" 
                            Checked="True" ForeColor="Navy" GroupName="mediclaim" Text="NO" />
                    </td>
                </tr>
            </table>
            <br />
          
            
          
            
             <asp:Panel ID="Panel_of_mediclaim" runat="server" Visible="False" 
                Height="512px">
            <table align="center" class="style1">
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblminsurancecompany" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Insurance Company:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="ddlminsurancecompany" runat="server" 
                            AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" 
                            DataTextField="company_name" DataValueField="company_name" Height="22px" 
                            Width="185px">
                            <asp:ListItem Selected="True">Select Insurance Company</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblmpolicynumber" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Policy Number:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtmpolicynumber" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtmpolicynumber" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblmpolicytype" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Policy Type:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmpolicytype" runat="server" Height="22px" 
                            style="margin-bottom: 0px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtmpolicytype" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblmpolicystartdate" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Policy Start Date:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtmpolicy_sdate" runat="server" AutoPostBack="True" 
                            Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator76" runat="server" 
                            ControlToValidate="txtmpolicy_sdate" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblpolicystartdate0" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Policy End Date:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmpolicy_edate" runat="server" AutoPostBack="True" 
                            Height="22px" Width="121px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator77" runat="server" 
                            ControlToValidate="txtmpolicy_edate" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblmsuminsure" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Sum Insure:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtmsuminsure" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtcsuminsure" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblmcummulativebonus" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Cummulative Bonus:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmcummulativebonus" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="txtmcummulativebonus" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblmpremiumamount" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Premium Amount:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtmpremiumamount" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtmpremiumamount" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblmpreviouspolicies" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Previous Policies:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmpreviouspolicies" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtmpreviouspolicies" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblmtpa" runat="server" Font-Bold="False" Font-Italic="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="TPA:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="ddlminsurancecompany0" runat="server" 
                            AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource5" 
                            DataTextField="tpa_name" DataValueField="tpa_name" Height="22px" 
                            style="height: 22px" Width="185px">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblfamilydoctor" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Agent:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmagent" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtmagent" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblmqualification" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Agent code:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtmagentcode" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtmagentcode" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblagentcontact" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Agentcontact:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmagentcontact" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                            ControlToValidate="txtmagentcontact" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="txtmagentcontact" ErrorMessage="*" 
                            ToolTip="not blank and give proper format of agent contact" 
                            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblmaddress" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Address:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtmaddress" runat="server" Height="22px" style="width: 128px" 
                            TextMode="MultiLine" Width="121px"></asp:TextBox>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblmmobilenumber" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Mobile Number:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmmobilenumber" runat="server" AutoPostBack="True" 
                            Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator75" runat="server" 
                            ControlToValidate="txtmmobilenumber" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtmmobilenumber" ErrorMessage="*" 
                            ToolTip="not blank and give proper format of mobile no" 
                            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblmlandlinenumber" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Landline Number:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtstd_code" runat="server" Height="22px" MaxLength="5" 
                            Width="56px"></asp:TextBox>
                        <asp:TextBox ID="txtmlandlinenumber" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtmlandlinenumber" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="txtmlandlinenumber" ErrorMessage="*" 
                            ToolTip="give a numeric data" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtstd_code" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtstd_code" ErrorMessage="*" 
                            ToolTip="not blank and give proper format of std code" 
                            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblmemail" runat="server" Font-Bold="False" Font-Italic="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="E-Mail:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmemail" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" 
                            ControlToValidate="txtmemail" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtmemail" ErrorMessage="*" 
                            ToolTip="not blank and give proper formet of email" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:Label ID="Label10" runat="server" Font-Size="Small" 
                            Text="[ex:abc@gmail.com]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblmaddress0" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Upload Document"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:FileUpload ID="mediclaim_upload" runat="server" />
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            </asp:panel>
          
           
            &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [company_name] FROM [company_master]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [tpa_name] FROM [company_master]"></asp:SqlDataSource>
            <br />
        
      
            <table align="center" class="style1">
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblpersonalaccident" runat="server" Font-Bold="True" 
                            Font-Size="Large" ForeColor="Blue" Text="Personal Accident:"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:RadioButton ID="rdbpersonalaccidentyes" runat="server" AutoPostBack="True" 
                            ForeColor="Navy" GroupName="personal_accident" Text="Yes" />
                    </td>
                    <td>
                        <asp:RadioButton ID="personal_accidentno" runat="server" AutoPostBack="True" 
                            Checked="True" ForeColor="Navy" GroupName="personal_accident" Text="NO" />
                    </td>
                </tr>
            </table>
            <br />
                 <asp:Panel ID="panel_of_personal_accident" runat="server" Visible="False" 
                Height="376px">
            <table align="center" class="style1">
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblpinsurancecompany" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Insurance Company:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="ddlpinsurancecompany" runat="server" 
                            AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource2" 
                            DataTextField="company_name" DataValueField="company_name" Height="22px" 
                            style="height: 22px; margin-left: 0px;" Width="185px">
                            <asp:ListItem Selected="True">Select Insurance Company</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
                            ControlToValidate="ddlpinsurancecompany" ErrorMessage="*" 
                            InitialValue="Select Insurance Company" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblppolicynumber" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Policy Number:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtppolicynumber" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            ControlToValidate="txtppolicynumber" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblppolicytype" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Policy Type:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtppolicytype" runat="server" Height="22px" 
                            style="margin-bottom: 0px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="txtppolicytype" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblppolicystartdate1" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Policy Start Date:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtppolicy_sdate" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator78" runat="server" 
                            ControlToValidate="txtppolicy_sdate" ErrorMessage="*" InitialValue="Year" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblppolicystartdate" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Policy End Date:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtppolicy_edate" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator62" runat="server" 
                            ControlToValidate="txtppolicy_edate" ErrorMessage="*" InitialValue="Year" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblpsuminsure" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Sum Insure:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtpsuminsure" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                            ControlToValidate="txtpsuminsure" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblpcummulativebonus" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Cummulative Bonus:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpcummulativebonus" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                            ControlToValidate="txtpcummulativebonus" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblppremiumamount" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Premium Amount:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtppremiumamount" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                            ControlToValidate="txtppremiumamount" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblppreviouspolicies" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Previous Policies:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtppreviouspolicies" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                            ControlToValidate="txtppreviouspolicies" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblmaddress1" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Upload Document"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:FileUpload ID="personal_accident_upload" runat="server" />
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
                </asp:Panel>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [company_name] FROM [company_master]">
            </asp:SqlDataSource>
            <table align="center" class="style1">
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblcriticalillness" runat="server" Font-Bold="True" 
                            Font-Size="Large" ForeColor="Blue" Text="Critical Illness:"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:RadioButton ID="rdbcritcalyes" runat="server" AutoPostBack="True" 
                            ForeColor="Navy" GroupName="critical" Text="Yes" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdbcriticalno" runat="server" AutoPostBack="True" 
                            Checked="True" ForeColor="Navy" GroupName="critical" Text="NO" />
                    </td>
                </tr>
            </table>
            <br /><asp:Panel ID="Panel_of_Critical_illness" runat="server" Visible="False" 
                Height="391px">
            <table align="center" class="style1">
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblcinsurancecompany" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Insurance Company:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="ddlcinsurancecompany" runat="server" 
                            AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource3" 
                            DataTextField="company_name" DataValueField="company_name" Height="22px" 
                            style="height: 22px" Width="185px">
                            <asp:ListItem Selected="True">Select Insurance Company</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                            ControlToValidate="ddlcinsurancecompany" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblcpolicynumber" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Policy Number:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtcpolicynumber" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                            ControlToValidate="txtcpolicynumber" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblcpolicytype" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Policy Type:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcpolicytype" runat="server" Height="22px" 
                            style="margin-bottom: 0px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                            ControlToValidate="txtcpolicytype" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblcpolicystartdate2" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Policy Start Date:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtcpolicy_sdate" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator65" runat="server" 
                            ControlToValidate="txtcpolicy_sdate" ErrorMessage="*" InitialValue="Year" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblcpolicystartdate" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Policy End Date:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcpolicy_edate" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator66" runat="server" 
                            ControlToValidate="txtcpolicy_edate" ErrorMessage="*" InitialValue="Date" 
                            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblcsuminsure" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Sum Insure:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtcsuminsure" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                            ControlToValidate="txtcsuminsure" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblccummulativebonus0" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Overline="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Cummulative Bonus:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txccummulativebonus" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                            ControlToValidate="txccummulativebonus" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblcpremiumamount" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Premium Amount:-"></asp:Label>
                        &nbsp;</td>
                    <td class="style6">
                        <asp:TextBox ID="txtcpremiumamount" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                            ControlToValidate="txtcpremiumamount" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblcpreviouspolicies" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Previous Policies:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcpreviouspolicies" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                            ControlToValidate="txtcpreviouspolicies" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="lblctpa" runat="server" Font-Bold="False" Font-Italic="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="TPA:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="ddlctpa" runat="server" AppendDataBoundItems="True" 
                            AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="tpa_name" 
                            DataValueField="tpa_name" Height="22px" style="height: 22px" Width="185px">
                            <asp:ListItem Selected="True">Select TPA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblmaddress2" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Upload Document"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="critical_illness_upload" runat="server" />
                    </td>
                </tr>
            </table>
            </asp:Panel>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [company_name] FROM [company_master]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [tpa_name] FROM [company_master]"></asp:SqlDataSource>
            <table align="center" class="style1">
                <tr>
                    <td class="style2">
                        <asp:Label ID="lbllifeinsurance" runat="server" Font-Bold="True" 
                            Font-Size="Large" ForeColor="Blue" Text="Life Insurance:"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:RadioButton ID="rdblife_insurance1_yes" runat="server" AutoPostBack="True" 
                            ForeColor="Navy" GroupName="life" Text="Yes" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdblife_insurance_no" runat="server" AutoPostBack="True" 
                            Checked="True" ForeColor="Navy" GroupName="life" Text="NO" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Panel ID="panel_of_lifeinsurance" runat="server" Visible="False" 
            Height="216px">
            <table align="center" class="style1">
                <tr>
                    <td class="style8">
                        <asp:Label ID="lbllinsurancecompany" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Insurance Company:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="ddllinsurancecompany" runat="server" 
                            AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource4" 
                            DataTextField="company_name" DataValueField="company_name" Height="22px" 
                            style="height: 22px" Width="185px">
                            <asp:ListItem Selected="True">Select Insurance Company</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                            ControlToValidate="ddllinsurancecompany" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lbllpolicynumber" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Policy Number:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtlpolicynumber" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                            ControlToValidate="txtlpolicynumber" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="lbllpolicytype" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Policy Type:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtlpolicytype" runat="server" Height="22px" 
                            style="margin-bottom: 0px" Width="121px"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lbllsuminsure" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Sum Insure:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtlsuminsure" runat="server" Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                            ControlToValidate="txtlsuminsure" ErrorMessage="*" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="lbllpolicymaturitytdate" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Policy Maturity Date:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtmaturity_date" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator71" runat="server" 
                            ControlToValidate="txtmaturity_date" ErrorMessage="*" InitialValue="Year" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lblrenewaldate" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Renewal Date:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtrenewal_date" runat="server" Height="22px" 
                            Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator74" runat="server" 
                            ControlToValidate="txtrenewal_date" ErrorMessage="*" InitialValue="Year" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="lblmaddress3" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" Text="Upload Document"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:FileUpload ID="life_insurance" runat="server" />
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [company_name] FROM [company_master]">
            </asp:SqlDataSource>
             </asp:Panel>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <center>  
              <asp:Button ID="btnsubmit" runat="server" BackColor="Green" Font-Bold="True" 
                  ForeColor="White" Text="Submit" />
            &nbsp;&nbsp;
            <asp:Button ID="btnreset" runat="server" BackColor="Green" Font-Bold="True" 
                ForeColor="White" Height="26px" Text="Cancel" /></center>
            <br />
          </asp:Panel>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    



</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    
    <style type="text/css">
        .style1
        {
            width: 475px;
            height: 305px;
        }
        .style2
        {
            width: 310px;
        }
        .style3
        {
            width: 240px;
        }
        .style4
        {
            width: 267px;
        }
        .style5
        {
            width: 207px;
        }
        .style6
        {
            width: 217px;
        }
        .style8
        {
            width: 268px;
        }
        </style>


</asp:Content>

