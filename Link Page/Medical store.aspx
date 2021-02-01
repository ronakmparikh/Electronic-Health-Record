<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="Medical store.aspx.vb" Inherits="Link_Page_Medical_store" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 42%;
            margin-left: 347px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="451px" Width="956px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;<asp:LinkButton ID="LinkButton21" runat="server" Font-Bold="True" 
            Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx">HOSPITAL 
        INFRASTRUCTURE</asp:LinkButton>
        &nbsp;&gt;&gt; MEDICAL STORE<br />
        <br />
        &nbsp;<center><asp:LinkButton ID="LinkButton20" runat="server" BackColor="Green" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="White">MEDICAL STORE</asp:LinkButton></center>
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton14" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Medical store Mgmt/Purchase_Order.aspx">Purchase order</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton15" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Medical store Mgmt/Medicine_supplyer.aspx">Medicen Supplier</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton16" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Medical store Mgmt/Medicine_master.aspx">Medicine Master</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Medical store Mgmt/Issue_medicine.aspx">Issue Medicen</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton18" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Medical store Mgmt/Return_medicine.aspx">Return Medicen</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton19" runat="server" Font-Bold="True" 
                        PostBackUrl="~/Medical store Mgmt/Bill.aspx">Bill</asp:LinkButton>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    
    
    </asp:Panel>

</asp:Content>

