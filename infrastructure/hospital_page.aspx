<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="hospital_page.aspx.vb" Inherits="infrastructure_hospital_page" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="414px" 
        Width="1171px">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
         Text="Welcome"></asp:Label>
&nbsp;
     <asp:Label ID="lblusername" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Imghospital" runat="server" Height="74px" 
         ImageUrl="~/icon/Hospital-icon.png" Width="77px" />
     <asp:LinkButton ID="lksearchhospital" runat="server" 
         PostBackUrl="~/Link Page/Hospital_profile.aspx">View Profile</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
     <asp:Image ID="Imghospital2" runat="server" Height="74px" 
         ImageUrl="~/icon/Hospital-icon.png" Width="77px" />
     <asp:LinkButton ID="lkedit_profile" runat="server" 
         PostBackUrl="~/Link Page/edit_profile.aspx">Edit Profile</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Imghospital3" runat="server" Height="74px" 
         ImageUrl="~/icon/Hospital-icon.png" Width="77px" />
     <asp:LinkButton ID="lkFeedback0" runat="server" 
         PostBackUrl="~/Link Page/Link Page.aspx">Information</asp:LinkButton>
     <br />
     <br />
     <br />
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Imgpatient" runat="server" Height="74px" 
        ImageUrl="~/icon/patient.jpg" Width="77px" />
     &nbsp;<asp:LinkButton ID="lkbtpatient_search" runat="server" 
         PostBackUrl="~/Individual Provider/Search Patient.aspx">Search Patients</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image 
         ID="Imgprofile" runat="server" Height="74px" 
         ImageUrl="~/icon/Doctor_profile.jpg" Width="77px" />
     <asp:LinkButton ID="lkprofile" runat="server" 
         PostBackUrl="~/Member Page_detail/view personal_detail.aspx">Search Doctor</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Imgpatient0" runat="server" Height="74px" 
            ImageUrl="~/icon/patient.jpg" Width="77px" />
        &nbsp;<asp:LinkButton ID="lkbtpatient_search0" runat="server" 
            PostBackUrl="~/infrastructure/Patient admit card.aspx">Admit Patient</asp:LinkButton>
     <br />
     <br />
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Imghospital0" runat="server" Height="74px" 
         ImageUrl="~/icon/Email-Inbox-icon.png" Width="77px" />
     &nbsp;<asp:LinkButton ID="lkInbox" runat="server" 
         PostBackUrl="~/Link Page/Hospital_inbox.aspx">Inbox</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Imghospital1" runat="server" Height="74px" 
         ImageUrl="~/icon/Hospital-icon.png" Width="77px" />
     <asp:LinkButton ID="lkFeedback" runat="server">Feedback</asp:LinkButton>
     <br />
  </asp:Panel>
</asp:Content>

