﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Equ_Cha_Biochemistry_Crystal.aspx.vb" Inherits="Equ_Cha_Biochemistry_Crystal" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [equp_chg_biomedical]"></asp:SqlDataSource>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
            AutoDataBind="True" Height="1039px" ReportSourceID="CrystalReportSource1" 
            Width="901px" />
    
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="Equ_chr_Biochemistry.rpt">
            <DataSources>
            <CR:DataSourceRef DataSourceID="SqlDataSource1" TableName="equp_chg_biomedical" /> 
            </DataSources>
            </Report>
        </CR:CrystalReportSource>
    
    </div>
    </form>
</body>
</html>
