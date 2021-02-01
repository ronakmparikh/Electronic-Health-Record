<%@ Page Language="VB" MasterPageFile="~/Doctor_login_page.master" AutoEventWireup="false" CodeFile="Search Hospital.aspx.vb" Inherits="Individual_Provider_Search_Hospital" title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;
<asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="414px" Width="1171px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Times New Roman" 
        Font-Size="X-Large" PathSeparator=" : ">
        <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
        <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
    </asp:SiteMapPath>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="curent_vital_status" runat="server" BackColor="#009900" 
        Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Search Hospital"></asp:Label>
    <br />
    <br />
     <table align="center" class="style1">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="Area"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Pincode"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label5" runat="server" ForeColor="Blue" Text="State"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" ForeColor="Blue" Text="Country"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:DropDownList ID="ddlarea" runat="server" AppendDataBoundItems="True" 
                        AutoPostBack="True" DataSourceID="Sqlarea" DataTextField="Area" 
                        DataValueField="Area">
                        <asp:ListItem>Select Area</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="ddlpincode" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlpincode" DataTextField="Pincode" DataValueField="Pincode">
                    </asp:DropDownList>
                </td>
                <td class="style5">
                    <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlstate" DataTextField="State" DataValueField="State">
                    </asp:DropDownList>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddlcountry" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlcountry" DataTextField="Country" DataValueField="Country">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="Sqlarea" runat="server" 
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
        <br />
    <center >
    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <br />
            Hospital Name:
            <asp:Label ID="RnameLabel" runat="server" Text='<%# Eval("Rname") %>' />
            <br />
            Land line Number:
            <asp:Label ID="Land_lineLabel" runat="server" Text='<%# Eval("Land_line") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Hospital_id], [Rname], [Land_line] FROM [Registration] WHERE ([Area] = @Area)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlarea" Name="Area" 
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
            width: 39%;
        }
        .style2
        {
            width: 10px;
        }
        .style3
        {
            width: 122px;
        }
        .style4
        {
            width: 121px;
        }
        .style5
        {
            width: 128px;
        }
    </style>


</asp:Content>

