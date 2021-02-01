<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Return_medicine.aspx.vb" Inherits="Inventory_Medical_store_Return_medicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel8" runat="server" Height="745px" 
    Width="1171px" style="margin-right: 0px; margin-left: 70px;" 
        BorderStyle="None" ScrollBars="Auto">
        &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
            PostBackUrl="~/infrastructure/hospital_page.aspx">Home</asp:LinkButton>
        &nbsp;&gt;<asp:LinkButton ID="LinkButton2" runat="server" 
            CausesValidation="False" PostBackUrl="~/Link Page/Medical store.aspx">Medical store</asp:LinkButton>
        &nbsp;&gt;Return Medicine&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="#009900" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="White" Text="Return Medicine"></asp:Label>
        <br />
        <table align="center" class="style1">
            <tr>
                <td class="style5">
                    <asp:Label ID="lblfather_name18" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Return No"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtreturn_no" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Label ID="lblfather_name20" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Issued no"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlissu_no" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="Issue_no" 
                        DataValueField="Issue_no" style="margin-left: 0px" Width="131px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="lblfather_name2" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Medicine Code"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddlmedicine_id" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="Madicine_id" 
                        DataValueField="Madicine_id" Width="131px">
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:Label ID="lblfather_name3" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Description"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddldiscription" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource3" DataTextField="description" 
                        DataValueField="description" Width="131px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="lblfather_name4" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Return By"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtreturn_by" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtreturn_by" ErrorMessage="*" 
                        ToolTip="Give Batch no  in text format"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    <asp:Label ID="lblfather_name1" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtreturn_date" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtreturn_date" ErrorMessage="*" ToolTip="Give date"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="lblfather_name6" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Department"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddldepartment" runat="server" Width="131px">
                        <asp:ListItem>Nursing</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="lblfather_name19" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Issued Qty"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddlissued_qty" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource4" DataTextField="issued_qty" 
                        DataValueField="issued_qty" Width="131px">
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:Label ID="lblfather_name7" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Return Qty"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtreturn_qty" runat="server" AutoPostBack="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtreturn_qty" ErrorMessage="*" 
                        ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="lblfather_name8" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Available Qty"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtavailable_qty" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Label ID="lblfather_name9" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Usable Qty"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtusable_qty" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="txtusable_qty" ErrorMessage="*" ToolTip="REQUIRE ISSUE QTY"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<table 
            align="center" class="style1">
            <tr>
                <td>
                    <asp:Button ID="btninsert" runat="server" BackColor="#009900" Font-Bold="True" 
                        ForeColor="White" Text="Add" Width="77px" />
                </td>
                <td>
                    <asp:Button ID="btndelete" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Delete" 
                        Width="77px" />
                </td>
                <td>
                    <asp:Button ID="btnsearch" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Search" 
                        Width="77px" />
                </td>
                <td>
                    <asp:Button ID="btnsearch0" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" 
                        PostBackUrl="~/Medical store report/Rerturn_medicine.aspx" Text="View Report" 
                        Width="104px" />
                </td>
                <td>
                    <asp:Button ID="btnupdate" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Update" 
                        Width="77px" Visible="False" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnfirst" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&lt;&lt;" 
                        Width="77px" Visible="False" />
                </td>
                <td>
                    <asp:Button ID="btnpre" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&lt;" 
                        Width="77px" Visible="False" />
                </td>
                <td>
                    <asp:Button ID="btnforward" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" 
                        style="height: 26px" Text="&gt;" Width="77px" Visible="False" />
                </td>
                <td>
                    <asp:Button ID="btnlast" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&gt;&gt;" 
                        Width="77px" Visible="False" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2">
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Issue_no] FROM [Issue_medicine]"></asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Madicine_id] FROM [Issue_medicine] WHERE ([Issue_no] = @Issue_no)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlissu_no" Name="Issue_no" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [description] FROM [Issue_medicine] WHERE ([Issue_no] = @Issue_no)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlissu_no" Name="Issue_no" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [issued_qty] FROM [Issue_medicine] WHERE ([Issue_no] = @Issue_no)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlissu_no" Name="Issue_no" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        </asp:Panel>
</asp:content>

    
  
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    
    <style type="text/css">
        .style1
        {
            width: 49%;
            height: 143px;
        }
        .style2
        {
            width: 141px;
        }
        .style4
        {
            width: 90px;
        }
        .style5
        {
            width: 118px;
        }
    </style>


</asp:Content>


    
  
