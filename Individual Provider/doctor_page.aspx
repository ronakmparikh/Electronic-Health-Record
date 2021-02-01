<%@ Page Language="VB" MasterPageFile="~/Doctor_login_page.master" AutoEventWireup="false" CodeFile="doctor_page.aspx.vb" Inherits="doctor_page" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:Panel ID="Panel_DR_home_page" runat="server" Height="414px" 
        Width="1171px">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
         Text="Welcome"></asp:Label>
&nbsp;
     <asp:Label ID="lblusername" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Imgprofile" runat="server" Height="74px" 
        ImageUrl="~/icon/Doctor_profile.jpg" Width="77px" />
     &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:LinkButton ID="lkprofile" runat="server" 
            PostBackUrl="~/Individual Provider/Doctor_Profile.aspx">Profile</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="imgpriscription" runat="server" Height="74px" 
        ImageUrl="~/icon/prescription_icon.jpg" Width="77px" />
     &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:LinkButton ID="lknpriscription" runat="server" 
            PostBackUrl="~/Individual Provider/Priscription.aspx">Prescription</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Imghospital2" runat="server" Height="74px" 
         ImageUrl="~/icon/Doctor_profile.jpg" Width="77px" />
     &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:LinkButton ID="lkedit_profile" runat="server" 
         PostBackUrl="~/doctor_personal_detail.aspx">Edit Profile</asp:LinkButton>
     <br />
     <br />
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Imgpatient" runat="server" Height="74px" 
        ImageUrl="~/icon/patient.jpg" Width="77px" />
     &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:LinkButton ID="lkbtpatient_search" runat="server" 
         PostBackUrl="~/Individual Provider/Search Patient.aspx">Search Patients</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Imghospital" runat="server" Height="74px" 
        ImageUrl="~/icon/Hospital-icon.png" Width="77px" />
     &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:LinkButton ID="lksearchhospital" runat="server" 
         PostBackUrl="~/Individual Provider/Search Hospital.aspx">Search Hospitals</asp:LinkButton>
     <br />
     <br />
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Imghospital0" runat="server" Height="74px" 
         ImageUrl="~/icon/Email-Inbox-icon.png" Width="77px" />
     &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:LinkButton ID="lkInbox" runat="server" 
         PostBackUrl="~/Individual Provider/Doctor_Inbox.aspx">Inbox</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Imghospital1" runat="server" Height="74px" 
         ImageUrl="~/icon/feedback-icon.png" Width="77px" />
     &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:LinkButton ID="lkFeedback" runat="server" 
         PostBackUrl="~/Individual Provider/Doctor_Feedback.aspx">Feedback</asp:LinkButton>
     <br />
  </asp:Panel>

</asp:Content>

