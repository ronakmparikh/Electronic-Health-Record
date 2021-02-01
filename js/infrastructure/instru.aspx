<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="instru.aspx.vb" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="451px" 
        Width="1171px">
        <br />
        &nbsp;
        <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
            Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx">&lt;&lt; HOME</asp:LinkButton>
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label3" runat="server" BackColor="#009900" Font-Bold="True" 
                        Font-Size="X-Large" ForeColor="White" Text="INSTRUMENT"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;<table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="#0000C0" Text="Department:-"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddldepartment" runat="server" Height="22px" Width="121px">
                        <asp:ListItem>GYNO</asp:ListItem>
                        <asp:ListItem>Orthopatic</asp:ListItem>
                        <asp:ListItem>Sycratic</asp:ListItem>
                        <asp:ListItem>Select Department</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="ddldepartment" ErrorMessage="*" 
                        ToolTip="Department Must Be Select"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Lblinstrument" runat="server" Font-Size="Small" 
                        ForeColor="#0000C0" Text="Name of Instrument:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname_of_instrument" runat="server" Height="22px" 
                        Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtname_of_instrument" ErrorMessage="*" 
                        ToolTip="Name of Instrument Must Be Entered"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="Blue" 
                        Text="Quantity:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtquantity" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtquantity" ErrorMessage="*" 
                        ToolTip="Quantity Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtquantity" ErrorMessage="*" ToolTip="NUMERIC VALUE ONLY" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:Label ID="Lblmake" runat="server" Font-Size="Small" ForeColor="#0000C0" 
                        Text="Make:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmake" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtmake" ErrorMessage="*" ToolTip="Make Must Be Entered"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Lblmodel" runat="server" Font-Size="Small" ForeColor="#0000C0" 
                        Text="Model:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmodel" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtmodel" ErrorMessage="*" ToolTip="Model Must Be Entered"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="Lblyear" runat="server" Font-Size="Small" ForeColor="#0000C0" 
                        Text="Year:-"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlyear" runat="server" Height="22px" Width="121px">
                        <asp:ListItem>1950</asp:ListItem>
                        <asp:ListItem>1951</asp:ListItem>
                        <asp:ListItem>1952</asp:ListItem>
                        <asp:ListItem>1953</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="ddlyear" ErrorMessage="*" ToolTip="Year Must Be Select"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="Lblcost" runat="server" Font-Size="Small" ForeColor="#0000C0" 
                        Text="Cost:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtcost" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="Txtcost" ErrorMessage="*" ToolTip="Cost Must Be Entered"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="Txtcost" ErrorMessage="*" ToolTip="NUMERIC VALUE ONLY" 
                        ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Lblmaxuti" runat="server" Font-Size="Small" ForeColor="#0000C0" 
                        Text="Maximum Utilisation period:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmaxuti" runat="server" Height="24px" Width="87px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtmaxuti" ErrorMessage="*" 
                        ToolTip="Maximum Utilisation Period Must Be Entered"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="Lblarea" runat="server" Font-Size="Small" ForeColor="#0000C0" 
                        Text="Utilisation area:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtutilisation_area" runat="server" Height="22px" 
                        Width="121px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="Txtutilisation_area" ErrorMessage="*" 
                        ToolTip="Utilisation Area Must Be Entered"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="Lblstatus" runat="server" Font-Size="Small" ForeColor="#0000C0" 
                        Text="Status:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtstatus" runat="server" Height="22px" Width="121px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="Txtstatus" ErrorMessage="*" ToolTip="Status Must Be Entered"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#009900" 
            ForeColor="White" />
        &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Btnreset" runat="server" 
            Text="Reset" BackColor="#009900" ForeColor="White" />
    
</asp:Panel> 
</asp:content>

    

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">	



    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    
    </asp:content>