<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Member_Page.aspx.vb" Inherits="Member_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel8" runat="server" Height="525px" 
    Width="1171px" style="margin-right: 0px; margin-left: 70px;">
    <asp:Label ID="Label1" runat="server" Text="Welcome" Font-Bold="True" 
            Font-Size="Larger"></asp:Label>
&nbsp;<asp:Label ID="lblusername" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image4" runat="server" Height="74px" 
        ImageUrl="~/icon/account_and_control.png" Width="77px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="lkprofile" runat="server" 
            PostBackUrl="~/Member Page_detail/view personal_detail.aspx">Profile</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image5" runat="server" Height="74px" 
        ImageUrl="~/icon/symptoms_icon.jpg" Width="77px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="lkinformation" runat="server" 
            PostBackUrl="~/Member Page_detail/Member_of_information.aspx">Information</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="imgshowpriscription" runat="server" Height="74px" 
            ImageUrl="~/icon/prescription_icon.jpg" Width="77px" />
        &nbsp;&nbsp;
        <asp:LinkButton ID="lkshowpriscription" runat="server" 
            PostBackUrl="~/Member Page_detail/Show Priscriptions.aspx">Show Priscription</asp:LinkButton>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image2" runat="server" Height="74px" 
        ImageUrl="~/icon/Doctor Search.jpg" Width="77px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="lkbtndoctor_search" runat="server" 
            PostBackUrl="~/Member Page_detail/Search Doctor.aspx">Search Doctors</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image3" runat="server" Height="74px" 
        ImageUrl="~/icon/Hospital-icon.png" Width="77px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="lksearchhospital" runat="server" 
            PostBackUrl="~/Member Page_detail/Search Hospital.aspx">Search Hospitals</asp:LinkButton>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Imghospital0" runat="server" Height="74px" 
            ImageUrl="~/icon/Email-Inbox-icon.png" Width="77px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lkInbox" runat="server" 
            PostBackUrl="~/Member Page_detail/Patient_Inbox.aspx">Inbox</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Imghospital1" runat="server" Height="74px" 
            ImageUrl="~/icon/Hospital-icon.png" Width="77px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lkFeedback" runat="server" 
            PostBackUrl="~/Member Page_detail/Patient_Feedback.aspx">Feedback</asp:LinkButton>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </asp:Panel>
   </asp:Content>

