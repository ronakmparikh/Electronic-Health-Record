<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Show Priscriptions.aspx.vb" Inherits="Member_Page_detail_Show_Priscriptions" title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="455px" Width="1171">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton13" runat="server" 
            PostBackUrl="~/Member_Page.aspx">Home</asp:LinkButton>
        &nbsp;&gt; Priscription&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <center>
            <asp:Label ID="Label8" runat="server" BackColor="#009900" Font-Overline="False" 
                Font-Size="X-Large" ForeColor="White" Text="Priscription"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataSourceID="SqlDataSource1" PageSize="4">
                <RowStyle BackColor="White" ForeColor="#330099" />
                <Columns>
                    <asp:BoundField DataField="doctor_id" HeaderText="doctor_id" 
                        SortExpression="doctor_id" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="symptoms" HeaderText="symptoms" 
                        SortExpression="symptoms" />
                    <asp:BoundField DataField="medicine_name" HeaderText="medicine_name" 
                        SortExpression="medicine_name" />
                    <asp:BoundField DataField="advice" HeaderText="advice" 
                        SortExpression="advice" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [doctor_id], [date], [symptoms], [medicine_name], [advice] FROM [Prescription] WHERE ([patient_id] = @patient_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="patient_id" SessionField="member_user_id" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </center>
    </asp:Panel>
</asp:Content>

