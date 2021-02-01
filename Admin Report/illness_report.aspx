﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="illness_report.aspx.vb" Inherits="illness_report" %>

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
            AutoDataBind="True" Height="1039px" ReportSourceID="CrystalReportSource1" 
            Width="901px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [past_history] WHERE ([history] = @history)">
            <SelectParameters>
                <asp:SessionParameter Name="history" SessionField="illness" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="illness_report.rpt">
            <DataSources>
            <CR:DataSourceRef DataSourceID="SqlDataSource1" TableName ="past_history" />
            
            </DataSources>
            </Report>
        </CR:CrystalReportSource>
    
    </div>
    </form>
</body>
</html>