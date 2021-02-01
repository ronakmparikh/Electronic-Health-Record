<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="Pathology.aspx.vb" Inherits="Link_Page_Pathology" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 54%;
            margin-left: 219px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="451px" Width="956px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;<asp:LinkButton ID="LinkButton19" runat="server" Font-Bold="True" 
                Font-Size="Small" PostBackUrl="~/Link Page/Link Page.aspx" >HOSPITAL INFRASTRUCTURE </asp:LinkButton>
            &nbsp;&gt;&gt; PATHOLOGY<br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" BackColor="Green" Font-Bold="True" 
                Font-Size="X-Large" ForeColor="White" Text="PATHOLOGY"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        <br />
            <table class="style1">
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton10" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/Pathology.aspx">Hematology</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton11" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/Body Fluids.aspx">Body Fluids</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton12" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/Biochemistry.aspx">Biochemistry</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton13" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/Microbiology.aspx">Microdiology</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton14" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/stool.aspx">Stool</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton15" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/Serology.aspx">Serology</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton16" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/Histopathology.aspx">Histopathology</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton17" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/CYTOLOGY.aspx">Cytology</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton18" runat="server" 
                            PostBackUrl="~/Hospital wish profile managment/SPECIAL TESTS.aspx">Special 
                        Test</asp:LinkButton>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Hospital wish profile managment/Pathology.aspx">Hematology</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                ID="LinkButton2" runat="server" 
            PostBackUrl="~/Hospital wish profile managment/Body Fluids.aspx">Body Fluids</asp:LinkButton>
        <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" 
                PostBackUrl="~/Hospital wish profile managment/Biochemistry.aspx">Biochemistry</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                ID="LinkButton4" runat="server" 
                PostBackUrl="~/Hospital wish profile managment/Microbiology.aspx">Microdiology</asp:LinkButton>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton5" runat="server" 
                PostBackUrl="~/Hospital wish profile managment/stool.aspx">Stool</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton6" 
                runat="server" 
                PostBackUrl="~/Hospital wish profile managment/Serology.aspx">Serology</asp:LinkButton>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton7" runat="server" 
                PostBackUrl="~/Hospital wish profile managment/Histopathology.aspx">Histopathology</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                ID="LinkButton8" runat="server" 
                PostBackUrl="~/Hospital wish profile managment/CYTOLOGY.aspx">Cytology</asp:LinkButton>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton9" runat="server" 
                PostBackUrl="~/Hospital wish profile managment/SPECIAL TESTS.aspx">Special 
            Test</asp:LinkButton>
            <br />
            <br />
    </asp:Panel>
</asp:Content>

