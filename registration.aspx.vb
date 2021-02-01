Imports System.Net.Mail
Imports System.Data.SqlClient
Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim insert_password As String
    Dim cmd, cmd_password As SqlCommand
    Dim password As String
    Dim user_type, sts As String
   

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click

        Dim con As New Connection()
        Dim blank As String
        blank = ""
        con.Connection()


        auto()
        Dim cmd As New SqlCommand("addregi", con.cn)
        cmd.CommandType = Data.CommandType.StoredProcedure

        If RadioButton1.Checked = True Then
            
            cmd.Parameters.AddWithValue("@hospital_id", Session("reg_uniq id"))
            cmd.Parameters.AddWithValue("@Rname", txtfirstname.Text)
            cmd.Parameters.AddWithValue("@Pin_code", ddlpincode.SelectedValue)
            cmd.Parameters.AddWithValue("@Country", ddlcountry.SelectedValue)
            cmd.Parameters.AddWithValue("@Street", txtstreet.Text)
            cmd.Parameters.AddWithValue("@State", ddlstste.SelectedValue)
            cmd.Parameters.AddWithValue("@Area", ddlarea.SelectedValue)
            cmd.Parameters.AddWithValue("@City", txtcity.Text)
            cmd.Parameters.AddWithValue("@Land_mark", txtland_mark.Text)
            cmd.Parameters.AddWithValue("@Country_code", txtcountry_code.Text)
            cmd.Parameters.AddWithValue("@Std_code", txtstd_code.Text)
            cmd.Parameters.AddWithValue("@Land_line", txtland_line.Text)
            cmd.Parameters.AddWithValue("@Facimile", txtfacimile.Text)
            cmd.Parameters.AddWithValue("@Mobile_number", txtmobile.Text)
            cmd.Parameters.AddWithValue("@Toll_free_number", txttoll_free_no.Text)
            cmd.Parameters.AddWithValue("@E_mail", txte_mail.Text)
            cmd.Parameters.AddWithValue("@Web_url", txtweb_url.Text)
            cmd.Parameters.AddWithValue("ownership", ddlownership.SelectedValue)
            cmd.Parameters.AddWithValue("@type_of_org", ddlorganisation.SelectedValue)
            cmd.Parameters.AddWithValue("@speciality1", RadioButton1.Text)
            cmd.Parameters.AddWithValue("@speciality2", blank)
            cmd.Parameters.AddWithValue("@speciality3", blank)
            cmd.Parameters.AddWithValue("@speciality4", blank)

        ElseIf RadioButton2.Checked = True Then

            cmd.Parameters.AddWithValue("@hospital_id", Session("reg_uniq id"))
            cmd.Parameters.AddWithValue("@Rname", txtfirstname.Text)
            cmd.Parameters.AddWithValue("@Pin_code", ddlpincode.SelectedValue)
            cmd.Parameters.AddWithValue("@Country", ddlcountry.SelectedValue)
            cmd.Parameters.AddWithValue("@Street", txtstreet.Text)
            cmd.Parameters.AddWithValue("@State", ddlstste.SelectedValue)
            cmd.Parameters.AddWithValue("@Area", ddlarea.SelectedValue)
            cmd.Parameters.AddWithValue("@City", txtcity.Text)
            cmd.Parameters.AddWithValue("@Land_mark", txtland_mark.Text)
            cmd.Parameters.AddWithValue("@Country_code", txtcountry_code.Text)
            cmd.Parameters.AddWithValue("@Std_code", txtstd_code.Text)
            cmd.Parameters.AddWithValue("@Land_line", txtland_line.Text)
            cmd.Parameters.AddWithValue("@Facimile", txtfacimile.Text)
            cmd.Parameters.AddWithValue("@Mobile_number", txtmobile.Text)
            cmd.Parameters.AddWithValue("@Toll_free_number", txttoll_free_no.Text)
            cmd.Parameters.AddWithValue("@E_mail", txte_mail.Text)
            cmd.Parameters.AddWithValue("@Web_url", txtweb_url.Text)
            cmd.Parameters.AddWithValue("ownership", ddlownership.SelectedValue)
            cmd.Parameters.AddWithValue("@type_of_org", ddlorganisation.SelectedValue)
            cmd.Parameters.AddWithValue("@speciality1", ddlspeciality.SelectedValue)
            cmd.Parameters.AddWithValue("@speciality2", blank)
            cmd.Parameters.AddWithValue("@speciality3", blank)
            cmd.Parameters.AddWithValue("@speciality4", blank)

        ElseIf RadioButton3.Checked = True Then

            cmd.Parameters.AddWithValue("@hospital_id", Session("reg_uniq id"))
            cmd.Parameters.AddWithValue("@Rname", txtfirstname.Text)
            cmd.Parameters.AddWithValue("@Pin_code", ddlpincode.SelectedValue)
            cmd.Parameters.AddWithValue("@Country", ddlcountry.SelectedValue)
            cmd.Parameters.AddWithValue("@Street", txtstreet.Text)
            cmd.Parameters.AddWithValue("@State", ddlstste.SelectedValue)
            cmd.Parameters.AddWithValue("@Area", ddlarea.SelectedValue)
            cmd.Parameters.AddWithValue("@City", txtcity.Text)
            cmd.Parameters.AddWithValue("@Land_mark", txtland_mark.Text)
            cmd.Parameters.AddWithValue("@Country_code", txtcountry_code.Text)
            cmd.Parameters.AddWithValue("@Std_code", txtstd_code.Text)
            cmd.Parameters.AddWithValue("@Land_line", txtland_line.Text)
            cmd.Parameters.AddWithValue("@Facimile", txtfacimile.Text)
            cmd.Parameters.AddWithValue("@Mobile_number", txtmobile.Text)
            cmd.Parameters.AddWithValue("@Toll_free_number", txttoll_free_no.Text)
            cmd.Parameters.AddWithValue("@E_mail", txte_mail.Text)
            cmd.Parameters.AddWithValue("@Web_url", txtweb_url.Text)
            cmd.Parameters.AddWithValue("ownership", ddlownership.SelectedValue)
            cmd.Parameters.AddWithValue("@type_of_org", ddlorganisation.SelectedValue)
            cmd.Parameters.AddWithValue("@speciality1", ddlspeciality1.SelectedValue)
            cmd.Parameters.AddWithValue("@speciality2", ddlspeciality2.SelectedValue)
            cmd.Parameters.AddWithValue("@speciality3", ddlspeciality3.SelectedValue)
            cmd.Parameters.AddWithValue("@speciality4", ddlspeciality4.SelectedValue)

        End If

        '=================================================================================================================
        'USER NAME PASSWORD
        '=================================================================================================================
        Dim password As String
        Dim user_type As String
        user_type = "Provider Organisation"
        password = encrypt(txtpassword.Text)
        insert_password = "insert into Login_password values ('" + user_type + "','" + Session("reg_uniq id") + "','" + password + "')"
        '=================================================================================================================

        con.cn.Open()
        Try

            cmd.ExecuteNonQuery()
            cmd_password = New SqlCommand(insert_password, con.cn)

            cmd_password.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            send_mail()

            ClientScript.RegisterStartupScript([GetType](), "CloseScript", " window.close();", True)

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
        End Try

        con.cn.Close()

    End Sub

    Sub auto()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim str As String
        Dim count As String
        str = "select count(*) from Registration "
        cmd = New SqlCommand(str, con.cn)

        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1
        count = cmd.ExecuteScalar() + 1

        Session("reg_uniq id") = "Hospital00" + count
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
    Sub send_mail()
        Dim mail_to As String = txte_mail.Text
        Dim mail_from As String = "baku4444@gmail.com"
        Dim mail As System.Net.Mail.MailMessage = New MailMessage()
        'initiate
        mail.[To].Add(mail_to)
        mail.From = New MailAddress(mail_from, "Registration from", System.Text.Encoding.UTF8)
        mail.Subject = "User id"
        mail.SubjectEncoding = System.Text.Encoding.UTF8
        mail.Body = "Thaks for Registration " & vbNewLine & "User Id Is =" & Session("reg_uniq id") & ""
        mail.BodyEncoding = System.Text.Encoding.UTF8
        mail.IsBodyHtml = True

        mail.Priority = MailPriority.High

        'Working on smtp client:::::

        Dim cl As New SmtpClient()

        cl.Credentials = New System.Net.NetworkCredential(mail_from, "borivali")
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
        'If RadioButton3.Checked = True Then
        'Panel10.Visible = True
        'single_specialist.Visible = False
        ' End If
        Panel11.Visible = True

    End Sub

    Protected Sub RadioButton2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton2.CheckedChanged
        single_specialist.Visible = True
        Panel12.Visible = False

    End Sub

    Protected Sub RadioButton3_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton3.CheckedChanged
        single_specialist.Visible = False
        Panel12.Visible = True
    End Sub

    Protected Sub ddlorganisation_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlorganisation.SelectedIndexChanged
        If ddlorganisation.SelectedValue = "Pharmacy" Then

            Panel12.Visible = False
            Panel11.Visible = False
            single_specialist.Visible = False
        Else
            Panel11.Visible = True


        End If
    End Sub


    Protected Sub RadioButton1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton1.CheckedChanged
        single_specialist.Visible = False
        Panel12.Visible = False

    End Sub
End Class


