<%@ Page Language="VB" MasterPageFile="~/login.master" AutoEventWireup="false" CodeFile="Show_Information.aspx.vb" Inherits="Member_Page_detail_Show_Information" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel6" runat="server" Height="1968px" ScrollBars="Auto" 
        Width="1129px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton13" runat="server" 
            PostBackUrl="~/Member_Page.aspx">Home</asp:LinkButton>
        &nbsp;&gt; Show Information&nbsp;&nbsp;<br />
        <br />
        <br />
   <center>     
       <asp:Label ID="Label9" runat="server" BackColor="#009900" Font-Overline="False" 
            Font-Size="X-Large" ForeColor="White" Text="Past History"></asp:Label></center>
        <br />
   <center>     
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="Sqlpasthistory" AllowPaging="True" 
           PageSize="5">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="history" HeaderText="history" 
                    SortExpression="history" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="medicine_type" HeaderText="medicine_type" 
                    SortExpression="medicine_type" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
       <asp:SqlDataSource ID="Sqlpasthistory" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           SelectCommand="SELECT [history], [date], [medicine_type] FROM [past_history]">
       </asp:SqlDataSource>
        <br />
       <asp:Label ID="Label8" runat="server" BackColor="#009900" Font-Overline="False" 
           Font-Size="X-Large" ForeColor="White" Text="Family History"></asp:Label>
        </center>
        <br />
      <center style="height: 1008px">  <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlFamily_history" AllowPaging="True" 
              PageSize="5">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
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
          <asp:SqlDataSource ID="SqlFamily_history" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              
              SelectCommand="SELECT [family_history], [medicine_type] FROM [family_history]">
          </asp:SqlDataSource>
          <br />
          <asp:Label ID="Label10" runat="server" BackColor="#009900" 
              Font-Overline="False" Font-Size="X-Large" ForeColor="White" 
              Text="Present History"></asp:Label>
          <br />
          <br />
          <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
              BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
              CellPadding="4" DataSourceID="Sqlpresent_history">
              <RowStyle BackColor="White" ForeColor="#330099" />
              <Columns>
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
              SelectCommand="SELECT [height], [weight], [waist], [hip], [bmi], [bmi_status], [pulse], [blood_pressure], [blood_sugar], [respiratory_rate], [temprature], [blood_group], [rh] FROM [present_history] WHERE ([patient_id] = @patient_id)">
              <SelectParameters>
                  <asp:SessionParameter Name="patient_id" SessionField="member_user_id" 
                      Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          <br />
          <asp:Label ID="Label11" runat="server" BackColor="#009900" 
              Font-Overline="False" Font-Size="X-Large" ForeColor="White" Text="Profissional"></asp:Label>
          <br />
          <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
              BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
              CellPadding="4" DataSourceID="SqlProfissonal">
              <RowStyle BackColor="White" ForeColor="#330099" />
              <Columns>
                  <asp:BoundField DataField="occupation" HeaderText="occupation" 
                      SortExpression="occupation" />
                  <asp:BoundField DataField="office_name" HeaderText="office_name" 
                      SortExpression="office_name" />
                  <asp:BoundField DataField="office_id_number" HeaderText="office_id_number" 
                      SortExpression="office_id_number" />
                  <asp:BoundField DataField="phone_number" HeaderText="phone_number" 
                      SortExpression="phone_number" />
                  <asp:BoundField DataField="address" HeaderText="address" 
                      SortExpression="address" />
                  <asp:BoundField DataField="email_id" HeaderText="email_id" 
                      SortExpression="email_id" />
                  <asp:BoundField DataField="website" HeaderText="website" 
                      SortExpression="website" />
                  <asp:BoundField DataField="monthly_income" HeaderText="monthly_income" 
                      SortExpression="monthly_income" />
                  <asp:BoundField DataField="annual_income" HeaderText="annual_income" 
                      SortExpression="annual_income" />
                  <asp:BoundField DataField="designation" HeaderText="designation" 
                      SortExpression="designation" />
                  <asp:BoundField DataField="school_university" HeaderText="school_university" 
                      SortExpression="school_university" />
                  <asp:BoundField DataField="qualification" HeaderText="qualification" 
                      SortExpression="qualification" />
                  <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                  <asp:BoundField DataField="extra_curricular_activities" 
                      HeaderText="extra_curricular_activities" 
                      SortExpression="extra_curricular_activities" />
                  <asp:BoundField DataField="hobbies" HeaderText="hobbies" 
                      SortExpression="hobbies" />
                  <asp:BoundField DataField="club_membership" HeaderText="club_membership" 
                      SortExpression="club_membership" />
                  <asp:BoundField DataField="recognition" HeaderText="recognition" 
                      SortExpression="recognition" />
                  <asp:BoundField DataField="em_first_name" HeaderText="em_first_name" 
                      SortExpression="em_first_name" />
                  <asp:BoundField DataField="em_middle_name" HeaderText="em_middle_name" 
                      SortExpression="em_middle_name" />
                  <asp:BoundField DataField="em_last_name" HeaderText="em_last_name" 
                      SortExpression="em_last_name" />
                  <asp:BoundField DataField="em_contact_number" HeaderText="em_contact_number" 
                      SortExpression="em_contact_number" />
                  <asp:BoundField DataField="em_family_doctor" HeaderText="em_family_doctor" 
                      SortExpression="em_family_doctor" />
                  <asp:BoundField DataField="em_relationship" HeaderText="em_relationship" 
                      SortExpression="em_relationship" />
                  <asp:BoundField DataField="em_qualification" HeaderText="em_qualification" 
                      SortExpression="em_qualification" />
                  <asp:BoundField DataField="em_mobile_number" HeaderText="em_mobile_number" 
                      SortExpression="em_mobile_number" />
                  <asp:BoundField DataField="em_std_code" HeaderText="em_std_code" 
                      SortExpression="em_std_code" />
                  <asp:BoundField DataField="em_landline_number" HeaderText="em_landline_number" 
                      SortExpression="em_landline_number" />
                  <asp:BoundField DataField="em_email_id" HeaderText="em_email_id" 
                      SortExpression="em_email_id" />
                  <asp:BoundField DataField="em_house_number" HeaderText="em_house_number" 
                      SortExpression="em_house_number" />
                  <asp:BoundField DataField="em_street_address" HeaderText="em_street_address" 
                      SortExpression="em_street_address" />
                  <asp:BoundField DataField="em_pincode" HeaderText="em_pincode" 
                      SortExpression="em_pincode" />
                  <asp:BoundField DataField="em_area" HeaderText="em_area" 
                      SortExpression="em_area" />
                  <asp:BoundField DataField="em_city" HeaderText="em_city" 
                      SortExpression="em_city" />
                  <asp:BoundField DataField="em_state" HeaderText="em_state" 
                      SortExpression="em_state" />
                  <asp:BoundField DataField="em_country" HeaderText="em_country" 
                      SortExpression="em_country" />
              </Columns>
              <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
              <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
          </asp:GridView>
          <br />
          <asp:SqlDataSource ID="SqlProfissonal" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT [occupation], [office_name], [office_id_number], [phone_number], [address], [email_id], [website], [monthly_income], [annual_income], [designation], [school_university], [qualification], [year], [extra_curricular_activities], [hobbies], [club_membership], [recognition], [em_first_name], [em_middle_name], [em_last_name], [em_contact_number], [em_family_doctor], [em_relationship], [em_qualification], [em_mobile_number], [em_std_code], [em_landline_number], [em_email_id], [em_house_number], [em_street_address], [em_pincode], [em_area], [em_city], [em_state], [em_country] FROM [proffesional] WHERE ([patient_id] = @patient_id)">
              <SelectParameters>
                  <asp:SessionParameter Name="patient_id" SessionField="member_user_id" 
                      Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          <br />
          <asp:Label ID="Label12" runat="server" BackColor="#009900" 
              Font-Overline="False" Font-Size="X-Large" ForeColor="White" 
              Text="Obstrict History"></asp:Label>
          <br />
          <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
              BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
              CellPadding="4" DataSourceID="Sqlobstrict_history">
              <RowStyle BackColor="White" ForeColor="#330099" />
              <Columns>
                  <asp:BoundField DataField="date_of_delivery" HeaderText="date_of_delivery" 
                      SortExpression="date_of_delivery" />
                  <asp:BoundField DataField="delivery_type" HeaderText="delivery_type" 
                      SortExpression="delivery_type" />
                  <asp:BoundField DataField="duration_preg" HeaderText="duration_preg" 
                      SortExpression="duration_preg" />
                  <asp:BoundField DataField="status_of_baby" HeaderText="status_of_baby" 
                      SortExpression="status_of_baby" />
              </Columns>
              <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
              <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
          </asp:GridView>
          <asp:SqlDataSource ID="Sqlobstrict_history" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT [date_of_delivery], [delivery_type], [duration_preg], [status_of_baby] FROM [Delivery_detail] WHERE ([patient_id] = @patient_id)">
              <SelectParameters>
                  <asp:SessionParameter Name="patient_id" SessionField="member_user_id" 
                      Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
        
          <asp:Label ID="Label13" runat="server" BackColor="#009900" 
              Font-Overline="False" Font-Size="X-Large" ForeColor="White" 
              Text="Abortion history"></asp:Label>
          <br />
          <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
              BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
              CellPadding="4" DataSourceID="Sqldelivery_type">
              <RowStyle BackColor="White" ForeColor="#330099" />
              <Columns>
                  <asp:BoundField DataField="abort_date" HeaderText="abort_date" 
                      SortExpression="abort_date" />
                  <asp:BoundField DataField="type_abort" HeaderText="type_abort" 
                      SortExpression="type_abort" />
                  <asp:BoundField DataField="month_abort" HeaderText="month_abort" 
                      SortExpression="month_abort" />
              </Columns>
              <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
              <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
          </asp:GridView>
          <asp:SqlDataSource ID="Sqldelivery_type" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT [abort_date], [type_abort], [month_abort] FROM [Abortion] WHERE ([patient_id] = @patient_id)">
              <SelectParameters>
                  <asp:SessionParameter Name="patient_id" SessionField="member_user_id" 
                      Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          <asp:Label ID="Label14" runat="server" BackColor="#009900" 
              Font-Overline="False" Font-Size="X-Large" ForeColor="White" 
              Text="Menstrual History"></asp:Label>
          <br />
          <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
              BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
              CellPadding="4" DataSourceID="SqlMenstrual_history">
              <RowStyle BackColor="White" ForeColor="#330099" />
              <Columns>
                  <asp:BoundField DataField="date_of_menarche" HeaderText="date_of_menarche" 
                      SortExpression="date_of_menarche" />
                  <asp:BoundField DataField="date_of_last_menarche_period" 
                      HeaderText="date_of_last_menarche_period" 
                      SortExpression="date_of_last_menarche_period" />
                  <asp:BoundField DataField="duration" HeaderText="duration" 
                      SortExpression="duration" />
                  <asp:BoundField DataField="blood_flow" HeaderText="blood_flow" 
                      SortExpression="blood_flow" />
                  <asp:BoundField DataField="regular_cycle" HeaderText="regular_cycle" 
                      SortExpression="regular_cycle" />
                  <asp:BoundField DataField="birth_flow" HeaderText="birth_flow" 
                      SortExpression="birth_flow" />
              </Columns>
              <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
              <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlMenstrual_history" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT [date_of_menarche], [date_of_last_menarche_period], [duration], [blood_flow], [regular_cycle], [birth_flow] FROM [Menstrual_History] WHERE ([patient_id] = @patient_id)">
              <SelectParameters>
                  <asp:SessionParameter Name="patient_id" SessionField="member_user_id" 
                      Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          <br />
          <br />
        
        </center>
        <br />
    </asp:Panel>

</asp:Content>

