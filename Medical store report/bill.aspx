<%@ Page Language="VB" AutoEventWireup="false" CodeFile="bill.aspx.vb" Inherits="bill" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
            AutoDataBind="True" Height="1039px" ReportSourceID="CrystalReportSourcebill" 
            Width="901px" />
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Bill_detail] WHERE ([Bill_no] = @Bill_no)">
            <SelectParameters>
                <asp:SessionParameter Name="Bill_no" SessionField="bill_no" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [dummy_master_table] WHERE ([Bill_no] = @Bill_no)">
             <SelectParameters>
                <asp:SessionParameter Name="Bill_no" SessionField="bill_no" Type="String" />
            </SelectParameters>
            </asp:SqlDataSource>
       
        <br />
       
        <CR:CrystalReportSource ID="CrystalReportSourcebill" runat="server">
            <Report FileName="CrtBill.rpt">
            <DataSources>
            <CR:DataSourceRef DataSourceID ="SqlDataSource1" TableName ="Bill_detail" />
            </DataSources>
            <DataSources >
            <CR:DataSourceRef  DataSourceID ="SqlDataSource2" TableName ="dummy_master_table" />
            </DataSources>
            </Report>
        </CR:CrystalReportSource>
    
        
    
    </div>
    </form>
</body>
</html>
