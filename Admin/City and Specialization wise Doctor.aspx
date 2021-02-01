<%@ Page Language="VB" MasterPageFile="~/Admine.master" AutoEventWireup="false" CodeFile="City and Specialization wise Doctor.aspx.vb" Inherits="Admin_City_and_Specialization_wise_Doctor" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:Panel ID="Panel6" runat="server" Height="186px" Width="1177px">
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="City"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Specilisation"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
      
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
        <asp:DropDownList ID="ddlcity" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" DataTextField="Area" DataValueField="Area">
            <asp:ListItem>Select City
            </asp:ListItem>
            <asp:ListItem>Vadodara</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;<asp:DropDownList ID="ddlspesalisation" runat="server" AutoPostBack="True">
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
         </ContentTemplate>
           <Triggers>
               <asp:AsyncPostBackTrigger ControlID="ddlcity" />
           </Triggers>
       </asp:UpdatePanel>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnviewreport" runat="server" 
            BackColor="#009900" ForeColor="White" 
            PostBackUrl="~/Admin Report/City and Specilisation Doctor.aspx" 
            Text="View Report" />
        &nbsp;
    </asp:Panel>
</asp:Content>

