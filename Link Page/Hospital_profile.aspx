<%@ Page Language="VB" MasterPageFile="~/login_hospital.master" AutoEventWireup="false" CodeFile="Hospital_profile.aspx.vb" Inherits="Link_Page_Hospital_profile" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
&nbsp;<asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
        Font-Size="Small" PostBackUrl="~/infrastructure/hospital_page.aspx">&lt;&lt; HOME</asp:LinkButton>
    <br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Panel ID="Panel1" runat="server" Height="451px" Width="956px">
        <asp:FormView ID="FormView1" runat="server" BackColor="#009933" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Both" Width="449px">
            <FooterStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
            <EditItemTemplate>
                Hospital_id:
                <asp:TextBox ID="Hospital_idTextBox" runat="server" 
                Text='<%# Bind("Hospital_id") %>' />
                <br />
                Rname:
                <asp:TextBox ID="RnameTextBox" runat="server" Text='<%# Bind("Rname") %>' />
                <br />
                Pin_code:
                <asp:TextBox ID="Pin_codeTextBox" runat="server" 
                Text='<%# Bind("Pin_code") %>' />
                <br />
                Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                state:
                <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                street:
                <asp:TextBox ID="streetTextBox" runat="server" Text='<%# Bind("street") %>' />
                <br />
                Area:
                <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
                <br />
                Land_mark:
                <asp:TextBox ID="Land_markTextBox" runat="server" 
                Text='<%# Bind("Land_mark") %>' />
                <br />
                Country_code:
                <asp:TextBox ID="Country_codeTextBox" runat="server" 
                Text='<%# Bind("Country_code") %>' />
                <br />
                Std_code:
                <asp:TextBox ID="Std_codeTextBox" runat="server" 
                Text='<%# Bind("Std_code") %>' />
                <br />
                Land_line:
                <asp:TextBox ID="Land_lineTextBox" runat="server" 
                Text='<%# Bind("Land_line") %>' />
                <br />
                Facimile:
                <asp:TextBox ID="FacimileTextBox" runat="server" 
                Text='<%# Bind("Facimile") %>' />
                <br />
                Mobile_number:
                <asp:TextBox ID="Mobile_numberTextBox" runat="server" 
                Text='<%# Bind("Mobile_number") %>' />
                <br />
                Toll_free_number:
                <asp:TextBox ID="Toll_free_numberTextBox" runat="server" 
                Text='<%# Bind("Toll_free_number") %>' />
                <br />
                E_mail:
                <asp:TextBox ID="E_mailTextBox" runat="server" Text='<%# Bind("E_mail") %>' />
                <br />
                Web_url:
                <asp:TextBox ID="Web_urlTextBox" runat="server" Text='<%# Bind("Web_url") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Hospital_id:
                <asp:TextBox ID="Hospital_idTextBox0" runat="server" 
                Text='<%# Bind("Hospital_id") %>' />
                <br />
                Rname:
                <asp:TextBox ID="RnameTextBox0" runat="server" Text='<%# Bind("Rname") %>' />
                <br />
                Pin_code:
                <asp:TextBox ID="Pin_codeTextBox0" runat="server" 
                Text='<%# Bind("Pin_code") %>' />
                <br />
                Country:
                <asp:TextBox ID="CountryTextBox0" runat="server" 
                    Text='<%# Bind("Country") %>' />
                <br />
                state:
                <asp:TextBox ID="stateTextBox0" runat="server" Text='<%# Bind("state") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox0" runat="server" Text='<%# Bind("City") %>' />
                <br />
                street:
                <asp:TextBox ID="streetTextBox0" runat="server" Text='<%# Bind("street") %>' />
                <br />
                Area:
                <asp:TextBox ID="AreaTextBox0" runat="server" Text='<%# Bind("Area") %>' />
                <br />
                Land_mark:
                <asp:TextBox ID="Land_markTextBox0" runat="server" 
                Text='<%# Bind("Land_mark") %>' />
                <br />
                Country_code:
                <asp:TextBox ID="Country_codeTextBox0" runat="server" 
                Text='<%# Bind("Country_code") %>' />
                <br />
                Std_code:
                <asp:TextBox ID="Std_codeTextBox0" runat="server" 
                Text='<%# Bind("Std_code") %>' />
                <br />
                Land_line:
                <asp:TextBox ID="Land_lineTextBox0" runat="server" 
                Text='<%# Bind("Land_line") %>' />
                <br />
                Facimile:
                <asp:TextBox ID="FacimileTextBox0" runat="server" 
                Text='<%# Bind("Facimile") %>' />
                <br />
                Mobile_number:
                <asp:TextBox ID="Mobile_numberTextBox0" runat="server" 
                Text='<%# Bind("Mobile_number") %>' />
                <br />
                Toll_free_number:
                <asp:TextBox ID="Toll_free_numberTextBox0" runat="server" 
                Text='<%# Bind("Toll_free_number") %>' />
                <br />
                E_mail:
                <asp:TextBox ID="E_mailTextBox0" runat="server" Text='<%# Bind("E_mail") %>' />
                <br />
                Web_url:
                <asp:TextBox ID="Web_urlTextBox0" runat="server" 
                    Text='<%# Bind("Web_url") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Hospital User Id:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Hospital_idLabel" runat="server" 
                Text='<%# Bind("Hospital_id") %>' />
                <br />
                <br />
                Hospital Name:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                ID="RnameLabel" runat="server" 
                Text='<%# Bind("Rname") %>' />
                <br />
                <br />
                Address:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="streetLabel" runat="server" Text='<%# Bind("street") %>' />
                &nbsp;<asp:Label ID="Land_markLabel" runat="server" 
                    Text='<%# Bind("Land_mark") %>' />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="AreaLabel" runat="server" Text='<%# Bind("Area") %>' />
                &nbsp;<asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' />
                &nbsp;<asp:Label ID="Pin_codeLabel" runat="server" 
                    Text='<%# Bind("Pin_code") %>' />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                Country_code:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Country_codeLabel" runat="server" 
                Text='<%# Bind("Country_code") %>' />
                <br />
                Std_code:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Std_codeLabel" runat="server" 
                Text='<%# Bind("Std_code") %>' />
                <br />
                Land line Number:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                ID="Std_codeLabel0" runat="server" 
                Text='<%# Bind("Std_code") %>' />
                -<asp:Label ID="Land_lineLabel" runat="server" 
                Text='<%# Bind("Land_line") %>' />
                <br />
                Facimile Number:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Std_codeLabel1" runat="server" Text='<%# Bind("Std_code") %>' />
                -<asp:Label ID="FacimileLabel" runat="server" 
                Text='<%# Bind("Facimile") %>' />
                <br />
                Mobile Number:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +<asp:Label 
                ID="Country_codeLabel0" runat="server" 
                Text='<%# Bind("Country_code") %>' />
                -<asp:Label ID="Mobile_numberLabel" runat="server" 
                Text='<%# Bind("Mobile_number") %>' />
                <br />
                Toll free number:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Toll_free_numberLabel" runat="server" 
                Text='<%# Bind("Toll_free_number") %>' />
                <br />
                E_mail:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="E_mailLabel" runat="server" 
                Text='<%# Bind("E_mail") %>' />
                <br />
                Web_<a href="url:-">url:-</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Web_urlLabel" runat="server" 
                Text='<%# Bind("Web_url") %>' />
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="Blue" Text="HOSPITAL DETAIL"></asp:Label>
            </HeaderTemplate>
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Registration] WHERE ([Hospital_id] = @Hospital_id)">
            <SelectParameters>
                <asp:SessionParameter Name="Hospital_id" SessionField="provide_org_user_id" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    
    </asp:Panel>

</asp:Content>

