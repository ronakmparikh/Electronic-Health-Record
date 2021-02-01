<%@ Page Language="VB" MasterPageFile="~/Doctor_login_page.master" AutoEventWireup="false" CodeFile="Doctor_Profile.aspx.vb" Inherits="Individual_Provider_Doctor_Profile" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server">
    </asp:SiteMapPath>
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="1568px" 
        Width="1171px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <center> <asp:Label ID="Label8" runat="server" BackColor="#009900" Font-Overline="False" 
            Font-Size="X-Large" ForeColor="White" Text="Profile"></asp:Label></center>
    <br />
    <br />
    <br />
        <center>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" Height="50px" Width="1000px">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="Full_Name" HeaderText="First Name" 
                    SortExpression="Full_Name Middle_Name" />
                <asp:BoundField DataField="Middle_Name" HeaderText="Middle Name" 
                    SortExpression="Middle_Name" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" 
                    SortExpression="Surname" />
                <asp:BoundField DataField="RHouse_Name_and_Number" 
                    HeaderText="Residence House Name and Number" 
                    SortExpression="RHouse_Name_and_Number" />
                <asp:BoundField DataField="RSociety_or_Complex_Name" 
                    HeaderText="Residence Society or Complex Name" 
                    SortExpression="RSociety_or_Complex_Name" />
                <asp:BoundField DataField="RStreet_Name" HeaderText="Residence Street Name" 
                    SortExpression="RStreet_Name" />
                <asp:BoundField DataField="RArea" HeaderText="Residence  Area" 
                    SortExpression="RArea" />
                <asp:BoundField DataField="RLand_Mark" HeaderText="Residence  Land Mark" 
                    SortExpression="RLand_Mark" />
                <asp:BoundField DataField="RCity" HeaderText="Residence  City" 
                    SortExpression="RCity" />
                <asp:BoundField DataField="RPin_Code" HeaderText="Residence  PinCode" 
                    SortExpression="RPin_Code" />
                <asp:BoundField DataField="RState" HeaderText="Residence  State" 
                    SortExpression="RState" />
                <asp:BoundField DataField="RCountry" HeaderText="Residence Country" 
                    SortExpression="RCountry" />
                <asp:BoundField DataField="CHouse_Name_and_Number" 
                    HeaderText="Clinic House Name and Number" 
                    SortExpression="CHouse_Name_and_Number" />
                <asp:BoundField DataField="CSociety_or_Complex_Name" 
                    HeaderText="Clinic Society or Complex Name" 
                    SortExpression="CSociety_or_Complex_Name" />
                <asp:BoundField DataField="CStreet_Name" HeaderText="Clinic Street Name" 
                    SortExpression="CStreet_Name" />
                <asp:BoundField DataField="CArea" HeaderText="Clinic Area" 
                    SortExpression="CArea" />
                <asp:BoundField DataField="CLand_Mark" HeaderText="CLand Mark" 
                    SortExpression="CLand_Mark" />
                <asp:BoundField DataField="CRCity" HeaderText="Clinic City" 
                    SortExpression="CRCity" />
                <asp:BoundField DataField="CRPin_Code" HeaderText="Clinic Pin Code" 
                    SortExpression="CRPin_Code" />
                <asp:BoundField DataField="CRState" HeaderText="Clinic State" 
                    SortExpression="CRState" />
                <asp:BoundField DataField="CRCountry" HeaderText="Clinic Country" 
                    SortExpression="CRCountry" />
                <asp:BoundField DataField="Home" HeaderText="Home" SortExpression="Home" />
                <asp:BoundField DataField="VCDWork" HeaderText="Work Phone no" 
                    SortExpression="VCDWork" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile no" 
                    SortExpression="Mobile" />
                <asp:BoundField DataField="TollFree" HeaderText="TollFree no" 
                    SortExpression="TollFree" />
                <asp:BoundField DataField="Email_id" HeaderText="Email Id" 
                    SortExpression="Email_id" />
                <asp:BoundField DataField="Web_site" HeaderText="Web site" 
                    SortExpression="Web_site" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
                <asp:BoundField DataField="Specilisation" HeaderText="Specilisation" 
                    SortExpression="Specilisation" />
                <asp:BoundField DataField="Qualification" HeaderText="Qualification" 
                    SortExpression="Qualification" />
                <asp:BoundField DataField="Registering_Authority" 
                    HeaderText="Registering Authority" 
                    SortExpression="Registering_Authority" />
                <asp:BoundField DataField="Registration_Number" 
                    HeaderText="Registration Number" SortExpression="Registration_Number" />
                <asp:BoundField DataField="Date_of_First_Registration" 
                    HeaderText="Date of First Registration" 
                    SortExpression="Date_of_First_Registration" />
                <asp:BoundField DataField="Valid_From" HeaderText="Valid From" 
                    SortExpression="Valid_From" />
                <asp:BoundField DataField="Valid_upto" HeaderText="Valid Upto" 
                    SortExpression="Valid_upto" />
                <asp:BoundField DataField="SESpecialisation" HeaderText="Experiance Specialisation" 
                    SortExpression="SESpecialisation" />
                <asp:BoundField DataField="Field" HeaderText="Field" SortExpression="Field" />
                <asp:BoundField DataField="Experience_in_Year" HeaderText="Experience in Year" 
                    SortExpression="Experience_in_Year" />
                <asp:BoundField DataField="Number_of_Patients" HeaderText="Number of Patients" 
                    SortExpression="Number_of_Patients" />
                <asp:BoundField DataField="Attachment" HeaderText="Attachment" 
                    SortExpression="Attachment" />
                <asp:BoundField DataField="AName" HeaderText="Attachment Name" 
                    SortExpression="AName" />
                <asp:BoundField DataField="ACity" HeaderText="Attachment City" 
                    SortExpression="ACity" />
                <asp:BoundField DataField="Membership" HeaderText="Membership" 
                    SortExpression="Membership" />
                <asp:BoundField DataField="Enrollment_Number" HeaderText="Enrollment Number" 
                    SortExpression="Enrollment_Number" />
                <asp:BoundField DataField="MValid_from" HeaderText="MValid from" 
                    SortExpression="MValid_from" />
                <asp:BoundField DataField="MValid_upto" HeaderText="MValid upto" 
                    SortExpression="MValid_upto" />
                <asp:BoundField DataField="Notable_Acheivements" 
                    HeaderText="Notable Acheivements" SortExpression="Notable_Acheivements" />
                <asp:BoundField DataField="NAArea" HeaderText="Notable Area" 
                    SortExpression="NAArea" />
                <asp:BoundField DataField="Details" HeaderText="Details" 
                    SortExpression="Details" />
                <asp:BoundField DataField="CMENumber_of_Patients" 
                    HeaderText="CMENumber of Patients" 
                    SortExpression="CMENumber_of_Patients" />
            </Fields>
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [doctor_personal_detail] WHERE ([doctor_id] = @doctor_id)">
            <SelectParameters>
                <asp:SessionParameter Name="doctor_id" SessionField="provide_indi_user_id" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </center>
        </asp:Panel> 
</asp:Content>

