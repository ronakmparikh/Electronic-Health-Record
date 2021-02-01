<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Show_priscription.aspx.vb" Inherits="Medical_store_Mgmt_Show_priscription" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataSourceID="Sqlpriscription" PageSize="2">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="doctor_id" HeaderText="doctor_id" 
                    SortExpression="doctor_id" />
                <asp:BoundField DataField="patient_id" HeaderText="patient_id" 
                    SortExpression="patient_id" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="medicine_name" HeaderText="medicine_name" 
                    SortExpression="medicine_name" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="Sqlpriscription" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Prescription] WHERE (([doctor_id] = @doctor_id) AND ([patient_id] = @patient_id)) ORDER BY [date]">
            <SelectParameters>
                <asp:SessionParameter Name="doctor_id" SessionField="doctor_id" Type="String" />
                <asp:SessionParameter Name="patient_id" SessionField="patient_id" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
