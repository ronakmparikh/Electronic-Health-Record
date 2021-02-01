<%@ Page Language="VB" MasterPageFile="~/Doctor_login_page.master" AutoEventWireup="false" CodeFile="Search Patient.aspx.vb" Inherits="Individual_Provider_Search_Patient" title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_of_doctor_home_page" runat="server" Height="1908px" 
        Width="1171px" ScrollBars="Auto">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SiteMapPath ID="SiteMapPath1" runat="server">
    </asp:SiteMapPath>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <center>  <asp:Label ID="Label8" runat="server" BackColor="#009900" Font-Overline="False" 
        Font-Size="X-Large" ForeColor="White" Text="Search Patient"></asp:Label></center>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Text="Search Patient"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlsearchpatient" runat="server" AutoPostBack="True" 
        DataSourceID="Sqlsearch_patient" DataTextField="patient_id" 
        DataValueField="patient_id" AppendDataBoundItems="True">
        <asp:ListItem>Select Member</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="Sqlsearch_patient" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [personal_detail]"></asp:SqlDataSource>
    <br />
    <br /><center>
    <asp:FormView ID="FormView1" runat="server" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="patient_id" DataSourceID="Sqlshowdata" GridLines="Both" 
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
            iden_image:
            <asp:TextBox ID="iden_imageTextBox" runat="server" 
                Text='<%# Bind("iden_image") %>' />
            <br />
            photo:
            <asp:TextBox ID="photoTextBox" runat="server" Text='<%# Bind("photo") %>' />
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
            iden_image:
            <asp:TextBox ID="iden_imageTextBox" runat="server" 
                Text='<%# Bind("iden_image") %>' />
            <br />
            photo:
            <asp:TextBox ID="photoTextBox" runat="server" Text='<%# Bind("photo") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            Full Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            &nbsp;<asp:Label ID="middle_nameLabel" runat="server" 
                Text='<%# Bind("middle_name") %>' />
            &nbsp;<asp:Label ID="sur_nameLabel" runat="server" Text='<%# Bind("sur_name") %>' />
            <br />
            <br />
            Date Of Birth:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="dateLabel" runat="server" Text='<%# Bind("date") %>' />
            <br />
            <br />
            Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="ageLabel" runat="server" Text='<%# Bind("age") %>' />
            <br />
            <br />
            Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>' />
            <br />
            <br />
            Marital Status:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="marital_statusLabel" runat="server" 
                Text='<%# Bind("marital_status") %>' />
            <br />
            <br />
            Identification Mark:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="identification_markLabel" runat="server" 
                Text='<%# Bind("identification_mark") %>' />
            <br />
            <br />
            Mobile_Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="mobile_numberLabel" runat="server" 
                Text='<%# Bind("mobile_number") %>' />
            <br />
            <br />
            Telephone Number:&nbsp;&nbsp;&nbsp;
            <asp:Label ID="std_codeLabel" runat="server" Text='<%# Bind("std_code") %>' />
            &nbsp;<asp:Label ID="telephone_numberLabel" runat="server" 
                Text='<%# Bind("telephone_number") %>' />
            <br />
            <br />
            Email id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="email_idLabel" runat="server" Text='<%# Bind("email_id") %>' />
            <br />
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:FormView>
    <asp:SqlDataSource ID="Sqlshowdata" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [personal_detail] WHERE ([patient_id] = @patient_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlsearchpatient" Name="patient_id" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </center>
    <br />
    
&nbsp;
<br/>
        <center><asp:Label ID="Label10" runat="server" Font-Size="X-Large" 
                Text="Past History" ForeColor="Blue"></asp:Label></center>
        &nbsp;<center>
<asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                AllowPaging="True" PageSize="3">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="patient_id" HeaderText="patient_id" 
                    SortExpression="patient_id" />
                <asp:BoundField DataField="history" HeaderText="history" 
                    SortExpression="history" />
                <asp:BoundField DataField="medicine_type" HeaderText="medicine_type" 
                    SortExpression="medicine_type" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [history], [date], [medicine_type], [patient_id] FROM [past_history] WHERE ([patient_id] = @patient_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlsearchpatient" Name="patient_id" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </center>
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <center>
        
          <asp:Label ID="Label11" runat="server" Font-Size="X-Large" ForeColor="Blue" 
              Text="Family History"></asp:Label>
        
      <br />
      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="Sqlfamily" AllowPaging="True" 
              PageSize="3">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="patient_id" HeaderText="patient_id" 
                    SortExpression="patient_id" />
                <asp:BoundField DataField="family_history" HeaderText="family_history" 
                    SortExpression="family_history" />
                <asp:BoundField DataField="medicine_type" HeaderText="medicine_type" 
                    SortExpression="medicine_type" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
          <asp:SqlDataSource ID="Sqlfamily" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [Familys_history] WHERE ([patient_id] = @patient_id)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="ddlsearchpatient" Name="patient_id" 
                      PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
        </center>
        <br />
       <center> <asp:Label ID="Label12" runat="server" Font-Size="X-Large" ForeColor="Blue" 
            Text="Present History"></asp:Label>
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="Sqlpresent_history" AllowPaging="True" 
               PageSize="3">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="patient_id" HeaderText="patient_id" 
                    SortExpression="patient_id" />
                <asp:BoundField DataField="height" HeaderText="height" 
                    SortExpression="height" />
                <asp:BoundField DataField="weight" HeaderText="weight" 
                    SortExpression="weight" />
                <asp:BoundField DataField="waist" HeaderText="waist" SortExpression="waist" />
                <asp:BoundField DataField="hip" HeaderText="hip" SortExpression="hip" />
                <asp:BoundField DataField="bmi" HeaderText="bmi" SortExpression="bmi" />
                <asp:BoundField DataField="bmi_status" HeaderText="bmi_status" 
                    SortExpression="bmi_status" />
                <asp:BoundField DataField="pulse" HeaderText="pulse" SortExpression="pulse" />
                <asp:BoundField DataField="blood_pressure" HeaderText="blood_pressure" 
                    SortExpression="blood_pressure" />
                <asp:BoundField DataField="blood_sugar" HeaderText="blood_sugar" 
                    SortExpression="blood_sugar" />
                <asp:BoundField DataField="respiratory_rate" HeaderText="respiratory_rate" 
                    SortExpression="respiratory_rate" />
                <asp:BoundField DataField="temprature" HeaderText="temprature" 
                    SortExpression="temprature" />
                <asp:BoundField DataField="blood_group" HeaderText="blood_group" 
                    SortExpression="blood_group" />
                <asp:BoundField DataField="rh" HeaderText="rh" SortExpression="rh" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
           <asp:SqlDataSource ID="Sqlpresent_history" runat="server" 
               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
               SelectCommand="SELECT * FROM [present_history] WHERE ([patient_id] = @patient_id)">
               <SelectParameters>
                   <asp:ControlParameter ControlID="ddlsearchpatient" Name="patient_id" 
                       PropertyName="SelectedValue" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
        </center>
        <br /><center>
        <asp:Label ID="Label13" runat="server" Font-Size="X-Large" ForeColor="Blue" 
            Text="Personal History"></asp:Label>
        <br />
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataSourceID="Sqlpersonal_history" PageSize="3">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="Patient_id" HeaderText="Patient_id" 
                    SortExpression="Patient_id" />
                <asp:BoundField DataField="Tabacoo_type" HeaderText="Tabacoo_type" 
                    SortExpression="Tabacoo_type" />
                <asp:BoundField DataField="Tabacoo_eating_time" 
                    HeaderText="Tabacoo_eating_time" SortExpression="Tabacoo_eating_time" />
                <asp:BoundField DataField="Alcohol_type" HeaderText="Alcohol_type" 
                    SortExpression="Alcohol_type" />
                <asp:BoundField DataField="Alcohol_day" HeaderText="Alcohol_day" 
                    SortExpression="Alcohol_day" />
                <asp:BoundField DataField="Alcohol_eating_time" 
                    HeaderText="Alcohol_eating_time" SortExpression="Alcohol_eating_time" />
                <asp:BoundField DataField="Food_habit" HeaderText="Food_habit" 
                    SortExpression="Food_habit" />
                <asp:BoundField DataField="Appetite" HeaderText="Appetite" 
                    SortExpression="Appetite" />
                <asp:BoundField DataField="Bowel_habits" HeaderText="Bowel_habits" 
                    SortExpression="Bowel_habits" />
                <asp:BoundField DataField="Micturitions" HeaderText="Micturitions" 
                    SortExpression="Micturitions" />
                <asp:BoundField DataField="Sleep" HeaderText="Sleep" SortExpression="Sleep" />
                <asp:BoundField DataField="Medications" HeaderText="Medications" 
                    SortExpression="Medications" />
                <asp:BoundField DataField="Spactacle" HeaderText="Spactacle" 
                    SortExpression="Spactacle" />
                <asp:BoundField DataField="left" HeaderText="left" SortExpression="left" />
                <asp:BoundField DataField="right" HeaderText="right" SortExpression="right" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView></center>
        <asp:SqlDataSource ID="Sqlpersonal_history" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [personal_history] WHERE ([Patient_id] = @Patient_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlsearchpatient" Name="Patient_id" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Panel>
</asp:Content>

