<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="Test_report.aspx.vb" Inherits="infrastructure_Test_report" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="451px" 
        Width="956px">
    
    
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
            Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx">&lt;&lt; HOME</asp:LinkButton>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" BackColor="#006600" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="White" Text="TEST FORM"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
            Checked="True" Font-Bold="True" Font-Size="Small" ForeColor="Blue" 
            GroupName="a1" Text="OPD" />
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
            Font-Bold="True" Font-Size="Small" ForeColor="Blue" GroupName="a1" Text="IPD" />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Recipt NO:-"></asp:Label>
        <asp:TextBox ID="txtreciptno" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Date:-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtdate" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Patient_id:-"></asp:Label>
        <asp:DropDownList ID="ddlpatientid" runat="server" DataSourceID="Patient_id" 
            DataTextField="patient_id" DataValueField="patient_id" Height="22px" 
            Width="121px">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Doctor_id:-"></asp:Label>
        <asp:DropDownList ID="ddldoctorid" runat="server" DataSourceID="Doctor_id" 
            DataTextField="doctor_id" DataValueField="doctor_id" Height="22px" 
            Width="121px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Doctor_id" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [doctor_id] FROM [doctor_personal_detail]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Patient_id" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [patient_id] FROM [personal_detail]">
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Test Type:-"></asp:Label>
        <asp:DropDownList ID="ddltest_type" runat="server" AutoPostBack="True" 
            Height="22px" Width="121px">
            <asp:ListItem>Hematology</asp:ListItem>
            <asp:ListItem>Body Fluids</asp:ListItem>
            <asp:ListItem>Biochemistory</asp:ListItem>
            <asp:ListItem>Microbiology</asp:ListItem>
            <asp:ListItem>Urine</asp:ListItem>
            <asp:ListItem>stool</asp:ListItem>
            <asp:ListItem>Serology</asp:ListItem>
            <asp:ListItem>Histopathology</asp:ListItem>
            <asp:ListItem>Cytology</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Special Tests</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="Blue" Text="Test Code:-"></asp:Label>
        <asp:DropDownList ID="ddltestcode" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="code" DataValueField="code" Height="22px" Width="121px">
        </asp:DropDownList>
        &nbsp;
        <asp:DropDownList ID="ddlperticular" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="service" DataValueField="service" 
            Height="22px" Width="121px">
        </asp:DropDownList>
        &nbsp;
        <asp:DropDownList ID="ddlrate" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="rate" DataValueField="rate" 
            Height="22px" Width="121px">
        </asp:DropDownList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [pathology]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#006600" Font-Bold="True" 
            Font-Size="Small" ForeColor="White" Text="Insert" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#006600" Font-Bold="True" 
            Font-Size="Small" ForeColor="White" Text="Update" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#006600" Font-Bold="True" 
            Font-Size="Small" ForeColor="White" Text="Delete" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="#006600" Font-Bold="True" 
            Font-Size="Small" ForeColor="White" Text="Search" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" BackColor="#006600" Font-Bold="True" 
            Font-Size="Small" ForeColor="White" Text="clear" />
        <br />
        <br />
        <br />
            </asp:Panel>
</asp:Content>

