<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Bill.aspx.vb" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel8" runat="server" Height="2638px" 
    Width="1171px" style="margin-right: 0px; margin-left: 70px;" 
        BorderStyle="None">
    <div style="color: #0000ff;  text-align: justify">
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
            CausesValidation="False" PostBackUrl="~/infrastructure/hospital_page.aspx">Home</asp:LinkButton>
        &nbsp;&gt;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
            PostBackUrl="~/Link Page/Medical store.aspx">Medical store</asp:LinkButton>
        &nbsp;&gt;Bill &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        <center><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"
            Text="Medical Bill" BackColor="Green"></asp:Label></center><br />
        <br />
        &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
        &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
        <br />
        <table align="center" class="style1">
            <tr>
                <td class="style13">
                    <asp:Label ID="Label2" runat="server" Text="Bill_No:-"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtbillno" runat="server" Height="22px" Width="121px"></asp:TextBox>
                </td>
                <td class="style11">
                    <asp:Label ID="Label4" runat="server" Text="Bill_Date:-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdate" runat="server" Height="22px" Width="121px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="Label13" runat="server" Text="Doctor id:-"></asp:Label>
                </td>
                <td class="style14">
                    <asp:DropDownList ID="ddldoctorid" runat="server" AppendDataBoundItems="True" 
                        AutoPostBack="True" DataSourceID="Sqldoctor_id" DataTextField="doctor_id" 
                        DataValueField="doctor_id" Width="100px">
                        <asp:ListItem>Select Doctor</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqldoctor_id" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [doctor_personal_detail]"></asp:SqlDataSource>
                </td>
                <td class="style11">
                    <asp:Label ID="Label15" runat="server" Text="Doctor Name:-"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddldoctorname" runat="server" Width="100px" 
                        AutoPostBack="True" DataSourceID="sqldoctor_name" DataTextField="Full_Name" 
                        DataValueField="Full_Name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sqldoctor_name" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [doctor_personal_detail] WHERE ([doctor_id] = @doctor_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddldoctorid" Name="doctor_id" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="Label3" runat="server" Text="Patient_id:-"></asp:Label>
                </td>
                <td class="style14">
                    <asp:DropDownList ID="ddlpatient_id" runat="server" AppendDataBoundItems="True" 
                        AutoPostBack="True" DataSourceID="Sqlpatient_id" DataTextField="patient_id" 
                        DataValueField="patient_id" Width="100px">
                        <asp:ListItem>Select Patient</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlpatient_id" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [personal_detail]"></asp:SqlDataSource>
                </td>
                <td class="style11">
                    <asp:Label ID="Label14" runat="server" Text="Patient_name:-"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlpatient_name" runat="server" Width="100px" 
                        DataSourceID="Sqlpatient_name" DataTextField="name" DataValueField="name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlpatient_name" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [personal_detail] WHERE ([patient_id] = @patient_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlpatient_id" Name="patient_id" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="Label16" runat="server" Text="Address:-"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="158px"></asp:TextBox>
                </td>
                <td class="style11">
                    <asp:LinkButton ID="LinkButton3" runat="server">Show Priscription</asp:LinkButton>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="Green" Font-Bold="True" 
                        ForeColor="White" Text="Submit" />
                </td>
            </tr>
        </table>
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Sr.No:-"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label18" runat="server" Text="Madicine:-"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Label ID="Label7" runat="server" Text="Particulars:-"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Label ID="Label19" runat="server" Text="Batch"></asp:Label>
                </td>
                <td class="style16">
                    <asp:Label ID="Label8" runat="server" Text="Qty:-"></asp:Label>
                </td>
                <td class="style16">
                    <asp:Label ID="Label20" runat="server" Text="MFG"></asp:Label>
                </td>
                <td class="style17">
                    <asp:Label ID="Label21" runat="server" Text="EXP"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="Label9" runat="server" Text="Rate:-"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="Label10" runat="server" Text="Taxes:-"></asp:Label>
                </td>
                <td class="style9">
                    <asp:Label ID="Label11" runat="server" Text="Amount:-"></asp:Label>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtserialno" runat="server" Height="22px" Width="30px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicine_grade" runat="server" AutoPostBack="True" 
                        Width="86px">
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
                <td class="style4">
                    <asp:DropDownList ID="ddlparticular1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="125px">
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="ddlbatch0" runat="server" AutoPostBack="True" 
                        DataSourceID="sqlbatch1" DataTextField="batch_no" DataValueField="batch_no" 
                        Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sqlbatch1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular1" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:TextBox ID="txtqty" runat="server" AutoPostBack="True" Width="40px"></asp:TextBox>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlmfg01" runat="server" DataSourceID="SqlDataSource34" 
                        DataTextField="company_name" DataValueField="company_name" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource34" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch0" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlexp01" runat="server" DataSourceID="SqlDataSource45" 
                        DataTextField="expiry_date" DataValueField="expiry_date" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource45" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch0" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="ddlrate1" runat="server" DataSourceID="SqlDataSource56" 
                        DataTextField="rate" DataValueField="rate" Width="78px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource56" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch0" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddltax1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource67" DataTextField="tax_rate" DataValueField="tax_rate" 
                        Width="57px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource67" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch0" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtamount" runat="server" Width="105px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="btnadd1" runat="server" Text="ADD" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtserialno1" runat="server" Width="30px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicine_grade0" runat="server" AutoPostBack="True" 
                        Width="86px">
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
                <td class="style4">
                    <asp:DropDownList ID="ddlparticular2" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource4" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="125px">
                    </asp:DropDownList>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlbatch1" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlbatch02" DataTextField="batch_no" DataValueField="batch_no" 
                        Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlbatch02" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular2" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:TextBox ID="qty1" runat="server" AutoPostBack="True" Width="40px"></asp:TextBox>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlmfg2" runat="server" DataSourceID="SqlDataSource35" 
                        DataTextField="company_name" DataValueField="company_name" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource35" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch1" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlexp2" runat="server" DataSourceID="SqlDataSource46" 
                        DataTextField="expiry_date" DataValueField="expiry_date" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource46" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch1" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="ddlrate2" runat="server" DataSourceID="SqlDataSource57" 
                        DataTextField="rate" DataValueField="rate" Width="78px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource57" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch1" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddltax2" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource68" DataTextField="tax_rate" DataValueField="tax_rate" 
                        Width="57px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource68" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch1" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtamount1" runat="server" Width="105px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="btnadd2" runat="server" Text="ADD" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtserialno2" runat="server" Width="30px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicine_grade1" runat="server" AutoPostBack="True" 
                        Width="86px">
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
                <td class="style4">
                    <asp:DropDownList ID="ddlparticular3" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource7" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="125px">
                    </asp:DropDownList>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlbatch2" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlbatch03" DataTextField="batch_no" DataValueField="batch_no" 
                        Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlbatch03" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular3" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:TextBox ID="qty2" runat="server" AutoPostBack="True" Width="40px"></asp:TextBox>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlmfg3" runat="server" DataSourceID="SqlDataSource36" 
                        DataTextField="company_name" DataValueField="company_name" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource36" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch2" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlexp3" runat="server" DataSourceID="SqlDataSource47" 
                        DataTextField="expiry_date" DataValueField="expiry_date" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource47" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch2" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="ddlrate3" runat="server" DataSourceID="SqlDataSource58" 
                        DataTextField="rate" DataValueField="rate" Width="78px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource58" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch2" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddltax3" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource69" DataTextField="tax_rate" DataValueField="tax_rate" 
                        Width="57px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource69" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch2" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtamount2" runat="server" Width="105px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="btnadd3" runat="server" Text="ADD" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtserialno3" runat="server" Width="30px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicine_grade4" runat="server" AutoPostBack="True" 
                        Width="86px">
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
                <td class="style4">
                    <asp:DropDownList ID="ddlparticular4" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource10" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="125px">
                    </asp:DropDownList>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlbatch3" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlbatch04" DataTextField="batch_no" DataValueField="batch_no" 
                        Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlbatch04" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular4" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:TextBox ID="qty3" runat="server" AutoPostBack="True" Width="40px"></asp:TextBox>
                   
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlmfg4" runat="server" DataSourceID="SqlDataSource37" 
                        DataTextField="company_name" DataValueField="company_name" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource37" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch3" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlexp4" runat="server" DataSourceID="SqlDataSource48" 
                        DataTextField="expiry_date" DataValueField="expiry_date" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource48" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch3" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="ddlrate4" runat="server" DataSourceID="SqlDataSource59" 
                        DataTextField="rate" DataValueField="rate" Width="78px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource59" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch3" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddltax4" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource70" DataTextField="tax_rate" DataValueField="tax_rate" 
                        Width="57px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource70" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch3" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtamount3" runat="server" Width="105px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="btnadd4" runat="server" Text="ADD" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtserialno4" runat="server" Width="30px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicine_grade5" runat="server" AutoPostBack="True" 
                        Width="86px">
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
                <td class="style4">
                    <asp:DropDownList ID="ddlparticular5" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource11" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="125px">
                    </asp:DropDownList>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlbatch4" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlbatch05" DataTextField="batch_no" DataValueField="batch_no" 
                        Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlbatch05" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular5" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:TextBox ID="qty4" runat="server" AutoPostBack="True" Width="40px"></asp:TextBox>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlmfg5" runat="server" DataSourceID="SqlDataSource38" 
                        DataTextField="company_name" DataValueField="company_name" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource38" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch4" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlexp5" runat="server" DataSourceID="SqlDataSource49" 
                        DataTextField="expiry_date" DataValueField="expiry_date" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource49" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch4" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="ddlrate5" runat="server" DataSourceID="SqlDataSource60" 
                        DataTextField="rate" DataValueField="rate" Width="78px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource60" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch4" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddltax5" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource71" DataTextField="tax_rate" DataValueField="tax_rate" 
                        Width="57px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource71" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch4" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtamount4" runat="server" Width="105px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="btnadd5" runat="server" Text="ADD" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtserialno5" runat="server" Width="30px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicine_grade6" runat="server" AutoPostBack="True" 
                        Width="86px">
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
                <td class="style4">
                    <asp:DropDownList ID="ddlparticular6" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource12" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="125px">
                    </asp:DropDownList>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlbatch5" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlbatch06" DataTextField="batch_no" DataValueField="batch_no" 
                        Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlbatch06" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular6" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:TextBox ID="qty5" runat="server" AutoPostBack="True" Width="40px"></asp:TextBox>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlmfg6" runat="server" DataSourceID="SqlDataSource39" 
                        DataTextField="company_name" DataValueField="company_name" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource39" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch5" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlexp6" runat="server" DataSourceID="SqlDataSource50" 
                        DataTextField="expiry_date" DataValueField="expiry_date" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource50" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch5" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="ddlrate6" runat="server" DataSourceID="SqlDataSource61" 
                        DataTextField="rate" DataValueField="rate" Width="78px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource61" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch5" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddltax6" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource72" DataTextField="tax_rate" DataValueField="tax_rate" 
                        Width="57px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource72" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch5" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtamount5" runat="server" Width="105px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="btnadd6" runat="server" Text="ADD" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtserialno6" runat="server" Width="30px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicine_grade7" runat="server" AutoPostBack="True" 
                        Width="86px">
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
                <td class="style4">
                    <asp:DropDownList ID="ddlparticular7" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource13" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="125px">
                    </asp:DropDownList>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlbatch6" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlbatch07" DataTextField="batch_no" DataValueField="batch_no" 
                        Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlbatch07" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular7" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:TextBox ID="qty6" runat="server" AutoPostBack="True" Width="40px"></asp:TextBox>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlmfg7" runat="server" DataSourceID="SqlDataSource40" 
                        DataTextField="company_name" DataValueField="company_name" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource40" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch6" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlexp7" runat="server" DataSourceID="SqlDataSource51" 
                        DataTextField="expiry_date" DataValueField="expiry_date" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource51" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch6" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="ddlrate7" runat="server" DataSourceID="SqlDataSource62" 
                        DataTextField="rate" DataValueField="rate" Width="78px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource62" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch6" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddltax7" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource73" DataTextField="tax_rate" DataValueField="tax_rate" 
                        Width="57px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource73" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch6" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtamount6" runat="server" Width="105px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="btnadd7" runat="server" Text="ADD" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtserialno7" runat="server" Width="30px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicine_grade8" runat="server" AutoPostBack="True" 
                        Width="86px">
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
                <td class="style4">
                    <asp:DropDownList ID="ddlparticular8" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource14" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="125px">
                    </asp:DropDownList>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlbatch7" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlbatch08" DataTextField="batch_no" DataValueField="batch_no" 
                        Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlbatch08" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular8" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:TextBox ID="qty7" runat="server" AutoPostBack="True" Width="40px"></asp:TextBox>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlmfg8" runat="server" DataSourceID="SqlDataSource41" 
                        DataTextField="company_name" DataValueField="company_name" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource41" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch7" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlexp8" runat="server" DataSourceID="SqlDataSource52" 
                        DataTextField="expiry_date" DataValueField="expiry_date" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource52" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch7" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="ddlrate8" runat="server" DataSourceID="SqlDataSource63" 
                        DataTextField="rate" DataValueField="rate" Width="78px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource63" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch7" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddltax8" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource74" DataTextField="tax_rate" DataValueField="tax_rate" 
                        Width="57px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource74" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch7" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtamount7" runat="server" Width="105px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="btnadd8" runat="server" Text="ADD" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtserialno8" runat="server" Width="30px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicine_grade9" runat="server" AutoPostBack="True" 
                        Width="86px">
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
                <td class="style4">
                    <asp:DropDownList ID="ddlparticular9" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource15" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="125px">
                    </asp:DropDownList>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlbatch8" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlbatch09" DataTextField="batch_no" DataValueField="batch_no" 
                        Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlbatch09" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular9" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:TextBox ID="qty8" runat="server" AutoPostBack="True" Width="40px"></asp:TextBox>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlmfg9" runat="server" DataSourceID="SqlDataSource42" 
                        DataTextField="company_name" DataValueField="company_name" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource42" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch8" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlexp9" runat="server" DataSourceID="SqlDataSource53" 
                        DataTextField="expiry_date" DataValueField="expiry_date" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource53" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch8" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="ddlrate9" runat="server" DataSourceID="SqlDataSource64" 
                        DataTextField="rate" DataValueField="rate" Width="78px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource64" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch8" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddltax9" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource75" DataTextField="tax_rate" DataValueField="tax_rate" 
                        Width="57px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource75" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch9" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtamount8" runat="server" Width="105px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="btnadd9" runat="server" Text="ADD" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtserialno9" runat="server" Width="30px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicine_grade10" runat="server" AutoPostBack="True" 
                        Width="86px">
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
                <td class="style4">
                    <asp:DropDownList ID="ddlparticular10" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource16" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="125px">
                    </asp:DropDownList>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlbatch9" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlbatch10" DataTextField="batch_no" DataValueField="batch_no" 
                        Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlbatch10" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([medicine_name] = @medicine_name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular10" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:TextBox ID="qty9" runat="server" AutoPostBack="True" Width="40px"></asp:TextBox>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlmfg10" runat="server" DataSourceID="SqlDataSource43" 
                        DataTextField="company_name" DataValueField="company_name" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource43" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch9" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlexp10" runat="server" DataSourceID="SqlDataSource54" 
                        DataTextField="expiry_date" DataValueField="expiry_date" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource54" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch9" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="ddlrate10" runat="server" DataSourceID="SqlDataSource65" 
                        DataTextField="rate" DataValueField="rate" Width="78px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource65" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch9" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddltax10" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource76" DataTextField="tax_rate" DataValueField="tax_rate" 
                        Width="57px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource76" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch10" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtamount9" runat="server" Width="105px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="btnadd10" runat="server" Text="ADD" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtserialno10" runat="server" AutoPostBack="True" Width="30px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlmedicine_grade11" runat="server" AutoPostBack="True" 
                        Width="86px">
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
                <td class="style4">
                    <asp:DropDownList ID="ddlparticular11" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource17" DataTextField="medicine_name" 
                        DataValueField="medicine_name" Width="125px">
                    </asp:DropDownList>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlbatch10" runat="server" AutoPostBack="True" 
                        DataSourceID="Sqlbatch11" DataTextField="batch_no" DataValueField="batch_no" 
                        Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlbatch11" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular11" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:TextBox ID="qty10" runat="server" Width="40px"></asp:TextBox>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlmfg11" runat="server" DataSourceID="SqlDataSource44" 
                        DataTextField="company_name" DataValueField="company_name" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource44" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch10" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlexp11" runat="server" DataSourceID="SqlDataSource55" 
                        DataTextField="expiry_date" DataValueField="expiry_date" Width="78px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource55" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch10" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="ddlrate11" runat="server" DataSourceID="SqlDataSource66" 
                        DataTextField="rate" DataValueField="rate" Width="78px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource66" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [medicine_order] WHERE ([batch_no] = @batch_no)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlbatch10" Name="batch_no" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddltax11" runat="server" AutoPostBack="True" 
                        DataTextField="tax_rate" DataValueField="tax_rate" 
                        Width="57px">
                    </asp:DropDownList>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtamount10" runat="server" Width="105px"></asp:TextBox>
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="btnadd11" runat="server" Text="ADD" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;
        <table align="center" class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label17" runat="server" Text=" Total Amount:-"></asp:Label>
                    <asp:TextBox ID="txttotalamount" runat="server" Height="22px" Width="106px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="Green" 
            Font-Bold="True" ForeColor="White" PostBackUrl="~/Medical store report/bill.aspx" 
            Text="Print Bill" /></center>
        &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <br />
        &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_grade] = @medicine_grade) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlmedicine_grade" Name="medicine_grade" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp; &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular1" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular1" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp; &nbsp;<br />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_grade] = @medicine_grade) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlmedicine_grade0" Name="medicine_grade" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />            
                                </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular2" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular2" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource7" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_grade] = @medicine_grade) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlmedicine_grade1" Name="medicine_grade" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource8" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
          SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular3" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular3" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource10" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_grade] = @medicine_grade) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlmedicine_grade4" Name="medicine_grade" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource18" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular4" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource26" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular4" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource11" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_grade] = @medicine_grade) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlmedicine_grade5" Name="medicine_grade" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource19" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular5" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource27" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular5" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource12" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_grade] = @medicine_grade) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlmedicine_grade6" Name="medicine_grade" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource20" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular6" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /> </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource28" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular6" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource13" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_grade] = @medicine_grade) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlmedicine_grade7" Name="medicine_grade" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /> </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource21" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular7" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource29" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular7" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:SqlDataSource 
            ID="SqlDataSource14" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_grade] = @medicine_grade) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlmedicine_grade8" Name="medicine_grade" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource22" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular8" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource30" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular8" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource15" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_grade] = @medicine_grade) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlmedicine_grade9" Name="medicine_grade" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource23" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular9" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource31" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular9" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource16" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_grade] = @medicine_grade) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlmedicine_grade10" Name="medicine_grade" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" />   </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource24" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular10" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource32" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular10" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource17" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_grade] = @medicine_grade) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlmedicine_grade11" Name="medicine_grade" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource25" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular11" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource33" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [medicine_order] WHERE (([medicine_name] = @medicine_name) AND ([Hospital_id] = @Hospital_id))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlparticular11" Name="medicine_name" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                                Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <br />
        &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    
    </div>
</asp:Panel>
</asp:content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    
    <style type="text/css">
        .style1
        {
            width: 527px;
        }
        .style2
        {
            width: 53px;
        }
        .style3
        {
            width: 139px;
        }
        .style4
        {
            width: 109px;
        }
        .style7
        {
            width: 70px;
        }
        .style8
        {
            width: 91px;
        }
        .style9
        {
            width: 193px;
        }
        .style10
        {
            width: 179px;
        }
        .style11
        {
            width: 132px;
        }
        .style13
        {
            width: 31px;
        }
        .style14
        {
            width: 200px;
        }
        .style16
        {
            width: 82px;
        }
        .style17
        {
            width: 79px;
        }
    </style>


</asp:Content>

