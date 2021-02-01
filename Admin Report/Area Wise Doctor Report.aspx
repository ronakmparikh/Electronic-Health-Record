﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Area Wise Doctor Report.aspx.vb" Inherits="Area_Wise_Doctor_Report" %>

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
            SelectCommand="SELECT * FROM [doctor_personal_detail] WHERE (([CArea] = @CArea) AND ([Specilisation] = @Specilisation))">
            <SelectParameters>
                <asp:SessionParameter Name="CArea" SessionField="area" Type="String" />
                <asp:SessionParameter Name="Specilisation" SessionField="specilisation" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="area wise doctor.rpt">
            <DataSources>
            <CR:DataSourceRef DataSourceID="SqlDataSource1" TableName="doctor_personal_detail" />
            
            </DataSources>
            </Report>
        </CR:CrystalReportSource>
    
    </div>
    </form>
</body>
</html>
