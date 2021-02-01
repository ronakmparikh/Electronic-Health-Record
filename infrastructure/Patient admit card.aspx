
<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="Patient admit card.aspx.vb" Inherits="infrastructure_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 440px;
        }
        .style2
        {
            width: 175px;
        }
        .style3
        {
            width: 218px;
        }
        .style5
        {
            width: 281px;
            height: 25px;
        }
        .style6
        {
            width: 91px;
        }
        .style7
        {
            width: 73px;
        }
        .style8
        {
            width: 72px;
        }
        .style10
        {
            width: 296px;
        }
        .style13
        {
            width: 644px;
        }
        .style16
        {
            width: 253px;
        }
        .style18
        {
            width: 157px;
        }
        .style19
        {
            width: 161px;
        }
        .style20
        {
            width: 284px;
        }
    .style21
    {
        width: 93px;
    }
        .style22
        {
            width: 97px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="753px" Width="1456px" 
        ScrollBars="Auto">
    
    
    
    
   
    
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;<asp:LinkButton ID="LinkButton14" runat="server" Font-Bold="True" 
            Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx">&lt;&lt;Home</asp:LinkButton>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" BackColor="#006600" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="White" Text="Patient Admit Card"></asp:Label>
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                        Checked="True" Font-Bold="True" Font-Size="Small" ForeColor="Blue" 
                        GroupName="Type" Text="Registererd Patient" />
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
                        Font-Size="Small" 
                        PostBackUrl="~/Copy of popup_personal_detail.aspx">Not Registerd Patient</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <table class="style1">
            <tr>
                <td class="style22">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Patient Id:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlpatientid" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="patient_id" 
                        DataValueField="patient_id" Height="22px" Width="121px">
                    </asp:DropDownList>
                </td>
                <td class="style21">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Doctor Id:-"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddldocid" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="doctor_id" DataValueField="doctor_id" Height="22px" 
                        Width="121px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Date:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtdate" runat="server" Height="22px" 
                        style="text-align: center" Width="122px"></asp:TextBox>
                </td>
                <td class="style8">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Department:-"></asp:Label>
                </td>
                <td class="style18">
                    <asp:DropDownList ID="ddldept" runat="server" DataSourceID="SqlDataSource3" 
                        DataTextField="Department" DataValueField="Department" Height="22px" 
                        Width="121px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [patient_id] FROM [personal_detail]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [doctor_id] FROM [doctor_personal_detail]">
        </asp:SqlDataSource>
        
        <br />
        <table class="style5">
            <tr>
                <td class="style7">
                    <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
                        Checked="True" Font-Bold="True" Font-Size="Small" ForeColor="Blue" 
                        GroupName="Type1" Text="IPD" />
                </td>
                <td class="style6">
                    <asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="True" 
                        Font-Bold="True" Font-Size="Small" ForeColor="Blue" GroupName="Type1" 
                        Text="OPD" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Panel ID="Panel2" runat="server" Height="159px">
            &nbsp;<table class="style13">
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" 
                            ForeColor="Blue" Text="Admit Date:-"></asp:Label>
                    </td>
                    <td class="style18">
                        <asp:TextBox ID="txtAdmitDate" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    </td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style16">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" 
                            ForeColor="Blue" Text="Ward no:-"></asp:Label>
                    </td>
                    <td class="style18">
                        <asp:TextBox ID="txtwardno" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    </td>
                    <td class="style10">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" 
                            ForeColor="Blue" Text="Room type:-"></asp:Label>
                    </td>
                    <td class="style19">
                        <asp:DropDownList ID="ddlroomtype" runat="server" DataSourceID="SqlDataSource4" 
                            DataTextField="room_type" DataValueField="room_type" Height="22px" 
                            Width="121px">
                        </asp:DropDownList>
                    </td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style16">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Small" 
                            ForeColor="Blue" Text="Room No:-"></asp:Label>
                    </td>
                    <td class="style18">
                        <asp:TextBox ID="txtroomno" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    </td>
                    <td class="style10">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Small" 
                            ForeColor="Blue" Text="Bed NO:-"></asp:Label>
                    </td>
                    <td class="style19">
                        <asp:TextBox ID="txtbedno" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    </td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style16">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Small" 
                            ForeColor="Blue" Text="Deposit:-"></asp:Label>
                    </td>
                    <td class="style18">
                        <asp:TextBox ID="txtdeposit" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    </td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style16">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style16">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style16">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style16">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Hospital_id], [Department], [Type], [Number_of_room], [Number_of_bed] FROM [dep_acco]">
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [room_type], [charges] FROM [deposit]">
        </asp:SqlDataSource>
        <table class="style13">
            <tr>
                <td class="style18">
                    <asp:Button ID="Button1" runat="server" BackColor="#006600" Font-Bold="True" 
                        Font-Size="Small" ForeColor="White" Text="Insert" />
                </td>
                <td class="style10">
                    <asp:Button ID="Button2" runat="server" BackColor="#006600" Font-Bold="True" 
                        Font-Size="Small" ForeColor="White" Text="Update" />
                </td>
                <td class="style19">
                    <asp:Button ID="Button3" runat="server" BackColor="#006600" Font-Bold="True" 
                        Font-Size="Small" ForeColor="White" Text="Delete" />
                </td>
                <td class="style20">
                    <asp:Button ID="Button4" runat="server" BackColor="#006600" Font-Bold="True" 
                        Font-Size="Small" ForeColor="White" Text="Search" />
                </td>
                <td class="style16">
                    <asp:Button ID="Button5" runat="server" BackColor="#006600" Font-Bold="True" 
                        Font-Size="Small" ForeColor="White" Text="Clear" />
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
<br />

    </asp:Panel>
</asp:Content>

