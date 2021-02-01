<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Account_informtion.aspx.vb" Inherits="Member_Page_detail_Account_informtion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 99%;
        }
        .style3
        {
            width: 813px;
        }
        .style4
        {
            height: 23px;
            width: 813px;
        }
        .style5
        {
            height: 30px;
            width: 813px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <center>    <asp:Label ID="lblinsurancedetail" runat="server" BackColor="Green" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="White" 
            Text="Account_Information"></asp:Label>
        <br />
            </center>
            <br />
        <table align="center" class="style1">
           
            <tr>
                <td class="style3">
                <asp:Label ID="Label2" runat="server" ForeColor="Blue" 
                    Text="Please deposit the subscription amount in below mentioned bank account Number "></asp:Label>
                    </td>
            </tr>
           
            <tr>
                <td class="style3">
                        &nbsp;</td>
            </tr>
           
            <tr>
                <td class="style3">
                        <asp:Label ID="lblminsurancecompany" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Account Number -"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" ForeColor="Blue" Text="30044225169"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                        <asp:Label ID="lblminsurancecompany0" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="IFSC Code- "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" ForeColor="Blue" 
                            Text="SBIN0001064 (used for RTGS and NEFT transactions)"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style4">
                        <asp:Label ID="lblminsurancecompany1" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="A/c Holder Name-"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" ForeColor="Blue" 
                            Text="Digesh Singh Malik Memorial trust "></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                        <asp:Label ID="lblminsurancecompany2" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Bank Branch- "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" ForeColor="Blue" 
                            Text="State Bank of India, Lalbaug, Vadodara"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                        <asp:Label ID="Label1" runat="server" ForeColor="Blue" 
                            Text="After depositing the cheque / DD in above account please provide the details in the below mentioned form so that your subscription can be verified and activated "></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                        <asp:Label ID="lblminsurancecompany9" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Subscription Type "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlsub" runat="server" Width="131px">
                            <asp:ListItem>Select Club</asp:ListItem>
                            <asp:ListItem>Survey</asp:ListItem>
                            <asp:ListItem>Diabetes Club</asp:ListItem>
                            <asp:ListItem>Hypertension Club</asp:ListItem>
                            <asp:ListItem>Thyroid Club</asp:ListItem>
                            <asp:ListItem>Epilepsy Club</asp:ListItem>
                            <asp:ListItem>Asthma Club</asp:ListItem>
                            <asp:ListItem>Dental Club</asp:ListItem>
                        </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                        <asp:Label ID="lblminsurancecompany3" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Cheque / DD / UTR Number "></asp:Label>
                    &nbsp;<asp:TextBox ID="txtcheque" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                        <asp:Label ID="lblminsurancecompany4" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Account Holder Name "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtac_holdername" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style5">
                        <asp:Label ID="lblminsurancecompany5" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="IFSC Code "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtifsccode" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                        <asp:Label ID="lblminsurancecompany6" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Bank Name and Branch "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtbranch" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                        <asp:Label ID="lblminsurancecompany7" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Amount Deposited"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtamt" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                        <asp:Label ID="lblminsurancecompany8" runat="server" Font-Bold="False" 
                            Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                            Text="Date of transaction "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                        <asp:Label ID="Label3" runat="server" ForeColor="Blue" 
                            Text="The subscription will be confirmed with next 7 days of your providing the above details."></asp:Label>
                    </td>
            </tr>
        </table>
    
    </div>
          <center>  
              <asp:Button ID="btnsubmit" runat="server" BackColor="Green" 
                CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Submit" />
            &nbsp;&nbsp;
            <asp:Button ID="btnreset" runat="server" BackColor="Green" Font-Bold="True" 
                ForeColor="White" Height="26px" Text="Cancel" /></center>
    </form>
</body>
</html>
