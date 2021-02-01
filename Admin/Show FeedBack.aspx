<%@ Page Language="VB" MasterPageFile="~/Admine.master" AutoEventWireup="false" CodeFile="Show FeedBack.aspx.vb" Inherits="Admin_Show_FeedBack" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:Panel ID="Panel6" runat="server" Height="289px" Width="1177px">
      <asp:LinkButton ID="LinkButton1" runat="server" 
          PostBackUrl="~/Admin/admin Home page.aspx">Home</asp:LinkButton>
  <br />
  <br />
  <center>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
          BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
          CellPadding="4" DataSourceID="SqlDataSource1" AllowPaging="True" 
          PageSize="5">
          <RowStyle BackColor="White" ForeColor="#330099" />
          <Columns>
              <asp:BoundField DataField="User_id" HeaderText="User_id" 
                  SortExpression="User_id" />
              <asp:BoundField DataField="Subject" HeaderText="Subject" 
                  SortExpression="Subject" />
              <asp:BoundField DataField="Message" HeaderText="Message" 
                  SortExpression="Message" />
          </Columns>
          <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
          <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
          <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
          <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
          SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
  </center>
  
</asp:Panel>
</asp:Content>

