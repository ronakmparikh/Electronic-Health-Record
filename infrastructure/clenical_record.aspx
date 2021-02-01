<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="clenical_record.aspx.vb" Inherits="infrastructure_clenical_record" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 650px;
        }
        .style2
        {
            width: 199px;
        }
        .style3
        {
            width: 140px;
        }
        .style7
        {
            width: 158px;
        }
        .style9
        {
            width: 171px;
        }
        .style10
        {
            width: 57px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="873px" 
        Width="956px" ScrollBars="Auto">
    
    <div>
    
        &nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
            Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx">&lt;&lt; HOME</asp:LinkButton>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="Blue" style="text-align: center">Clinical 
        Record</asp:Label>
    
        <br />
    
    </div>
    &nbsp;<br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="Patient_id:-"></asp:Label>
                </td>
                <td class="style9">
                    <asp:DropDownList ID="ddlpatientid" runat="server" DataSourceID="SqlDataSource3" 
                        DataTextField="patient_id" DataValueField="patient_id" Height="22px" 
                        Width="121px" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [patient_id] FROM [personal_detail]">
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="Name:-"></asp:Label>
                </td>
                <td class="style9">
                    <asp:DropDownList ID="ddlname" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="name" DataValueField="name" Height="22px" Width="121px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [patient_id], [name] FROM [personal_detail] WHERE ([patient_id] = @patient_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlpatientid" Name="patient_id" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Room/Ward_No:-"></asp:Label>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtroom" runat="server" Height="22px" Width="121px"></asp:TextBox>
                </td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Medicine"></asp:Label>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" ForeColor="Blue" Text="Date/Time"></asp:Label>
                </td>
                <td class="style9">
                    <asp:Label ID="Label7" runat="server" ForeColor="Blue" Text="Tablet"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="Label8" runat="server" ForeColor="Blue" Text="Injection"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label9" runat="server" ForeColor="Blue" Text="Temprature"></asp:Label>
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtdate_time" runat="server" Height="22px" Width="121px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txttablet" runat="server" Height="22px" Width="131px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtinjection" runat="server" Height="22px" Width="121px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txttemprature" runat="server" Height="22px" Width="121px"></asp:TextBox>
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label10" runat="server" ForeColor="Blue" Text="BP"></asp:Label>
                </td>
                <td class="style9">
                    <asp:Label ID="Label11" runat="server" ForeColor="Blue" Text="Dressing"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="Label12" runat="server" ForeColor="Blue" 
                        Text="AttendentID,Name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label13" runat="server" ForeColor="Blue" Text="Doctor ID , Name"></asp:Label>
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtBp" runat="server" Height="22px" Width="121px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtdressing" runat="server" Height="22px" 
                        style="margin-bottom: 0px" Width="121px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtattend_id_name" runat="server" Height="22px" Width="121px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddldocid" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="doctor_id" DataValueField="doctor_id" Height="22px" 
                        Width="121px">
                    </asp:DropDownList>
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [doctor_id] FROM [doctor_personal_detail]">
                    </asp:SqlDataSource>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label15" runat="server" ForeColor="Blue" Text="Nurse ID, Name"></asp:Label>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtnurse_id" runat="server" Height="22px" Width="121px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label14" runat="server" ForeColor="Blue" Text="Remark:-"></asp:Label>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtremark" runat="server" Height="36px" TextMode="MultiLine" 
                        Width="148px"></asp:TextBox>
                </td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                <center>
                    <asp:Button ID="Button1" runat="server" BackColor="#009900" ForeColor="White" 
                        Text="Insert" /></center>
                </td>
                <td class="style9">
                <center>
                    <asp:Button ID="Button2" runat="server" BackColor="#009900" ForeColor="White" 
                        Text="Update" />
                    </center>
                </td>
                <td class="style7">
                 <center>
                     <asp:Button ID="Button3" runat="server" BackColor="#009900" ForeColor="White" 
                         Text="Delete" />
                    </center>
                </td>
                <td class="style3">
                 <center>
                     <asp:Button ID="Button4" runat="server" BackColor="#009900" ForeColor="White" 
                         Text="search" />
                    </center>
                </td>
                <td class="style10">

                    <center>        
                   
                    <asp:Button ID="Button5" runat="server" BackColor="#009900" ForeColor="White" 
                        Text="Clear" /></center>
                </td>
            </tr>
        </table>
        
        <br />
        <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="Red" 
            Text="Doctor Prescription"></asp:Label>
<br />
<asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" Width="1181px" Height="118px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>

<br />
        <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="Red" 
            Text="Clinical History"></asp:Label>
<br />
<asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" Width="1181px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
      
    </asp:Panel>

</asp:Content>

