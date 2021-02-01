<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="view personal_detail.aspx.vb" Inherits="Member_Page_detail_view_personal_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel8" runat="server" Height="648px" 
    Width="1171px" BorderStyle="None">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Member_Page.aspx">Home</asp:LinkButton>
&nbsp;&gt; Profile<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <center>   <asp:Label ID="Label8" runat="server" BackColor="#009900" Font-Overline="False" 
            Font-Size="X-Large" ForeColor="White" Text="Profile"></asp:Label></center>
        <br />
        <br />
        <br />
    <center style="height: 140px">   <asp:Image ID="Image3" runat="server" Width="100px" />
        <br />
        <asp:Button ID="photo_download" runat="server" BackColor="#009900" 
            ForeColor="White" Text="Download" />
        </center> 
    <br /><center>
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="patient_id" 
            DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" 
                Width="400px">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <EditItemTemplate>
                patient_id:
                <asp:Label ID="patient_idLabel1" runat="server" 
                    Text='<%# Eval("patient_id") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                middle_name:
                <asp:TextBox ID="middle_nameTextBox" runat="server" 
                    Text='<%# Bind("middle_name") %>' />
                <br />
                sur_name:
                <asp:TextBox ID="sur_nameTextBox" runat="server" 
                    Text='<%# Bind("sur_name") %>' />
                <br />
                father_first_name:
                <asp:TextBox ID="father_first_nameTextBox" runat="server" 
                    Text='<%# Bind("father_first_name") %>' />
                <br />
                father_middle_name:
                <asp:TextBox ID="father_middle_nameTextBox" runat="server" 
                    Text='<%# Bind("father_middle_name") %>' />
                <br />
                father_sur_name:
                <asp:TextBox ID="father_sur_nameTextBox" runat="server" 
                    Text='<%# Bind("father_sur_name") %>' />
                <br />
                mother_first_name:
                <asp:TextBox ID="mother_first_nameTextBox" runat="server" 
                    Text='<%# Bind("mother_first_name") %>' />
                <br />
                mother_middle_name:
                <asp:TextBox ID="mother_middle_nameTextBox" runat="server" 
                    Text='<%# Bind("mother_middle_name") %>' />
                <br />
                mother_sur_name:
                <asp:TextBox ID="mother_sur_nameTextBox" runat="server" 
                    Text='<%# Bind("mother_sur_name") %>' />
                <br />
                husband_first_name:
                <asp:TextBox ID="husband_first_nameTextBox" runat="server" 
                    Text='<%# Bind("husband_first_name") %>' />
                <br />
                husband_middle_name:
                <asp:TextBox ID="husband_middle_nameTextBox" runat="server" 
                    Text='<%# Bind("husband_middle_name") %>' />
                <br />
                husband_sur_name:
                <asp:TextBox ID="husband_sur_nameTextBox" runat="server" 
                    Text='<%# Bind("husband_sur_name") %>' />
                <br />
                date:
                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                <br />
                month:
                <asp:TextBox ID="monthTextBox" runat="server" Text='<%# Bind("month") %>' />
                <br />
                year:
                <asp:TextBox ID="yearTextBox" runat="server" Text='<%# Bind("year") %>' />
                <br />
                age:
                <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                <br />
                gender:
                <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                <br />
                marital_status:
                <asp:TextBox ID="marital_statusTextBox" runat="server" 
                    Text='<%# Bind("marital_status") %>' />
                <br />
                identification_mark:
                <asp:TextBox ID="identification_markTextBox" runat="server" 
                    Text='<%# Bind("identification_mark") %>' />
                <br />
                mobile_number:
                <asp:TextBox ID="mobile_numberTextBox" runat="server" 
                    Text='<%# Bind("mobile_number") %>' />
                <br />
                std_code:
                <asp:TextBox ID="std_codeTextBox" runat="server" 
                    Text='<%# Bind("std_code") %>' />
                <br />
                telephone_number:
                <asp:TextBox ID="telephone_numberTextBox" runat="server" 
                    Text='<%# Bind("telephone_number") %>' />
                <br />
                email_id:
                <asp:TextBox ID="email_idTextBox" runat="server" 
                    Text='<%# Bind("email_id") %>' />
                <br />
                identification_type:
                <asp:TextBox ID="identification_typeTextBox" runat="server" 
                    Text='<%# Bind("identification_type") %>' />
                <br />
                identification_number:
                <asp:TextBox ID="identification_numberTextBox" runat="server" 
                    Text='<%# Bind("identification_number") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                patient_id:
                <asp:TextBox ID="patient_idTextBox" runat="server" 
                    Text='<%# Bind("patient_id") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                middle_name:
                <asp:TextBox ID="middle_nameTextBox" runat="server" 
                    Text='<%# Bind("middle_name") %>' />
                <br />
                sur_name:
                <asp:TextBox ID="sur_nameTextBox" runat="server" 
                    Text='<%# Bind("sur_name") %>' />
                <br />
                father_first_name:
                <asp:TextBox ID="father_first_nameTextBox" runat="server" 
                    Text='<%# Bind("father_first_name") %>' />
                <br />
                father_middle_name:
                <asp:TextBox ID="father_middle_nameTextBox" runat="server" 
                    Text='<%# Bind("father_middle_name") %>' />
                <br />
                father_sur_name:
                <asp:TextBox ID="father_sur_nameTextBox" runat="server" 
                    Text='<%# Bind("father_sur_name") %>' />
                <br />
                mother_first_name:
                <asp:TextBox ID="mother_first_nameTextBox" runat="server" 
                    Text='<%# Bind("mother_first_name") %>' />
                <br />
                mother_middle_name:
                <asp:TextBox ID="mother_middle_nameTextBox" runat="server" 
                    Text='<%# Bind("mother_middle_name") %>' />
                <br />
                mother_sur_name:
                <asp:TextBox ID="mother_sur_nameTextBox" runat="server" 
                    Text='<%# Bind("mother_sur_name") %>' />
                <br />
                husband_first_name:
                <asp:TextBox ID="husband_first_nameTextBox" runat="server" 
                    Text='<%# Bind("husband_first_name") %>' />
                <br />
                husband_middle_name:
                <asp:TextBox ID="husband_middle_nameTextBox" runat="server" 
                    Text='<%# Bind("husband_middle_name") %>' />
                <br />
                husband_sur_name:
                <asp:TextBox ID="husband_sur_nameTextBox" runat="server" 
                    Text='<%# Bind("husband_sur_name") %>' />
                <br />
                date:
                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                <br />
                month:
                <asp:TextBox ID="monthTextBox" runat="server" Text='<%# Bind("month") %>' />
                <br />
                year:
                <asp:TextBox ID="yearTextBox" runat="server" Text='<%# Bind("year") %>' />
                <br />
                age:
                <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                <br />
                gender:
                <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                <br />
                marital_status:
                <asp:TextBox ID="marital_statusTextBox" runat="server" 
                    Text='<%# Bind("marital_status") %>' />
                <br />
                identification_mark:
                <asp:TextBox ID="identification_markTextBox" runat="server" 
                    Text='<%# Bind("identification_mark") %>' />
                <br />
                mobile_number:
                <asp:TextBox ID="mobile_numberTextBox" runat="server" 
                    Text='<%# Bind("mobile_number") %>' />
                <br />
                std_code:
                <asp:TextBox ID="std_codeTextBox" runat="server" 
                    Text='<%# Bind("std_code") %>' />
                <br />
                telephone_number:
                <asp:TextBox ID="telephone_numberTextBox" runat="server" 
                    Text='<%# Bind("telephone_number") %>' />
                <br />
                email_id:
                <asp:TextBox ID="email_idTextBox" runat="server" 
                    Text='<%# Bind("email_id") %>' />
                <br />
                identification_type:
                <asp:TextBox ID="identification_typeTextBox" runat="server" 
                    Text='<%# Bind("identification_type") %>' />
                <br />
                identification_number:
                <asp:TextBox ID="identification_numberTextBox" runat="server" 
                    Text='<%# Bind("identification_number") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="nameLabel" runat="server" 
                    Text='<%# Bind("name") %>' />
                &nbsp;<asp:Label ID="middle_nameLabel" runat="server" 
                    Text='<%# Bind("middle_name") %>' />
                &nbsp;<asp:Label ID="sur_nameLabel" runat="server" 
                    Text='<%# Bind("sur_name") %>' />
                <br />
                Father Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="father_first_nameLabel" runat="server" 
                    Text='<%# Bind("father_first_name") %>' />
                &nbsp;<asp:Label ID="father_middle_nameLabel" runat="server" 
                    Text='<%# Bind("father_middle_name") %>' />
                &nbsp;<asp:Label ID="father_sur_nameLabel" runat="server" 
                    Text='<%# Bind("father_sur_name") %>' />
                <br />
                Mother Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="mother_first_nameLabel" runat="server" 
                    Text='<%# Bind("mother_first_name") %>' />
                &nbsp;
                <asp:Label ID="mother_middle_nameLabel" runat="server" 
                    Text='<%# Bind("mother_middle_name") %>' />
                &nbsp;<asp:Label ID="mother_sur_nameLabel" runat="server" 
                    Text='<%# Bind("mother_sur_name") %>' />
                <br />
                Husband Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Label ID="husband_first_nameLabel" runat="server" 
                    Text='<%# Bind("husband_first_name") %>' />
                &nbsp;
                <asp:Label ID="husband_middle_nameLabel" runat="server" 
                    Text='<%# Bind("husband_middle_name") %>' />
                &nbsp;<asp:Label ID="husband_sur_nameLabel" runat="server" 
                    Text='<%# Bind("husband_sur_name") %>' />
                <br />
                Date Of Birth :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="dateLabel" runat="server" 
                    Text='<%# Bind("date") %>' />
                <br />
                Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="ageLabel" runat="server" Text='<%# Bind("age") %>' />
                <br />
                Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>' />
                <br />
                Marital_Status:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="marital_statusLabel" runat="server" 
                    Text='<%# Bind("marital_status") %>' />
                <br />
                Identification_Mark :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="identification_markLabel" runat="server" 
                    Text='<%# Bind("identification_mark") %>' />
                <br />
                Mobile_Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="mobile_numberLabel" runat="server" 
                    Text='<%# Bind("mobile_number") %>' />
                <br />
                Telephone Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="std_codeLabel" runat="server" 
                    Text='<%# Bind("std_code") %>' />
                &nbsp;<asp:Label ID="telephone_numberLabel" runat="server" 
                    Text='<%# Bind("telephone_number") %>' />
                <br />
                Email_id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="email_idLabel" runat="server" 
                    Text='<%# Bind("email_id") %>' />
                <br />
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        </asp:FormView>
            <asp:Button ID="btn_download_identification" runat="server" BackColor="#009900" 
                ForeColor="White" Text="Download Identification" />
            <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [personal_detail] WHERE ([patient_id] = @patient_id)">
            <SelectParameters>
                <asp:SessionParameter Name="patient_id" SessionField="Member_user_id" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </center>
        <br />
        <br />
    
   </asp:Panel>
   </asp:Content>
