Imports System.Net.Mail
Imports System.Data.SqlClient
Imports System.Data

Partial Class _Default

    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd1 As SqlCommand
    Dim ds As New DataSet
    Dim da As New SqlDataAdapter
    Shared curpos As Integer
    Dim insert, delete, search, upd, show, insert_password As String

    Protected Sub submit_button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles submit_button1.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        auto()

        '=================================Doctor insert=========================================================
        
        Dim cmd As New SqlCommand("doctorpersonal_detail", con.cn)
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@doctor_id", Session("uniq id"))
        cmd.Parameters.AddWithValue("@Full_Name", txtFull_Name.Text)
        cmd.Parameters.AddWithValue("@Middle_Name", txtMiddle_Name.Text)
        cmd.Parameters.AddWithValue("@Surname", txtSurname.Text)
        cmd.Parameters.AddWithValue("@RHouse_Name_and_Number", txtHousenn.Text)
        cmd.Parameters.AddWithValue("@RSociety_or_Complex_Name", txtRSociety_or_Complex_Name.Text)
        cmd.Parameters.AddWithValue("@RStreet_Name", txtRStreet_Name.Text)
        cmd.Parameters.AddWithValue("@RArea", ddlrarea.SelectedValue)
        cmd.Parameters.AddWithValue("@RLand_Mark", txtRLand_Mark.Text)
        cmd.Parameters.AddWithValue("@RCity", txtRCity.Text)
        cmd.Parameters.AddWithValue("@RPin_Code", ddlrpincode.SelectedValue)
        cmd.Parameters.AddWithValue("@RState", ddlrstate.SelectedValue)
        cmd.Parameters.AddWithValue("@RCountry", ddlrcountry.SelectedValue)
        cmd.Parameters.AddWithValue("@CHouse_Name_and_Number", txtCHouse_Name_and_Number.Text)
        cmd.Parameters.AddWithValue("@CSociety_or_Complex_Name", txtCSociety_or_Complex_Name.Text)
        cmd.Parameters.AddWithValue("@CStreet_Name", txtCStreet_Name.Text)
        cmd.Parameters.AddWithValue("@CArea", ddlcharea.SelectedValue)
        cmd.Parameters.AddWithValue("@CLand_Mark", txtCLand_Mark.Text)
        cmd.Parameters.AddWithValue("@CRCity", txtCRCity.Text)
        cmd.Parameters.AddWithValue("@CRPin_Code", ddlchpincode.SelectedValue)
        cmd.Parameters.AddWithValue("@CRState", ddlchstate.SelectedValue)
        cmd.Parameters.AddWithValue("@CRCountry", ddlchcountry.SelectedValue)
        cmd.Parameters.AddWithValue("@Home", txtHome.Text)
        cmd.Parameters.AddWithValue("@VCDWork", txtVCDWork.Text)
        cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text)
        cmd.Parameters.AddWithValue("@TollFree", txtTollFree.Text)
        cmd.Parameters.AddWithValue("@Email_id", txtEmail_id.Text)
        cmd.Parameters.AddWithValue("@Web_site", txtWeb_site.Text)
        cmd.Parameters.AddWithValue("@Category", ddlCategory.SelectedValue)
        cmd.Parameters.AddWithValue("@Specilisation", ddlspecilisation.SelectedValue)
        cmd.Parameters.AddWithValue("@Qualification", ddlQualification.SelectedValue)
        cmd.Parameters.AddWithValue("@Registering_Authority", txtRegistering_Authority.Text)
        cmd.Parameters.AddWithValue("@Registration_Number", txtRegistration_Number.Text)
        cmd.Parameters.AddWithValue("@Date_of_First_Registration", txtDate_of_First_Registration.Text)
        cmd.Parameters.AddWithValue("@Valid_From", txtValid_From.Text)
        cmd.Parameters.AddWithValue("@Valid_upto", txtValid_upto.Text)
        cmd.Parameters.AddWithValue("@SESpecialisation", txtSESpecialisation.Text)
        cmd.Parameters.AddWithValue("@Field", txtField.Text)
        cmd.Parameters.AddWithValue("@Experience_in_Year", txtExperience_in_Year.Text)
        cmd.Parameters.AddWithValue("@Number_of_Patients", txtNumber_of_Patients.Text)
        cmd.Parameters.AddWithValue("@Attachment", ddlAttachment.SelectedValue)
        cmd.Parameters.AddWithValue("@AName", txtAName.Text)
        cmd.Parameters.AddWithValue("@ACity", txtACity.Text)
        cmd.Parameters.AddWithValue("@Membership", ddlmembership.SelectedValue)
        cmd.Parameters.AddWithValue("@Enrollment_Number", txtEnrollment_Number.Text)
        cmd.Parameters.AddWithValue("@MValid_from", txtMValid_from.Text)
        cmd.Parameters.AddWithValue("@MValid_upto", txtMSValid_upto.Text)
        cmd.Parameters.AddWithValue("@Notable_Acheivements", txtNotable_Acheivements.Text)
        cmd.Parameters.AddWithValue("@NAArea", txtNAArea.Text)
        cmd.Parameters.AddWithValue("@Details", txtDetails.Text)
        cmd.Parameters.AddWithValue("@CMENumber_of_Patients", txtCMENumber_of_Patients.Text)

        '=================================================================================================================
        'USER NAME PASSWORD
        '=================================================================================================================
        Dim password As String
        Dim user_type As String
        user_type = "Provider Individual"
        password = encrypt(txtpassword.Text)
        insert_password = "insert into Login_password values ('" + user_type + "','" + Session("uniq id") + "','" + password + "')"
        '=================================================================================================================

        Try
            '  cmd = New SqlCommand(insert, con.cn)
            cmd1 = New SqlCommand(insert_password, con.cn)
            cmd.ExecuteNonQuery()
            cmd1.ExecuteNonQuery()
            send_mail()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            ClientScript.RegisterStartupScript([GetType](), "CloseScript", " window.close();", True)

        Catch ex As Exception

            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")

        End Try
        '=====================================================================================
        con.cn.Close()
    End Sub

    Private Function encrypt(ByVal str As String) As String
        Dim _result As String = String.Empty
        Dim temp As Char() = str.ToCharArray()
        For Each _singleChar In temp
            Dim i = AscW(_singleChar)
            i = i - 2
            _result += ChrW(i)
        Next
        Return _result
    End Function
    Private Function decrypt(ByVal str As String) As String
        Dim _result As String = String.Empty
        Dim temp As Char() = str.ToCharArray()
        For Each _singleChar In temp
            Dim i = AscW(_singleChar)
            i = i + 2
            _result += ChrW(i)
        Next
        Return _result
    End Function

    Sub auto()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim str As String
        Dim count As String
        str = "select count(*) from doctor_personal_detail"
        cmd = New SqlCommand(str, con.cn)

        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1
        count = cmd.ExecuteScalar() + 1

        Session("uniq id") = "Doctor00" + count
        con.cn.Close()
    End Sub
    Sub send_mail()
        Dim mail_to As String = txtEmail_id.Text
        Dim mail_from As String = "help4insure@gmail.com"
        Dim mail As System.Net.Mail.MailMessage = New MailMessage()
        'initiate
        mail.[To].Add(mail_to)
        mail.From = New MailAddress(mail_from, "Registration from", System.Text.Encoding.UTF8)
        mail.Subject = "User id And Password"
        mail.SubjectEncoding = System.Text.Encoding.UTF8
        mail.Body = "Thanks for Registration " & vbNewLine & "User Id Is = " & Session("uniq id") & " Password is = " & txtpassword.Text & ""
        mail.BodyEncoding = System.Text.Encoding.UTF8
        mail.IsBodyHtml = True

        mail.Priority = MailPriority.High

        'Working on smtp client:::::

        Dim cl As New SmtpClient()

        cl.Credentials = New System.Net.NetworkCredential(mail_from, "healthyindia")
        cl.Port = 587
        ' gmail uses this port
        cl.Host = "smtp.gmail.com"
        cl.EnableSsl = True

        Try
            cl.Send(mail)
            Response.Write("<script language=javascript>alert('your User Id is send your Email ')</script>")
        Catch exp As Exception

            Response.Write("<script language=javascript>alert(' email is not send')</script>")
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '  Session("provide_indi_user_id") = "Doctor001"
        If (Session("provide_indi_user_id") = "") Then
        Else
            btnupdate.Visible = True
            submit_button1.Visible = False
            txtpassword.Visible = False
            Label4.Visible = False
            Dim con As New Connection()
            con.Connection()
            con.cn.Open()
            Try

                search = "select * from doctor_personal_detail where doctor_id='" + Session("provide_indi_user_id") + "' "
                da = New SqlDataAdapter(search, con.cn)
                ds = New DataSet()
                da.Fill(ds, "doctor_personal_detail")
                ' txtpono.Text = ds.Tables(0).Rows(0)(1)
                txtFull_Name.Text = ds.Tables(0).Rows(0)(1)
                txtMiddle_Name.Text = ds.Tables(0).Rows(0)(2)
                txtSurname.Text = ds.Tables(0).Rows(0)(3)
                txtHousenn.Text = ds.Tables(0).Rows(0)(4)
                txtRSociety_or_Complex_Name.Text = ds.Tables(0).Rows(0)(5)
                txtRStreet_Name.Text = ds.Tables(0).Rows(0)(6)
                ddlrarea.SelectedValue = ds.Tables(0).Rows(0)(7)
                txtRLand_Mark.Text = ds.Tables(0).Rows(0)(8)
                txtRCity.Text = ds.Tables(0).Rows(0)(9)
                ddlrpincode.SelectedValue = ds.Tables(0).Rows(0)(10)
                ddlrstate.SelectedValue = ds.Tables(0).Rows(0)(11)
                ddlrcountry.SelectedValue = ds.Tables(0).Rows(0)(12)
                txtCHouse_Name_and_Number.Text = ds.Tables(0).Rows(0)(13)
                txtCSociety_or_Complex_Name.Text = ds.Tables(0).Rows(0)(14)
                txtCStreet_Name.Text = ds.Tables(0).Rows(0)(15)
                ddlcharea.SelectedValue = ds.Tables(0).Rows(0)(16)
                txtCLand_Mark.Text = ds.Tables(0).Rows(0)(17)
                txtCRCity.Text = ds.Tables(0).Rows(0)(18)
                ddlchpincode.SelectedValue = ds.Tables(0).Rows(0)(19)
                ddlchstate.SelectedValue = ds.Tables(0).Rows(0)(20)
                ddlchcountry.SelectedValue = ds.Tables(0).Rows(0)(21)
                txtHome.Text = ds.Tables(0).Rows(0)(22)
                txtVCDWork.Text = ds.Tables(0).Rows(0)(23)
                txtMobile.Text = ds.Tables(0).Rows(0)(24)
                txtTollFree.Text = ds.Tables(0).Rows(0)(25)
                txtEmail_id.Text = ds.Tables(0).Rows(0)(26)
                txtWeb_site.Text = ds.Tables(0).Rows(0)(27)
                ddlCategory.SelectedValue = ds.Tables(0).Rows(0)(28)
                ddlspecilisation.SelectedValue = ds.Tables(0).Rows(0)(29)
                ddlQualification.SelectedValue = ds.Tables(0).Rows(0)(30)
                txtRegistering_Authority.Text = ds.Tables(0).Rows(0)(31)
                txtRegistration_Number.Text = ds.Tables(0).Rows(0)(32)
                txtDate_of_First_Registration.Text = ds.Tables(0).Rows(0)(33)
                txtValid_From.Text = ds.Tables(0).Rows(0)(34)
                txtValid_upto.Text = ds.Tables(0).Rows(0)(35)
                txtSESpecialisation.Text = ds.Tables(0).Rows(0)(36)
                txtField.Text = ds.Tables(0).Rows(0)(37)
                txtExperience_in_Year.Text = ds.Tables(0).Rows(0)(38)
                txtNumber_of_Patients.Text = ds.Tables(0).Rows(0)(39)
                ddlAttachment.SelectedValue = ds.Tables(0).Rows(0)(40)
                txtAName.Text = ds.Tables(0).Rows(0)(41)
                txtACity.Text = ds.Tables(0).Rows(0)(42)
                ddlmembership.SelectedValue = ds.Tables(0).Rows(0)(43)
                txtEnrollment_Number.Text = ds.Tables(0).Rows(0)(44)
                txtMValid_from.Text = ds.Tables(0).Rows(0)(45)
                txtMSValid_upto.Text = ds.Tables(0).Rows(0)(46)
                txtNotable_Acheivements.Text = ds.Tables(0).Rows(0)(47)
                txtNAArea.Text = ds.Tables(0).Rows(0)(48)
                txtDetails.Text = ds.Tables(0).Rows(0)(49)
                txtCMENumber_of_Patients.Text = ds.Tables(0).Rows(0)(50)

            Catch ex As Exception
                ' Response.Write("<script language=javascript>alert('Search is not Found')</script>")
            End Try
            con.cn.Close()

            'lblsearch.Visible = True
            'txtsearch.Visible = True
            'btnsearch.Visible = True

        End If

    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        Try
            upd = "update doctor_personal_detail set doctor_id='" + Session("provide_indi_user_id") + "',Full_Name='" + txtFull_Name.Text + "',Middle_Name='" + txtMiddle_Name.Text + "',Surname='" + txtSurname.Text + "',RHouse_Name_and_Number='" + txtHousenn.Text + "',RSociety_or_Complex_Name='" + txtRSociety_or_Complex_Name.Text + "',RStreet_Name='" + txtRStreet_Name.Text + "',RArea='" + ddlrarea.SelectedValue + "',RLand_Mark='" + txtRLand_Mark.Text + "',RCity='" + txtRCity.Text + "',RPin_Code=" + ddlrpincode.SelectedValue + ",RState='" + ddlrstate.SelectedValue + "',RCountry='" + ddlrcountry.SelectedValue + "',CHouse_Name_and_Number='" + txtCHouse_Name_and_Number.Text + "',CSociety_or_Complex_Name='" + txtCSociety_or_Complex_Name.Text + "',CStreet_Name='" + txtCStreet_Name.Text + "',CArea='" + ddlcharea.SelectedValue + "',CLand_Mark='" + txtCLand_Mark.Text + "',CRCity='" + txtRCity.Text + "',CRPin_Code='" + ddlchpincode.SelectedValue + "',CRState='" + ddlchstate.SelectedValue + "',CRCountry='" + ddlrcountry.SelectedValue + "',Home='" + txtHome.Text + "',VCDWork='" + txtVCDWork.Text + "',Mobile=" + txtMobile.Text + ",TollFree=" + txtTollFree.Text + ",Email_id='" + txtEmail_id.Text + "',Web_site='" + txtWeb_site.Text + "',Category='" + ddlCategory.SelectedValue + "',Specilisation='" + ddlspecilisation.SelectedValue + "',Qualification='" + ddlQualification.SelectedValue + "',Registering_Authority	='" + txtRegistering_Authority.Text + "',Registration_Number='" + txtRegistration_Number.Text + "',Date_of_First_Registration='" + txtDate_of_First_Registration.Text + "',Valid_From='" + txtValid_From.Text + "',Valid_upto='" + txtValid_upto.Text + "',SESpecialisation	='" + txtSESpecialisation.Text + "',Field='" + txtField.Text + "',Experience_in_Year=" + txtExperience_in_Year.Text + ",Number_of_Patients=" + txtNumber_of_Patients.Text + ",Attachment='" + ddlAttachment.SelectedValue + "',AName='" + txtAName.Text + "',ACity='" + txtACity.Text + "',Membership='" + ddlmembership.SelectedValue + "',Enrollment_Number='" + txtEnrollment_Number.Text + "',MValid_from='" + txtMValid_from.Text + "',MValid_upto='" + txtMSValid_upto.Text + "',Notable_Acheivements='" + txtNotable_Acheivements.Text + "',NAArea='" + txtNAArea.Text + "',Details='" + txtDetails.Text + "',CMENumber_of_Patients='" + txtCMENumber_of_Patients.Text + "' where doctor_id='" + Session("provide_indi_user_id") + "'"
            cmd = New SqlCommand(upd, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            Response.Redirect("~/Individual Provider/doctor_page.aspx")
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        If (txtsearch.Text = Session("provide_indi_user_id")) Then
            Response.Write("<script language=javascript>alert('Your id is wrong')</script>")
        Else

        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            search = "select * from doctor_personal_detail where doctor_id='" + txtsearch.Text + "' "
            da = New SqlDataAdapter(search, con.cn)
            ds = New DataSet()
            da.Fill(ds, "doctor_personal_detail")
            ' txtpono.Text = ds.Tables(0).Rows(0)(1)
            txtFull_Name.Text = ds.Tables(0).Rows(0)(1)
            txtMiddle_Name.Text = ds.Tables(0).Rows(0)(2)
            txtSurname.Text = ds.Tables(0).Rows(0)(3)
            txtHousenn.Text = ds.Tables(0).Rows(0)(4)
            txtRSociety_or_Complex_Name.Text = ds.Tables(0).Rows(0)(5)
            txtRStreet_Name.Text = ds.Tables(0).Rows(0)(6)
            ddlrarea.SelectedValue = ds.Tables(0).Rows(0)(7)
            txtRLand_Mark.Text = ds.Tables(0).Rows(0)(8)
            txtRCity.Text = ds.Tables(0).Rows(0)(9)
            ddlrpincode.SelectedValue = ds.Tables(0).Rows(0)(10)
            ddlrstate.SelectedValue = ds.Tables(0).Rows(0)(11)
            ddlrcountry.SelectedValue = ds.Tables(0).Rows(0)(12)
            txtCHouse_Name_and_Number.Text = ds.Tables(0).Rows(0)(13)
            txtCSociety_or_Complex_Name.Text = ds.Tables(0).Rows(0)(14)
            txtCStreet_Name.Text = ds.Tables(0).Rows(0)(15)
            ddlcharea.SelectedValue = ds.Tables(0).Rows(0)(16)
            txtCLand_Mark.Text = ds.Tables(0).Rows(0)(17)
            txtCRCity.Text = ds.Tables(0).Rows(0)(18)
            ddlchpincode.SelectedValue = ds.Tables(0).Rows(0)(19)
            ddlchstate.SelectedValue = ds.Tables(0).Rows(0)(20)
            ddlchcountry.SelectedValue = ds.Tables(0).Rows(0)(21)
            txtHome.Text = ds.Tables(0).Rows(0)(22)
            txtVCDWork.Text = ds.Tables(0).Rows(0)(23)
            txtMobile.Text = ds.Tables(0).Rows(0)(24)
            txtTollFree.Text = ds.Tables(0).Rows(0)(25)
            txtEmail_id.Text = ds.Tables(0).Rows(0)(26)
            txtWeb_site.Text = ds.Tables(0).Rows(0)(27)
            ddlCategory.SelectedValue = ds.Tables(0).Rows(0)(28)
            ddlspecilisation.SelectedValue = ds.Tables(0).Rows(0)(29)
            ddlQualification.SelectedValue = ds.Tables(0).Rows(0)(30)
            txtRegistering_Authority.Text = ds.Tables(0).Rows(0)(31)
            txtRegistration_Number.Text = ds.Tables(0).Rows(0)(32)
            txtDate_of_First_Registration.Text = ds.Tables(0).Rows(0)(33)
            txtValid_From.Text = ds.Tables(0).Rows(0)(34)
            txtValid_upto.Text = ds.Tables(0).Rows(0)(35)
            txtSESpecialisation.Text = ds.Tables(0).Rows(0)(36)
            txtField.Text = ds.Tables(0).Rows(0)(37)
            txtExperience_in_Year.Text = ds.Tables(0).Rows(0)(38)
            txtNumber_of_Patients.Text = ds.Tables(0).Rows(0)(39)
            ddlAttachment.SelectedValue = ds.Tables(0).Rows(0)(40)
            txtAName.Text = ds.Tables(0).Rows(0)(41)
            txtACity.Text = ds.Tables(0).Rows(0)(42)
            ddlmembership.SelectedValue = ds.Tables(0).Rows(0)(43)
            txtEnrollment_Number.Text = ds.Tables(0).Rows(0)(44)
            txtMValid_from.Text = ds.Tables(0).Rows(0)(45)
            txtMSValid_upto.Text = ds.Tables(0).Rows(0)(46)
            txtNotable_Acheivements.Text = ds.Tables(0).Rows(0)(47)
            txtNAArea.Text = ds.Tables(0).Rows(0)(48)
            txtDetails.Text = ds.Tables(0).Rows(0)(49)
            txtCMENumber_of_Patients.Text = ds.Tables(0).Rows(0)(50)

        Catch ex As Exception
            ' Response.Write("<script language=javascript>alert('Search is not Found')</script>")
        End Try
        con.cn.Close()
        End If

    End Sub

    Protected Sub cancal_button_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cancal_button.Click
        ClientScript.RegisterStartupScript([GetType](), "CloseScript", " window.close();", True)
    End Sub

End Class
