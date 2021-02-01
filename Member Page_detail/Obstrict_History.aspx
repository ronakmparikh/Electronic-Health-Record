<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Obstrict_History.aspx.vb" Inherits="Menstrual_and_o_s" %>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        
        <asp:Panel ID="Panel6" runat="server" Height="855px" Width="1171px" 
            Font-Bold="True" Font-Size="Large" ScrollBars="Auto">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton13" runat="server" CausesValidation="False" 
                PostBackUrl="~/Member_Page.aspx">Home</asp:LinkButton>
            &nbsp;&gt;<asp:LinkButton ID="LinkButton14" runat="server" CausesValidation="False" 
                PostBackUrl="~/Member Page_detail/Member_of_information.aspx">Information</asp:LinkButton>
            &nbsp;&gt;Obstetric History&nbsp;<br />
        <center>        <asp:Label ID="lblmoh" runat="server" BackColor="Green" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="White" 
            Text="Obstetric History"></asp:Label>
            </center><br />
    
   
            <br />
            <table align="center" class="style1">
                <tr>
                    <td class="style5">
                        <asp:Label ID="lblobstetric_history" runat="server" Font-Bold="True" 
                            Font-Size="Large" ForeColor="Blue" Text="Obstetric history:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:RadioButton ID="rdbobhyes" runat="server" AutoPostBack="True" 
                            ForeColor="Blue" GroupName="del" Text="Yes" />
                    </td>
                    <td class="style8">
                        <asp:RadioButton ID="rdbobhno" runat="server" AutoPostBack="True" 
                            Checked="True" Font-Size="Large" ForeColor="Blue" GroupName="del" Text="No" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
             <asp:Panel ID="Panel1_obstetric_history" runat="server" Visible="False" 
                Height="348px">
           
            <table align="center" class="style1">
                <tr>
                    <td class="style3">
                        <asp:Label ID="lblpdate6" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="First Delivery:-"></asp:Label>
                    </td>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="lblpdate7" runat="server" Font-Bold="False" Font-Size="Medium" 
                            ForeColor="Blue" Text="Date:-"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtf_delivery_date" runat="server" AutoPostBack="True" 
                            Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator57" runat="server" 
                            ControlToValidate="txtf_delivery_date" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style4">
                        <asp:Label ID="lblpdate18" runat="server" Font-Bold="False" Font-Size="Medium" 
                            ForeColor="Blue" Text="Delivery:-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddldelivery" runat="server" Height="22px" Width="125px">
                            <asp:ListItem Selected="True">Select Delivery</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem>Caeserean
                            </asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
                            ControlToValidate="ddldelivery" ErrorMessage="*" InitialValue="Select Delivery" 
                            ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="lblpdate8" runat="server" Font-Bold="False" Font-Size="Medium" 
                            ForeColor="Blue" Text="Duration of pregnancy:-"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtduration_of_pregnancy" runat="server" AutoPostBack="True" 
                            Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" 
                            ControlToValidate="txtduration_of_pregnancy" ErrorMessage="*" 
                            ToolTip="NOT BLANK"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style4">
                        <asp:Label ID="lblstatusofbaby" runat="server" Font-Bold="False" 
                            Font-Size="Medium" ForeColor="Blue" Text="Status of baby:-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlstatusof_baby" runat="server" Height="22px" 
                            Width="125px">
                            <asp:ListItem Selected="True">Select Status OF BABY</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnadddelivery" runat="server" BackColor="Green" 
                            Font-Bold="True" ForeColor="White" Text="ADD" />
                    </td>
                </tr>
            </table>
    <br />
   <center> <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" 
                     BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            </asp:GridView></center> 
   </asp:panel>
           
            <br />
            <table ALIGN="center" class="style1">
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblpdate14" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Abortions:-"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:RadioButton ID="rdbayes" runat="server" AutoPostBack="True" 
                            ForeColor="Blue" GroupName="obh" Text="Yes" />
                    </td>
                    <td class="style9">
                        <asp:RadioButton ID="rdbano" runat="server" AutoPostBack="True" Checked="True" 
                            Font-Size="Large" ForeColor="Blue" GroupName="obh" Text="No" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <asp:Panel ID="Panel1_abortions" runat="server" Visible="False" Height="320px">
           <br />
           
            <table align="center" class="style1">
                <tr>
                    <td>
                        <asp:Label ID="lblpdate17" runat="server" Font-Bold="False" Font-Size="Medium" 
                            ForeColor="Blue" Text="Date:-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtabortion_date" runat="server" AutoPostBack="True" 
                            Height="22px" Width="121px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator58" runat="server" 
                            ControlToValidate="txtabortion_date" ErrorMessage="*" ToolTip="Not Blank"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblpdate19" runat="server" Font-Bold="False" Font-Size="Medium" 
                            ForeColor="Blue" Text="Abortions:-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlabortion" runat="server" Height="22px" Width="158px">
                            <asp:ListItem Selected="True">Select type of Abortion</asp:ListItem>
                            <asp:ListItem>Induced</asp:ListItem>
                            <asp:ListItem>Natural</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator53" runat="server" 
                            ControlToValidate="ddlabortion" ErrorMessage="*" 
                            InitialValue="Select type of Abortion" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblpdate15" runat="server" Font-Bold="False" Font-Size="Medium" 
                            ForeColor="Blue" Text="Month:-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlabortion_month" runat="server" Height="22px" 
                            Width="125px">
                            <asp:ListItem Selected="True">Select Month</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" 
                            ControlToValidate="ddlabortion_month" ErrorMessage="*" 
                            InitialValue="Select Month" ToolTip="Not blank"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnaddabortion" runat="server" BackColor="Green" 
                            Font-Bold="True" ForeColor="White" style="height: 26px" Text="ADD" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
          <center>      <asp:GridView ID="GridView2" runat="server" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView></center>
                         </asp:Panel>
        <br />
   
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
          
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
    

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Panel> 
</asp:content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 48px;
        }
        .style2
        {
            width: 154px;
        }
        .style3
        {
            width: 254px;
        }
        .style4
        {
            width: 158px;
        }
        .style5
        {
            width: 255px;
        }
        .style6
        {
            width: 152px;
        }
        .style7
        {
            width: 251px;
        }
        .style8
        {
            width: 61px;
        }
        .style9
        {
            width: 66px;
        }
    </style>


</asp:Content>


