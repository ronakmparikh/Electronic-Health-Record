<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Issue_medicine.aspx.vb"
    Inherits="Inventory_Medical_store_Issue_medicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel8" runat="server" Height="812px" Width="1171px" Style="margin-right: 0px;
        margin-left: 70px;" BorderStyle="None">
        &nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
            CausesValidation="False" PostBackUrl="~/infrastructure/hospital_page.aspx">Home</asp:LinkButton>
        &nbsp;&gt;<asp:LinkButton ID="LinkButton2" runat="server" 
            CausesValidation="False" PostBackUrl="~/Link Page/Medical store.aspx">Medical store</asp:LinkButton>
        &nbsp;&gt;Issue Medicine&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="#009900" Font-Bold="True" Font-Size="XX-Large"
            ForeColor="White" Text="Issue Medicine"></asp:Label>
        <br />
        <table align="center" class="style1">
            <tr>
                <td class="style16">
                    <asp:Label ID="lblfather_name18" runat="server" Font-Size="Large" ForeColor="Blue"
                        Text="Issue No"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtissue_no" runat="server"></asp:TextBox>
                </td>
                <td class="style24">
                    <asp:Label ID="lblfather_name1" runat="server" Font-Size="Large" ForeColor="Blue"
                        Text="Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtissue_date" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtissue_date"
                        ErrorMessage="*" ToolTip="Give date"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="lblfather_name5" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Issued To"></asp:Label>
                </td>
                <td class="style15">
                    <asp:DropDownList ID="ddlpatient_id" runat="server" AppendDataBoundItems="True" 
                        AutoPostBack="True" DataSourceID="Sqlpatient_id" DataTextField="patient_id" 
                        DataValueField="patient_id" Width="131px">
                        <asp:ListItem>Select Patient</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style23">
                    <asp:Label ID="lblfather_name19" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Medicine grade"></asp:Label>
                </td>
                <td class="style13">
                    <asp:DropDownList ID="ddlmedicine_grade" runat="server" AutoPostBack="True" 
                        Width="131px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Tab</asp:ListItem>
                        <asp:ListItem>Capsule</asp:ListItem>
                        <asp:ListItem>Liquid</asp:ListItem>
                        <asp:ListItem>Ointment</asp:ListItem>
                        <asp:ListItem>Cream base</asp:ListItem>
                        <asp:ListItem>Injection</asp:ListItem>
                        <asp:ListItem>Saline</asp:ListItem>
                        <asp:ListItem>Consumables</asp:ListItem>
                        <asp:ListItem>Implant</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    <asp:Label ID="lblfather_name3" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Description"></asp:Label>
                    s</td>
                <td class="style14">
                    <asp:DropDownList ID="ddldescription" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="131px">
                    </asp:DropDownList>
                </td>
                <td class="style24">
                    <asp:Label ID="lblfather_name2" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Medicine Code"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlmedicine_id" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="Madicine_id" 
                        DataValueField="Madicine_id" Width="131px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    <asp:Label ID="lblfather_name20" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Rate"></asp:Label>
                </td>
                <td class="style14">
                    <asp:DropDownList ID="ddlrate" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlrate" DataTextField="rate" DataValueField="rate" Width="131px">
                    </asp:DropDownList>
                </td>
                <td class="style24">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    <asp:Label ID="lblfather_name4" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Requested By"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtrequested_by" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td class="style24">
                    <asp:Label ID="lblfather_name7" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Requested Qty"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtrequested_qty" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtrequested_qty" ErrorMessage="*" 
                        ToolTip="give in numeric format" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtrequested_qty" ErrorMessage="*" 
                        ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    <asp:Label ID="lblfather_name6" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Department"></asp:Label>
                </td>
                <td class="style14">
                    <asp:DropDownList ID="ddlde0partment" runat="server" Width="135px">
                        <asp:ListItem>Nursing</asp:ListItem>
                        <asp:ListItem> Accident and emergency (A&amp;E)</asp:ListItem>
                        <asp:ListItem> Admissions
                        </asp:ListItem>
                        <asp:ListItem>Anaesthetics</asp:ListItem>
                        <asp:ListItem>Breast Screening</asp:ListItem>
                        <asp:ListItem>Cardiology
                        </asp:ListItem>
                        <asp:ListItem>Chaplaincy</asp:ListItem>
                        <asp:ListItem>Critical Care</asp:ListItem>
                        <asp:ListItem>Diagnostic Imaging</asp:ListItem>
                        <asp:ListItem>Elderly services</asp:ListItem>
                        <asp:ListItem>Gastroenterology</asp:ListItem>
                        <asp:ListItem>General Services</asp:ListItem>
                        <asp:ListItem>General Surgery</asp:ListItem>
                        <asp:ListItem>Gynaecology
                        </asp:ListItem>
                        <asp:ListItem>Haematology</asp:ListItem>
                        <asp:ListItem> Haematology</asp:ListItem>
                        <asp:ListItem>Human Resources</asp:ListItem>
                        <asp:ListItem>Infection Control</asp:ListItem>
                        <asp:ListItem>Information Management
                        </asp:ListItem>
                        <asp:ListItem> Maternity
                        </asp:ListItem>
                        <asp:ListItem>Microbiology
                        </asp:ListItem>
                        <asp:ListItem>Neonatal</asp:ListItem>
                        <asp:ListItem> Nephrology</asp:ListItem>
                        <asp:ListItem>Nutrition and Dietetics</asp:ListItem>
                        <asp:ListItem>Obstetrics/Gynaecology
                        </asp:ListItem>
                        <asp:ListItem> Occupational Therapy</asp:ListItem>
                        <asp:ListItem>Oncology</asp:ListItem>
                        <asp:ListItem>Ophthalmology
                        </asp:ListItem>
                        <asp:ListItem>Orthopaedics
                        </asp:ListItem>
                        <asp:ListItem>Otolaryngology (Ear, Nose, and Throat)</asp:ListItem>
                        <asp:ListItem>Pain Management
                        </asp:ListItem>
                        <asp:ListItem>Patient Accounts</asp:ListItem>
                        <asp:ListItem>Patient Services</asp:ListItem>
                        <asp:ListItem>Pharmacy
                        </asp:ListItem>
                        <asp:ListItem>Physiotherapy</asp:ListItem>
                        <asp:ListItem>Purchasing &amp; Supplies
                        </asp:ListItem>
                        <asp:ListItem> Radiology</asp:ListItem>
                        <asp:ListItem>Radiotherapy</asp:ListItem>
                        <asp:ListItem>Rena</asp:ListItem>
                        <asp:ListItem>Rheumatology
                        </asp:ListItem>
                        <asp:ListItem>Sexual Health
                        </asp:ListItem>
                        <asp:ListItem>Social Work
                        </asp:ListItem>
                        <asp:ListItem>Urology</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="ddlde0partment" ErrorMessage="*" 
                        ToolTip="Give Rate  text format"></asp:RequiredFieldValidator>
                </td>
                <td class="style24">
                    &nbsp;
                    <asp:Label ID="lblfather_name9" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Issued Qty"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="txtIssued_qty" runat="server" AutoPostBack="True"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtIssued_qty" ErrorMessage="*" 
                        ToolTip="give in numeric format" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="txtIssued_qty" ErrorMessage="*" ToolTip="REQUIRE ISSUE QTY"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    <asp:Label ID="lblfather_name8" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Available Qty"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtavailable_qty" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtavailable_qty" ErrorMessage="*" 
                        ToolTip="Give Expir Datey  text format"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtavailable_qty" ErrorMessage="*" 
                        ToolTip="give in numeric format" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style24">
                    &nbsp;
                    <asp:Label ID="lblfather_name21" runat="server" Font-Size="Large" 
                        ForeColor="Blue" Text="Total Rate"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="txttotalrate" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <table align="center" class="style1">
            <tr>
                <td class="style18">
                    <asp:Button ID="btninsert" runat="server" BackColor="#009900" Font-Bold="True" 
                        ForeColor="White" Text="Add" Width="77px" />
                </td>
                <td class="style19">
                    <asp:Button ID="btnupdate" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Update" 
                        Width="77px" Visible="False" />
                </td>
                <td class="style20">
                    <asp:Button ID="btndelete" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Delete" 
                        Width="77px" />
                </td>
                <td class="style21">
                    <asp:Button ID="btnsearch" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Search" 
                        Width="77px" />
                </td>
                <td>
                    <asp:Button ID="btnsearch0" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" 
                        PostBackUrl="~/Medical store report/Issue_medicine_report.aspx" 
                        Text="View Report" Width="104px" />
                </td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Button ID="btnfirst" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&lt;&lt;" 
                        Width="77px" Visible="False" />
                </td>
                <td class="style19">
                    <asp:Button ID="btnpre" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&lt;" 
                        Width="77px" Visible="False" />
                </td>
                <td class="style20">
                    <asp:Button ID="btnforward" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" 
                        Style="height: 26px" Text="&gt;" Width="77px" Visible="False" />
                </td>
                <td class="style21">
                    <asp:Button ID="btnlast" runat="server" BackColor="#009900" 
                        CausesValidation="False" Font-Bold="True" ForeColor="White" Text="&gt;&gt;" 
                        Width="77px" Visible="False" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <br />
        <center>
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </center>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT * FROM [medicine_order] WHERE ([medicine_name] = @medicine_name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddldescription" Name="medicine_name" PropertyName="SelectedValue"
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1"
            runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [medicine_order] WHERE ([medicine_grade] = @medicine_grade)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlmedicine_grade" Name="medicine_grade" PropertyName="SelectedValue"
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Sqlrate" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE ([medicine_name] = @medicine_name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddldescription" Name="medicine_name" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Sqlpatient_id" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [personal_detail]"></asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .style1
        {
            width: 514px;
            height: 296px;
        }
        .style13
        {
            height: 17px;
        }
        .style14
        {
            width: 215px;
        }
        .style15
        {
            height: 17px;
            width: 215px;
        }
        .style16
        {
            width: 141px;
        }
        .style17
        {
            height: 17px;
            width: 141px;
        }
        .style18
        {
            width: 107px;
        }
        .style19
        {
            width: 97px;
        }
        .style20
        {
            width: 92px;
        }
        .style21
        {
            width: 111px;
        }
        .style23
        {
            height: 17px;
            width: 106px;
        }
        .style24
        {
            width: 106px;
        }
    </style>
</asp:Content>
