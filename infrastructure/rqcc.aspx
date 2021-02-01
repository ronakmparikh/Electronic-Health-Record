<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="rqcc.aspx.vb" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="451px" 
        Width="1171px">
        &nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
            Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx" 
            CausesValidation="False">&lt;&lt; HOME</asp:LinkButton>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label38" 
            runat="server" BackColor="#009900" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="White" Text="Registration And Qcc"></asp:Label>
        &nbsp;<br />
    <br />
        <table class="style1">
            <tr>
                <td class="style10">
        <asp:Label ID="Label30" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Blue" Text="Registration and QCC"></asp:Label>
                </td>
                <td class="style3">
        <asp:DropDownList ID="ddlregistration_qcc" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="Reg_and_qcc" 
                        DataValueField="Reg_and_qcc" Height="22px" Width="121px" 
                        AppendDataBoundItems="True">
            <asp:ListItem Selected="True">Other</asp:ListItem>
        </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [rqcc_list]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
            ControlToValidate="ddlregistration_qcc" ErrorMessage="*" Height="22px" 
            ToolTip="Registration and Qcc Must Be Entered" style="margin-left: 0px"></asp:RequiredFieldValidator>
                </td>
                <td class="style9">
                    <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Blue" Text="Registration And QCC" Enabled="False"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtother" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label33" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Blue" Text="Authorty"></asp:Label>
                </td>
                <td class="style3">
        <asp:TextBox ID="txtauthority" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
            ControlToValidate="txtauthority" ErrorMessage="*" 
            ToolTip="Authority Must Be Entered"></asp:RequiredFieldValidator>
                </td>
                <td class="style9">
                    <asp:Label ID="Label34" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Blue" Text="Registration Number"></asp:Label>
                </td>
                <td class="style11">
        <asp:TextBox ID="txtregistration_number" runat="server" Height="22px" 
            Width="121px" style="margin-left: 0px; margin-bottom: 0px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
            ControlToValidate="txtregistration_number" ErrorMessage="*" 
            ToolTip="Registration Number Must Be Entered"></asp:RequiredFieldValidator>
                </td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
        <asp:Label ID="Label35" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Blue" Text="Valid From"></asp:Label>
                </td>
                <td class="style3">
        <asp:TextBox ID="txtvalid_from" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
            ControlToValidate="txtvalid_from" ErrorMessage="*" 
            ToolTip="Valid From Must Be Entered"></asp:RequiredFieldValidator>
                </td>
                <td class="style9">
                    <asp:Label ID="Label36" runat="server" 
            Font-Names="Arial" Font-Size="Small" ForeColor="Blue" 
        Text="Valid Up To"></asp:Label>
                </td>
                <td class="style11">
        <asp:TextBox ID="txtvalid_up_to" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
            ControlToValidate="txtvalid_up_to" ErrorMessage="*" 
            ToolTip="Valid upto Must Be Entered"></asp:RequiredFieldValidator>
                </td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
  
        <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Names="Arial" 
            Font-Size="Small" ForeColor="Blue" Text="Upload Documents:-"></asp:Label>
                </td>
                <td class="style3">
        <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="220px" 
                        style="margin-left: 0px" />
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                <center>
    <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#009900" 
        ForeColor="White" /></center>
                </td>
                <td class="style3">
                <center>
                    <asp:Button ID="btnupdate" runat="server" Text="Update" 
        BackColor="#009900" ForeColor="White" /></center>
                </td>
                <td class="style9">
                <center>
                    <asp:Button ID="btndelete" runat="server" 
        Text="Delete" BackColor="#009900" ForeColor="White" /></center>
                </td>
                <td class="style11">
                <center>
    <asp:Button ID="btnsearch" runat="server" Text="Search" BackColor="#009900" 
        ForeColor="White" CausesValidation="False" Height="26px" /></center>
                </td>
                <td class="style12">
                <center>
    <asp:Button ID="btnreset" runat="server" Text="Reset" BackColor="#009900" 
        ForeColor="White" /></center>   
                </td>
            </tr>
        </table>
          

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
</asp:content>

    

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">	



    <style type="text/css">
        .style1
        {
        }
        .style3
        {
            width: 182px;
        }
        .style9
        {
            width: 122px;
        }
        .style10
        {
            width: 131px;
        }
        .style11
        {
            width: 135px;
        }
        .style12
        {
            width: 102px;
        }
    </style>
    
    </asp:content>