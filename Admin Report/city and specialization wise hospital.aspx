<%@ Page Language="VB" AutoEventWireup="false" CodeFile="city and specialization wise hospital.aspx.vb" Inherits="city_and_specialization_wise_hospital" %>

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
            
            SelectCommand="SELECT * FROM [Registration] WHERE (([City] = @City) AND ([speciality1] = @speciality1))">
            <SelectParameters>
                <asp:SessionParameter Name="City" SessionField="city" Type="String" />
                <asp:SessionParameter Name="speciality1" SessionField="specialization" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="city and specialization wise hospital.rpt">
            <DataSources >
            <CR:DataSourceRef DataSourceID ="SqlDataSource1" TableName ="Registration" />
            </DataSources>
            </Report>
        </CR:CrystalReportSource>
    
    </div>
    </form>
</body>
</html>
