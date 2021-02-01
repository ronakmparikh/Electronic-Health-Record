<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="External Charges and Services.aspx.vb" Inherits="Link_Page_External_Charges_and_Services" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 43%;
            margin-left: 91px;
        }
        .style2
        {
            width: 230px;
            text-align: left;
        }
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="451px" Width="956px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
            style="text-align: justify" PostBackUrl="~/Link Page/Link Page.aspx">&lt;&lt;Hospital Infrastructure</asp:LinkButton>
        &nbsp;&gt;&gt; EXTERNAL CHARGES<br />
        <br />
        <br />
        <table class="style3">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label3" runat="server" BackColor="Green" Font-Size="X-Large" 
                        ForeColor="White" Text="External Charges"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <center>
            <table class="style1">
                <tr>
                    <td class="style2">
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/Charges Of Nursing Care.aspx">Charges 
                        of Nursing Care</asp:LinkButton>
                    </td>
                    <td style="text-align: left">
                        <asp:LinkButton ID="LinkButton2" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/consultant.aspx">Cousultant</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:LinkButton ID="LinkButton3" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/Equipment Charges per day.aspx">Equpment 
                        Charges Per Day</asp:LinkButton>
                    </td>
                    <td style="text-align: left">
                        <asp:LinkButton ID="LinkButton4" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/Health Care Professionals.aspx">Health 
                        Care Professional</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:LinkButton ID="LinkButton8" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/physiotherapist.aspx">Physiotherapist</asp:LinkButton>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </center>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
    </asp:Panel>
</asp:Content>

