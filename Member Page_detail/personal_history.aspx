<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="personal_history.aspx.vb" Inherits="personal_history" %>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        
        <asp:Panel ID="Panel6" runat="server" Height="621px" Width="1171px" 
            Font-Bold="True">
    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton13" runat="server" CausesValidation="False" 
                PostBackUrl="~/Member_Page.aspx">Home</asp:LinkButton>
            &nbsp;&gt;<asp:LinkButton ID="LinkButton14" runat="server" CausesValidation="False" 
                PostBackUrl="~/Member Page_detail/Member_of_information.aspx">Information</asp:LinkButton>
            &nbsp;&gt;Personal Histories&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    
        <asp:Label ID="lblpersonal_details" runat="server" BackColor="#009900" 
            ForeColor="White" Text="Personal Histories" Font-Size="X-Large" 
            Font-Bold="True"></asp:Label>
    
            &nbsp;<br />
            <table align="center" class="style1">
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblphaddiction" runat="server" Font-Bold="True" 
                            Font-Size="Large" ForeColor="Blue" Text="Addiction:-"></asp:Label>
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblphtobacoo" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Tobacoo:-"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:RadioButton ID="rdbtyes" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Font-Size="Small" ForeColor="Blue" GroupName="tobacoo" 
                            Text="Yes" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdbtno" runat="server" AutoPostBack="True" Checked="True" 
                            Font-Bold="False" Font-Size="Small" ForeColor="Blue" GroupName="tobacoo" 
                            Text="No" />
                    </td>
                </tr>
            </table>
            <asp:Panel ID="Panel1_tabacoo" runat="server" Visible="False">
            <table align="center" class="style1">
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:DropDownList ID="ddltabacoo" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Height="22px" Width="138px">
                            <asp:ListItem Selected="True">Select Tabacoo</asp:ListItem>
                            <asp:ListItem>Bidi</asp:ListItem>
                            <asp:ListItem>Hukka</asp:ListItem>
                            <asp:ListItem>Cigarratte</asp:ListItem>
                            <asp:ListItem>Guttka</asp:ListItem>
                            <asp:ListItem>sigar</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="ddltabacoo" ErrorMessage="*" InitialValue="Select Tabacoo" 
                            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddltabacoo_count" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Height="22px" style="margin-bottom: 0px" Width="138px">
                            <asp:ListItem Selected="True">Select
                            </asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>More then 10</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="ddlalcohol_count" ErrorMessage="*" InitialValue="Select" 
                            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            </asp:Panel>
            <table align="center" class="style1">
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblalcohole" runat="server" Font-Bold="False" Font-Size="Medium" 
                            ForeColor="Blue" Text="Alcohol:-"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:RadioButton ID="rdbayes" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Font-Size="Small" ForeColor="Blue" GroupName="alcohol" 
                            Text="Yes" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdbano" runat="server" AutoPostBack="True" Checked="True" 
                            Font-Bold="False" Font-Size="Small" ForeColor="Blue" GroupName="alcohol" 
                            Text="No" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
                   <asp:Panel ID="Panel1_alcohol" runat="server" Visible="False">
            <table align="center" class="style1">
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:DropDownList ID="ddlalcohol" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Height="22px" Width="138px">
                            <asp:ListItem Selected="True">Select alcohol</asp:ListItem>
                            <asp:ListItem>Rum</asp:ListItem>
                            <asp:ListItem>Brandy</asp:ListItem>
                            <asp:ListItem>Wishky</asp:ListItem>
                            <asp:ListItem>Gin</asp:ListItem>
                            <asp:ListItem>Chaimpaine</asp:ListItem>
                            <asp:ListItem>Bear</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="ddldaily" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Height="22px" Width="138px">
                            <asp:ListItem Selected="True">Select
                            </asp:ListItem>
                            <asp:ListItem>Weekly</asp:ListItem>
                            <asp:ListItem>Monthly</asp:ListItem>
                            <asp:ListItem>Quarterly</asp:ListItem>
                            <asp:ListItem>Half yearly</asp:ListItem>
                            <asp:ListItem>Yearly</asp:ListItem>
                            <asp:ListItem>Daily</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="ddldaily" ErrorMessage="*" InitialValue="Select" 
                            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlalcohol_count" runat="server" AutoPostBack="True" 
                            Height="22px" style="margin-left: 0px" Width="138px">
                            <asp:ListItem Selected="True">Select
                            </asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>More then 10</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="ddlalcohol_count" ErrorMessage="*" InitialValue="Select" 
                            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            </asp:Panel>
            <table align="center" class="style1">
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblphfoodhistory" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Food Habit:-"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:DropDownList ID="ddlfoodhabit" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Height="22px" style="margin-right: 12px" Width="138px">
                            <asp:ListItem Selected="True">Select Food Habit</asp:ListItem>
                            <asp:ListItem>Eggitarian</asp:ListItem>
                            <asp:ListItem>Non Vag</asp:ListItem>
                            <asp:ListItem>Veg</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="ddlfoodhabit" ErrorMessage="*" 
                            InitialValue="Select Food Habit" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lblphappetite" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Appetite:-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlappetite" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Height="22px" Width="138px">
                            <asp:ListItem Selected="True">Select Appetite</asp:ListItem>
                            <asp:ListItem>Increase</asp:ListItem>
                            <asp:ListItem>Decrease</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="ddlappetite" ErrorMessage="*" InitialValue="Select Appetite" 
                            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblphbowelhabits0" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Bowel Habits:-"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:DropDownList ID="ddlbowelhabits" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Height="22px" Width="138px">
                            <asp:ListItem Selected="True">Select BowelHabits</asp:ListItem>
                            <asp:ListItem>Constipation</asp:ListItem>
                            <asp:ListItem>Loose Motions</asp:ListItem>
                            <asp:ListItem>Blood in stools</asp:ListItem>
                            <asp:ListItem>Worm in stools</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="ddlbowelhabits" ErrorMessage="*" 
                            InitialValue="Select BowelHabits" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lblphmicturitions" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Micturitions:-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlmicturitions" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Height="22px" Width="138px">
                            <asp:ListItem Selected="True">Select Micturitions</asp:ListItem>
                            <asp:ListItem>Frequency</asp:ListItem>
                            <asp:ListItem>Associated with Burning</asp:ListItem>
                            <asp:ListItem>Hesitancy</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="ddlmicturitions" ErrorMessage="*" 
                            InitialValue="Select Micturitions" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblphsleep" runat="server" Font-Bold="False" Font-Size="Medium" 
                            ForeColor="Blue" Text="Sleep:-"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:DropDownList ID="ddlsleep" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Height="22px" Width="138px">
                            <asp:ListItem Selected="True">Select Sleep</asp:ListItem>
                            <asp:ListItem>Adequate</asp:ListItem>
                            <asp:ListItem>Inadequate</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="ddlsleep" ErrorMessage="*" InitialValue="Select Sleep " 
                            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style6">
                        <asp:Label ID="lblphmedications" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Medications:-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlmadications" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Height="22px" Width="138px">
                            <asp:ListItem Selected="True">Select Madications</asp:ListItem>
                            <asp:ListItem>Allopathic</asp:ListItem>
                            <asp:ListItem>Homeopathic</asp:ListItem>
                            <asp:ListItem>Ayurvedic</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="ddlmadications" ErrorMessage="*" 
                            InitialValue="Select Madications" ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <table align="center" class="style1">
                <tr>
                    <td class="style8">
                        <asp:Label ID="lblphspectacle" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Spectacle:-"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:RadioButton ID="rdbsyes" runat="server" AutoPostBack="True" 
                            Font-Bold="False" Font-Size="Small" ForeColor="Blue" GroupName="spectacle" 
                            Text="Yes" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rdbsno" runat="server" AutoPostBack="True" Checked="True" 
                            Font-Bold="False" Font-Size="Small" ForeColor="Blue" GroupName="spectacle" 
                            Text="No" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
               <asp:Panel ID="Panel1_spectacle" runat="server" 
                Visible="False">
            <table align="center" class="style1">
                <tr>
                    <td class="style9">
                        <asp:Label ID="lblalcohole0" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Spectacle:-"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblalcohole1" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Left:-"></asp:Label>
                    </td>
                    <td class="style10">
                        <asp:TextBox ID="txtleft" runat="server" Width="58px"></asp:TextBox>
                    </td>
                    <td class="style11">
                        <asp:Label ID="lblalcohole2" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Right:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtright" runat="server" Width="58px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            </asp:Panel>
            <br />
         <center>
            <asp:Button ID="Btnsubmit" runat="server" BackColor="#009900" Font-Bold="True" 
                ForeColor="White" Text="SUBMIT" />
            
            <asp:Button ID="Button2" runat="server" BackColor="#009900" Font-Bold="True" 
                ForeColor="White" style="height: 26px" Text="RESET" /></center>
            &nbsp;&nbsp;&nbsp;&nbsp;<br />
     
    
    
    </asp:Panel> 
    </asp:content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    
    <style type="text/css">
        .style1
        {
            width: 69%;
            height: 35px;
        }
        .style3
        {
            width: 186px;
        }
        .style4
        {
            width: 188px;
        }
        .style5
        {
            width: 187px;
        }
        .style6
        {
            width: 166px;
        }
        .style7
        {
            width: 208px;
        }
        .style8
        {
            width: 207px;
        }
        .style9
        {
            width: 135px;
        }
        .style10
        {
            width: 83px;
        }
        .style11
        {
            width: 51px;
        }
    </style>


</asp:Content>

