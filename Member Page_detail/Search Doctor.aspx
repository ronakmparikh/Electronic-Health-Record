<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Search Doctor.aspx.vb" Inherits="Member_Page_detail_Search_Doctor" title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_search_page" runat="server" Height="455px" 
        Width="1171px" ScrollBars="Vertical">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:LinkButton ID="LinkButton13" runat="server" 
        PostBackUrl="~/Member_Page.aspx">Home</asp:LinkButton>
    &nbsp;&gt; Doctor Search&nbsp;&nbsp;<br />
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="curent_vital_status" runat="server" BackColor="#009900" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Search Doctor"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table align="center" class="style1">
            <tr>
                <td class="style5">
                    <asp:Label ID="Label3" runat="server" ForeColor="#0066FF" Text=" Area"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" ForeColor="#3366FF" 
                        Text="Pincode&nbsp;&nbsp;"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" ForeColor="#3366FF" 
                        Text="State&nbsp;&nbsp;"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Label ID="Label6" runat="server" ForeColor="#3333FF" 
                        Text="Country&nbsp;&nbsp;"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" ForeColor="#3366FF" Text="Specilisation"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:DropDownList ID="ddlarea" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlarea" DataTextField="Area" DataValueField="Area">
                    </asp:DropDownList>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddlpincode" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlpincode" DataTextField="Pincode" DataValueField="Pincode">
                    </asp:DropDownList>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlstate" DataTextField="State" DataValueField="State">
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="ddlcountry" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlcountry" DataTextField="Country" DataValueField="Country">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlspesalist" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True">Select Specilisation</asp:ListItem>
                        <asp:ListItem>Heart</asp:ListItem>
                        <asp:ListItem>Cardiologist</asp:ListItem>
                        <asp:ListItem>Dermatologist</asp:ListItem>
                        <asp:ListItem>Gastroenterologist
                        </asp:ListItem>
                        <asp:ListItem>Hematologist/Oncologist</asp:ListItem>
                        <asp:ListItem>Internal Medicine Physician</asp:ListItem>
                        <asp:ListItem>Nephrologist</asp:ListItem>
                        <asp:ListItem>Neurologist</asp:ListItem>
                        <asp:ListItem>Neurosurgeon</asp:ListItem>
                        <asp:ListItem>Obstetrician</asp:ListItem>
                        <asp:ListItem>Gynecologist</asp:ListItem>
                        <asp:ListItem>Nurse-Midwifery</asp:ListItem>
                        <asp:ListItem>Ophthalmologist</asp:ListItem>
                        <asp:ListItem>Orthopaedic Surgeon</asp:ListItem>
                        <asp:ListItem>Otolaryngologist
                        </asp:ListItem>
                        <asp:ListItem>Pathologist</asp:ListItem>
                        <asp:ListItem>Pediatrician</asp:ListItem>
                        <asp:ListItem>Plastic Surgeon</asp:ListItem>
                        <asp:ListItem>Podiatrist</asp:ListItem>
                        <asp:ListItem>Psychiatrist
                        </asp:ListItem>
                        <asp:ListItem>Pulmonary Medicine Physician</asp:ListItem>
                        <asp:ListItem>Radiation Onconlogist
                        </asp:ListItem>
                        <asp:ListItem>Diagnostic Radiologist</asp:ListItem>
                        <asp:ListItem>Rheumatologist</asp:ListItem>
                        <asp:ListItem>Urologist
                        </asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
&nbsp;<asp:SqlDataSource ID="Sqlarea" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Area_Master]"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="Sqlpincode" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlarea" Name="Area" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="Sqlstate" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlarea" Name="Area" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;
    <asp:SqlDataSource ID="Sqlcountry" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Area_Master] WHERE ([Area] = @Area)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlarea" Name="Area" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<center >
    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <br />
            Full_Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:Label ID="Full_NameLabel" runat="server" Text='<%# Eval("Full_Name") %>' />
            &nbsp;<asp:Label ID="Middle_NameLabel" runat="server" 
                Text='<%# Eval("Middle_Name") %>' />
            <asp:Label ID="SurnameLabel" runat="server" Text='<%# Eval("Surname") %>' />
            <br />
            Clinic or Hopital Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:Label ID="CHouse_Name_and_NumberLabel" runat="server" 
                Text='<%# Eval("CHouse_Name_and_Number") %>' />
            <br />
            Society or Complex_Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:Label ID="CSociety_or_Complex_NameLabel" runat="server" 
                Text='<%# Eval("CSociety_or_Complex_Name") %>' />
            <br />
            Street Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:Label ID="CStreet_NameLabel" runat="server" 
                Text='<%# Eval("CStreet_Name") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            SelectCommand="SELECT [doctor_id], [Full_Name], [Middle_Name], [Surname], [CHouse_Name_and_Number], [CSociety_or_Complex_Name], [CStreet_Name] FROM [doctor_personal_detail] WHERE (([CArea] = @CArea) AND ([Specilisation] = @Specilisation))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlarea" Name="CArea" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddlspesalist" Name="Specilisation" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
   </center>

</asp:Panel>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    
    <style type="text/css">
        .style1
        {
            width: 63%;
        }
        .style2
        {
            width: 121px;
        }
        .style3
        {
            width: 128px;
        }
        .style4
        {
            width: 153px;
        }
        .style5
        {
            width: 176px;
        }
    </style>


</asp:Content>


