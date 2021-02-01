<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="Link Page.aspx.vb" Inherits="Link_Page_Link_Page" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 80%;
            height: 110px;
        }
        .style2
        {
            width: 235px;
            text-align: left;
        }
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:Panel ID="Panel1" runat="server" style="margin-left: 18px" 
    ScrollBars="Auto" Width="956px" Height="451px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Welcome" Font-Bold="True"></asp:Label>
&nbsp;
        <asp:Label ID="lblusername" runat="server" Font-Bold="True"></asp:Label>
        <br />
        
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" 
            Font-Size="Small" ForeColor="Blue" 
            NavigateUrl="~/infrastructure/hospital_page.aspx">&lt;&lt;Home Page</asp:HyperLink>
    <br />
        <table class="style3">
            <tr>
                <td>
                   <center> 
                       <asp:Label ID="Label3" runat="server" BackColor="Green" Font-Size="XX-Large" 
                        ForeColor="White" Text="HOSPITAL INFRASTRUCTURE"></asp:Label>
                </center>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br /><center>
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Link Page/External Charges and Services.aspx">External 
                    Charges and Services</asp:LinkButton>
                </td>
                <td style="text-align: left">
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Link Page/Internal Charges and Services.aspx">Internal 
                    Charges and Services</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Link Page/Vehical Services.aspx">Vehical Services</asp:LinkButton>
                </td>
                <td style="text-align: left">
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Link Page/Operation Theater.aspx">Operation Theater</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Link Page/Staff Master.aspx">Staff Master</asp:LinkButton>
                </td>
                <td style="text-align: left">
                    <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Link Page/Testing Department.aspx">Testing Department</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="LinkButton10" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Link Page/Asset Master.aspx">Asset Master</asp:LinkButton>
                </td>
                <td style="text-align: left">
                    <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Link Page/Pathology.aspx">Pathology</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Hospital wish profile managment/RADIOLOGY.aspx">Radiology</asp:LinkButton>
                </td>
                <td style="text-align: left">
                    <asp:LinkButton ID="LinkButton14" runat="server" Font-Bold="True" 
                        PostBackUrl="~/infrastructure/rqcc.aspx">Registration and Quality 
                    certifications</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="LinkButton15" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Link Page/Medical store.aspx">Medical store</asp:LinkButton>
                </td>
                <td style="text-align: left">
                    <asp:LinkButton ID="LinkButton16" runat="server" 
                        PostBackUrl="~/Link Page/patient_bill.aspx" Font-Bold="True">Bill
                    </asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                        PostBackUrl="~/infrastructure/Patient admit card.aspx">Admit Patient</asp:LinkButton>
                </td>
                <td style="text-align: left">
                    <asp:LinkButton ID="LinkButton18" runat="server" Font-Bold="True" 
                        PostBackUrl="~/infrastructure/clenical_record.aspx">Clinical Record</asp:LinkButton>
                </td>
            </tr>
        </table>
        
</center>        
        <br />
        <br />
        
</asp:Panel>
</asp:Content>