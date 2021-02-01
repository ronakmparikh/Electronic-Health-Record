<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="Misc_chg.aspx.vb" Inherits="infrastructure_Misc_chg" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 127px;
        }
        .style3
        {
            width: 159px;
        }
        .style4
        {
            width: 102px;
        }
        .style5
        {
            width: 127px;
            height: 26px;
        }
        .style6
        {
            width: 159px;
            height: 26px;
        }
        .style7
        {
            width: 102px;
            height: 26px;
        }
        .style8
        {
            height: 26px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  </center>  <asp:Panel ID="Panel1" runat="server" Height="563px" Width="956px">

        <br />
        &nbsp;&nbsp;<asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
            Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx">&lt;&lt; HOME</asp:LinkButton>
        <br />
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label7" runat="server" BackColor="#006600" Font-Bold="True" 
                        Font-Size="X-Large" ForeColor="White" Text="Miscellaneous charges"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                        Checked="True" Font-Bold="True" Font-Size="Small" ForeColor="Blue" 
                        GroupName="a1" Text="OPD" />
                    <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                        Font-Bold="True" Font-Size="Small" ForeColor="Blue" GroupName="a1" Text="IPD" />
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Recipt NO:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtreciptno" runat="server" CausesValidation="True" 
                        Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtreciptno" ErrorMessage="*" 
                        ToolTip="text box cannot be blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Date:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtdate" runat="server" CausesValidation="True" Height="22px" 
                        Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtdate" ErrorMessage="*" ToolTip="text box cannot be blank"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Patient_id:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlpatientid" runat="server" DataSourceID="Patient_id" 
                        DataTextField="patient_id" DataValueField="patient_id" Height="22px" 
                        Width="121px">
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Doctor_id:-"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddldoctorid" runat="server" DataSourceID="Doctor_id" 
                        DataTextField="doctor_id" DataValueField="doctor_id" Height="22px" 
                        Width="121px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Ambulance charge"></asp:Label>
                </td>
                <td class="style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="ambulance" DataTextField="Code" DataValueField="Code">
                    </asp:DropDownList>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        DataSourceID="ambulance" DataTextField="Service" DataValueField="Service">
                    </asp:DropDownList>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ambulance" 
                        DataTextField="Rate" DataValueField="Rate">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
                    <asp:Button ID="Button1" runat="server" BackColor="#006600" Font-Bold="True" 
                        Font-Size="Small" ForeColor="White" Text="Insert" />
                    <br />
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Room charges"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                        DataSourceID="roomchg" DataTextField="code" DataValueField="code">
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                        DataSourceID="roomchg" DataTextField="room_type" DataValueField="room_type">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
                        DataSourceID="roomchg" DataTextField="charges" DataValueField="charges">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" BackColor="#006600" Font-Bold="True" 
                        Font-Size="Small" ForeColor="White" Text="Insert" />
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;<asp:SqlDataSource ID="Doctor_id" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [doctor_id] FROM [doctor_personal_detail]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Patient_id" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [patient_id] FROM [personal_detail]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="ambulance" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Ambulance] WHERE ([Hospital_id] = @Hospital_id)">
            <SelectParameters>
                <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="roomchg" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Hospital_id], [code], [room_type], [charges] FROM [deposit] WHERE ([Hospital_id] = @Hospital_id)">
            <SelectParameters>
                <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
    </asp:Panel>
</center></asp:Content>

