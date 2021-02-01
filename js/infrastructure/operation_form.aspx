<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="operation_form.aspx.vb" Inherits="infrastructure_operation_form" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 112px;
        }
        .style3
        {
            width: 144px;
        }
        .style4
        {
            width: 119px;
        }
        .style5
        {
            width: 146px;
        }
        .style6
        {
            width: 136px;
        }
        .style7
        {
            width: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="588px" Width="956px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
            Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx">&lt;&lt; HOME</asp:LinkButton>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label7" runat="server" BackColor="#006600" Font-Bold="True" 
                        Font-Size="X-Large" ForeColor="White" style="text-align: center" 
                        Text="Operation Form"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
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
                    <asp:TextBox ID="txtreciptno" runat="server" Height="22px" Width="121px"></asp:TextBox>
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
                    <asp:TextBox ID="txtdate" runat="server" Height="22px" Width="121px"></asp:TextBox>
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
                        style="margin-bottom: 0px" Width="121px">
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
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Test Type:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddltest_type" runat="server" AutoPostBack="True" 
                        Height="22px" Width="121px">
                        <asp:ListItem Selected="True">select</asp:ListItem>
                        <asp:ListItem>OT General</asp:ListItem>
                        <asp:ListItem>OT Vescular</asp:ListItem>
                        <asp:ListItem>OT Laproscopic</asp:ListItem>
                        <asp:ListItem>Ot Neurology</asp:ListItem>
                        <asp:ListItem>OT Obstreic</asp:ListItem>
                        <asp:ListItem>OT Opthmic</asp:ListItem>
                        <asp:ListItem>OT pedratic</asp:ListItem>
                        <asp:ListItem>OT plastic Surgery</asp:ListItem>
                        <asp:ListItem>OT Urology</asp:ListItem>
                        <asp:ListItem>OT orthopatic</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Test Code:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddltestcode" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="code" DataValueField="code" 
                        Height="22px" Width="121px">
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="ddlperticular" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="particulars" 
                        DataValueField="particulars" Height="22px" Width="121px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlrate1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="grade" DataValueField="grade" 
                        Height="22px" Width="121px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Grade:-"></asp:Label>
                </td>
                <td class="style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="grade" 
                        DataTextField="grade" DataValueField="grade" Height="22px" Width="121px">
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Rom class:-"></asp:Label>
                </td>
                <td class="style6">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        DataSourceID="grade" DataTextField="class" DataValueField="class" Height="22px" 
                        Width="121px">
                    </asp:DropDownList>
                </td>
                <td class="style7">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Rate:-"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlrate" runat="server" DataSourceID="grade" 
                        DataTextField="rate" DataValueField="rate" style="margin-left: 0px" 
                        Height="22px" Width="121px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="Doctor_id" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [doctor_id] FROM [doctor_personal_detail]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Patient_id" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [patient_id] FROM [personal_detail]">
        </asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [ot_general] WHERE ([Hospital_id] = @Hospital_id)">
            <SelectParameters>
                <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="grade" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [grade] WHERE ([Hospital_id] = @Hospital_id)">
            <SelectParameters>
                <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <center><asp:Button ID="Button1" runat="server" BackColor="#006600" Font-Bold="True" 
            Font-Size="Small" ForeColor="White" Text="Insert" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#006600" Font-Bold="True" 
            Font-Size="Small" ForeColor="White" Text="Update" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#006600" Font-Bold="True" 
            Font-Size="Small" ForeColor="White" Text="Delete" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="#006600" Font-Bold="True" 
            Font-Size="Small" ForeColor="White" Text="Search" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" BackColor="#006600" Font-Bold="True" 
            Font-Size="Small" ForeColor="White" Text="clear" />
        </center>
        <br />
        <br />
  
    </asp:Panel>
</asp:Content>

