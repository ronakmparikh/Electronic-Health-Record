<%@ Page Language="VB" MasterPageFile="~/Admine.master" AutoEventWireup="false" CodeFile="Show Priscription.aspx.vb" Inherits="Admin_Show_Priscription" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="Panel6" runat="server" Height="263px" Width="1177px">
  <center>  
      <br />
      <br />
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
          AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
          BorderStyle="None" BorderWidth="1px" CellPadding="4" 
          DataSourceID="SqlDataSource1" PageSize="5">
          <RowStyle BackColor="White" ForeColor="#330099" />
          <Columns>
              <asp:BoundField DataField="doctor_id" HeaderText="doctor_id" 
                  SortExpression="doctor_id" />
              <asp:BoundField DataField="patient_id" HeaderText="patient_id" 
                  SortExpression="patient_id" />
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
          SelectCommand="SELECT * FROM [Prescription]"></asp:SqlDataSource>
    </center>
</asp:Panel> 
</asp:Content>

