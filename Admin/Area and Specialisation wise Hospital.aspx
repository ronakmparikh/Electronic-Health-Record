<%@ Page Language="VB" MasterPageFile="~/Admine.master" AutoEventWireup="false" CodeFile="Area and Specialisation wise Hospital.aspx.vb" Inherits="Admin_Area_and_Specialisation_wise_Hospital" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <asp:Panel ID="Panel6" runat="server" Height="186px" Width="1177px">
       <asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate >
      
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="Area"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Specilisation"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlarea" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" DataSourceID="Sqlarea" DataTextField="Area" 
            DataValueField="Area" style="height: 22px">
            <asp:ListItem>Select Area
            </asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="Sqlarea" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Area_Master]"></asp:SqlDataSource>
        <asp:DropDownList ID="ddlspesalist" runat="server" AutoPostBack="True">
            <asp:ListItem Selected="True">Select Specilisation</asp:ListItem>
            <asp:ListItem>Heart</asp:ListItem>
            <asp:ListItem>Cardiologist</asp:ListItem>
            <asp:ListItem>Dermatologist</asp:ListItem>
            <asp:ListItem>Gastroenterologist
            </asp:ListItem>
            <asp:ListItem>Hematologist/Oncologist</asp:ListItem>
            <asp:ListItem>Internal Medicine Physician</asp:ListItem>
            <asp:ListItem>Nephrologist</asp:ListItem>
            <asp:ListItem>Neurologist</asp:ListItem>
            <asp:ListItem>Neurosurgeon</asp:ListItem>
            <asp:ListItem>Obstetrician</asp:ListItem>
            <asp:ListItem>Gynecologist</asp:ListItem>
            <asp:ListItem>Nurse-Midwifery</asp:ListItem>
            <asp:ListItem>Ophthalmologist</asp:ListItem>
            <asp:ListItem>Orthopaedic Surgeon</asp:ListItem>
            <asp:ListItem>Otolaryngologist
            </asp:ListItem>
            <asp:ListItem>Pathologist</asp:ListItem>
            <asp:ListItem>Pediatrician</asp:ListItem>
            <asp:ListItem>Plastic Surgeon</asp:ListItem>
            <asp:ListItem>Podiatrist</asp:ListItem>
            <asp:ListItem>Psychiatrist
            </asp:ListItem>
            <asp:ListItem>Pulmonary Medicine Physician</asp:ListItem>
            <asp:ListItem>Radiation Onconlogist
            </asp:ListItem>
            <asp:ListItem>Diagnostic Radiologist</asp:ListItem>
            <asp:ListItem>Rheumatologist</asp:ListItem>
            <asp:ListItem>Urologist
            </asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;
        </ContentTemplate>
         </asp:UpdatePanel>
        <asp:Button 
            ID="btnviewreport" runat="server" BackColor="#009900" 
            ForeColor="White" PostBackUrl="~/Admin Report/city and specialization wise hospital.aspx" 
            Text="View Report" />
        &nbsp;
    

   
    </asp:Panel>

</asp:Content>

