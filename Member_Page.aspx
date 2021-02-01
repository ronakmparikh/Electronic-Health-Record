<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Member_Page.aspx.vb" Inherits="Member_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel8" runat="server" Height="455px" 
    Width="1171px" style="margin-right: 0px; margin-left: 70px;" 
        BorderStyle="None">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Size="Larger" Text="Welcome"></asp:Label>
        &nbsp;<asp:Label ID="lblusername" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table align="center" class="style2">
            <tr>
                <td class="style4">
                    <asp:Image ID="Image4" runat="server" Height="74px" 
                        ImageUrl="~/icon/account_and_control.png" Width="77px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lkprofile" runat="server" 
                        PostBackUrl="~/Member Page_detail/view personal_detail.aspx">Profile</asp:LinkButton>
                </td>
                <td class="style5">
                    <asp:Image ID="Image5" runat="server" Height="74px" 
                        ImageUrl="~/icon/symptoms_icon.jpg" Width="77px" />
                    &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lkinformation" runat="server" 
                        PostBackUrl="~/Member Page_detail/Member_of_information.aspx">Information</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;</td>
                <td>
                    <asp:Image ID="Imghospital2" runat="server" Height="74px" 
                        ImageUrl="~/icon/account_and_control.png" Width="77px" Visible="False" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lkedit_profile" runat="server" 
                        PostBackUrl="~/doctor_personal_detail.aspx" Visible="False">Edit Profile</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Image ID="Image2" runat="server" Height="74px" 
                        ImageUrl="~/icon/Doctor Search.jpg" Width="77px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lkbtndoctor_search" runat="server" 
                        PostBackUrl="~/Member Page_detail/Search Doctor.aspx">Search Doctors</asp:LinkButton>
                    &nbsp;</td>
                <td class="style5">
                    <asp:Image ID="Image3" runat="server" Height="74px" 
                        ImageUrl="~/icon/Hospital-icon.png" Width="77px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lksearchhospital" runat="server" 
                        PostBackUrl="~/Member Page_detail/Search Hospital.aspx">Search Hospitals</asp:LinkButton>
                </td>
                <td>
                    <asp:Image ID="imgshowpriscription0" runat="server" Height="74px" 
                        ImageUrl="~/icon/prescription_icon.jpg" style="margin-left: 0px" Width="77px" />
                    &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lkshowpriscription0" runat="server" 
                        PostBackUrl="~/Member Page_detail/Show Priscriptions.aspx">Show Priscription</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Image ID="Imghospital0" runat="server" Height="74px" 
                        ImageUrl="~/icon/Email-Inbox-icon.png" Width="77px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lkInbox" runat="server" 
                        PostBackUrl="~/Member Page_detail/Patient_Inbox.aspx">Inbox</asp:LinkButton>
                </td>
                <td class="style5">
                    <asp:Image ID="Imghospital1" runat="server" Height="74px" 
                        ImageUrl="~/icon/feedback-icon.png" Width="77px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lkFeedback" runat="server" 
                        PostBackUrl="~/Member Page_detail/Patient_Feedback.aspx">Feedback</asp:LinkButton>
                </td>
                <td class="style5">
                    <asp:Image ID="Image6" runat="server" Height="74px" 
                        ImageUrl="~/icon/symptoms_icon.jpg" Width="77px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lkinformation0" runat="server" 
                        PostBackUrl="~/Member Page_detail/Show_Information.aspx">Show 
                    Information</asp:LinkButton>
                </td>
            </tr>
        </table>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </asp:Panel>
   </asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style4
    {
        width: 278px;
    }
    .style5
    {
        width: 294px;
    }
</style>
</asp:content>







