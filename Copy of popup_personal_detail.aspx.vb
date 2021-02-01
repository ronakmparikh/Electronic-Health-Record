Imports System.Net.Mail
Imports System.Data.SqlClient
Imports System.Data
Partial Class popup_personal_detail
    Inherits System.Web.UI.Page
    Dim cmd, identi_cmd, cmd_address, cmd_password As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim insert, delete, search, insert_identification, insert_address, insert_password As String


    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        auto()

        If FileUpload_photo.HasFile Then
            FileUpload_photo.SaveAs("F:\EHR\photo and document\" & FileUpload_photo.FileName)
        End If
        If FileUpload_identification.HasFile Then
            FileUpload_identification.SaveAs("F:\EHR\photo and document\" & FileUpload_identification.FileName)
        End If
        Dim photo As String = FileUpload_photo.FileName
        Dim iden_photo As String = FileUpload_identification.FileName
        'personal detail insert query
        cmd = New SqlCommand("personal_detail_insert", con.cn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@patient_id", Session("uniq id"))
        cmd.Parameters.AddWithValue("@name", txtname1.Text)
        cmd.Parameters.AddWithValue("@middle_name", txtname2.Text)
        cmd.Parameters.AddWithValue("@sur_name", txtname3.Text)
        cmd.Parameters.AddWithValue("@father_first_name", txtfname1.Text)
        cmd.Parameters.AddWithValue("@father_middle_name", txtfname2.Text)
        cmd.Parameters.AddWithValue("@father_sur_name", txtfname3.Text)
        cmd.Parameters.AddWithValue("@mother_first_name", txtmname1.Text)
        cmd.Parameters.AddWithValue("@mother_middle_name", txtmname2.Text)
        cmd.Parameters.AddWithValue("@mother_sur_name", txtmname3.Text)
        cmd.Parameters.AddWithValue("@husband_first_name", txthname1.Text)
        cmd.Parameters.AddWithValue("@husband_middle_name", txthname2.Text)
        cmd.Parameters.AddWithValue("@husband_sur_name", txthname3.Text)
        cmd.Parameters.AddWithValue("@date", txtr_dob.Text)

        cmd.Parameters.AddWithValue("@age", txtage.Text)
        cmd.Parameters.AddWithValue("@gender", ddlgender.SelectedValue)
        cmd.Parameters.AddWithValue("@marital_status", ddlmarital_status.SelectedValue)
        cmd.Parameters.AddWithValue("@identification_mark", txtid_mark.Text)
        cmd.Parameters.AddWithValue("@mobile_number", txtmobilenumber.Text)
        cmd.Parameters.AddWithValue("@std_code", txtstd_code.Text)
        cmd.Parameters.AddWithValue("@telephone_number", txtlandline_number.Text)
        cmd.Parameters.AddWithValue("@email_id", txtemail.Text)
        cmd.Parameters.AddWithValue("@identification_type", ddlidentification_type.SelectedValue)
        cmd.Parameters.AddWithValue("@identification_number", txtidentificatio_number.Text)
        cmd.Parameters.AddWithValue("@iden_image", iden_photo)
        cmd.Parameters.AddWithValue("@photo", photo)
        
        '==============================

        '=============================
        'Address
        '======================================
        'Dim puid, relationship As String
        'puid = " "
        'relationship = " "
        '===========================
        ' Dim phouse_numbers, pstreetaddress, Parea, Pcity, pcountry, Ppincode, Pstate As String

        'phouse_numbers = " "
        'pstreetaddress = " "
        'Parea = " "
        'Pcity = " "
        'pcountry = " "
        'Ppincode = " "
        'Pstate = " "
        ''=============================

        'If (rdbpermanentno.Checked = True And rdbdeptyes.Checked = True) Then
        ' All data inserted

        'insert_address = "insert into address values('" + Session("uniq id") + "','" + txthousenumber.Text + "','" + txta_streetaddress.Text + "','" + ddlarea.SelectedValue + "','" + ddlpincode.SelectedValue + "','" + txtcity.Text + "','" + ddlstate.SelectedValue + "','" + ddl_country.SelectedValue + "','" + txtphouse_number.Text + "','" + txtpstreetaddress.Text + "','" + ddlPpincode.SelectedValue + "','" + ddlParea.SelectedValue + "','" + txtpcity.Text + "','" + ddlPstate.SelectedValue + "','" + ddlpcountry.SelectedValue + "','" + txtpu_id.Text + "','" + ddlprelationship.SelectedValue + "','" + txtnoofdependent.Text + "')"

        'ElseIf (rdbpermanentyes.Checked = True And rdbdeptyes.Checked = True) Then
        'with out permenanet address insert data'

        'insert_address = "insert into address values('" + Session("uniq id") + "','" + txthousenumber.Text + "','" + txta_streetaddress.Text + "','" + ddlarea.SelectedValue + "','" + ddlpincode.SelectedValue + "','" + txtcity.Text + "','" + ddlstate.SelectedValue + "','" + ddl_country.SelectedValue + "','" + phouse_numbers + "','" + pstreetaddress + "','" + Ppincode + "','" + Parea + "','" + Pcity + "','" + Pstate + "','" + pcountry + "','" + txtpu_id.Text + "','" + ddlprelationship.SelectedValue + "','" + txtnoofdependent.Text + "')"

        ' ElseIf (rdbpermanentno.Checked = True And rdbdeptno.Checked = True) Then

        'address and permenant address insert

        'insert_address = "insert into address values('" + Session("uniq id") + "','" + txthousenumber.Text + "','" + txta_streetaddress.Text + "','" + ddlarea.SelectedValue + "','" + ddlpincode.SelectedValue + "','" + txtcity.Text + "','" + ddlstate.SelectedValue + "','" + ddl_country.SelectedValue + "','" + txtphouse_number.Text + "','" + txtpstreetaddress.Text + "','" + ddlPpincode.SelectedValue + "','" + ddlParea.SelectedValue + "','" + txtpcity.Text + "','" + ddlPstate.SelectedValue + "','" + ddlpcountry.SelectedValue + "','" + puid + "','" + relationship + "','" + txtnoofdependent.Text + "')"
        'Else
        ' only address insert
        'insert_address = "insert into address values('" + Session("uniq id") + "','" + txthousenumber.Text + "','" + txta_streetaddress.Text + "','" + ddlarea.SelectedValue + "','" + ddlpincode.SelectedValue + "','" + txtcity.Text + "','" + ddlstate.SelectedValue + "','" + ddl_country.SelectedValue + "','" + phouse_numbers + "','" + pstreetaddress + "','" + Ppincode + "','" + Parea + "','" + Pcity + "','" + Pstate + "','" + pcountry + "','" + puid + "','" + relationship + "','" + txtnoofdependent.Text + "')"

        '       End If
        cmd_address = New SqlCommand("address_table", con.cn)
        cmd_address.Parameters.AddWithValue("@patient_id", Session("uniq id"))
        cmd_address.CommandType = CommandType.StoredProcedure
        cmd_address.Parameters.AddWithValue("@house_number", txthousenumber.Text)
        cmd_address.Parameters.AddWithValue("@street_address", txta_streetaddress.Text)
        cmd_address.Parameters.AddWithValue("@area", ddlarea.SelectedValue)
        cmd_address.Parameters.AddWithValue("@pincode", ddlpincode.SelectedValue)
        cmd_address.Parameters.AddWithValue("@city", txtcity.Text)
        cmd_address.Parameters.AddWithValue("@state", ddlstate.SelectedValue)
        cmd_address.Parameters.AddWithValue("@country", ddl_country.SelectedValue)
        cmd_address.Parameters.AddWithValue("@per_house_number", txtphouse_number.Text)
        cmd_address.Parameters.AddWithValue("@per_street_address", txtpstreetaddress.Text)
        cmd_address.Parameters.AddWithValue("@per_pincode", ddlPpincode.SelectedValue)
        cmd_address.Parameters.AddWithValue("@per_area", ddlParea.SelectedValue)
        cmd_address.Parameters.AddWithValue("@per_city", txtpcity.Text)
        cmd_address.Parameters.AddWithValue("@per_state", ddlPstate.SelectedValue)
        cmd_address.Parameters.AddWithValue("@per_country", ddlpcountry.SelectedValue)
        cmd_address.Parameters.AddWithValue("@per_uid", txtpu_id.Text)
        cmd_address.Parameters.AddWithValue("@per_relationship", ddlprelationship.SelectedValue)
        cmd_address.Parameters.AddWithValue("@per_no_of_dependent", txtnoofdependent.Text)
        '=================================================================================================================
        'USER NAME PASSWORD
        '=================================================================================================================
        Dim password As String
        Dim user_type As String
        user_type = "Member"
        password = encrypt(txtpassword.Text)
        insert_password = "insert into Login_password values ('" + user_type + "','" + Session("uniq id") + "','" + password + "')"
        '=================================================================================================================
        If (Chkaggrement.Checked = True) Then

            Try
                cmd_password = New SqlCommand(insert_password, con.cn)
                cmd.ExecuteNonQuery()
                cmd_address.ExecuteNonQuery()

                cmd_password.ExecuteNonQuery()

                send_mail()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
                Response.Write("<script language=javascript>alert('Now You Can Admit The Patient ')</script>")
               
                '  ClientScript.RegisterStartupScript([GetType](), "CloseScript", " window.close();", True)

            Catch ex As Exception
                MsgBox("Record not save")
            End Try

        Else
            MsgBox("Please Check the Terms And Condition")
        End If
        con.cn.Close()

    End Sub


    Protected Sub ddlmarital_status_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlmarital_status.SelectedIndexChanged
        If (ddlmarital_status.SelectedValue = "Married") Then
            Panel_of_husbandname.Visible = True
        Else
            Panel_of_husbandname.Visible = False
        End If
    End Sub

   
    Protected Sub rdbpermanentyes_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbpermanentyes.CheckedChanged
        Panel_of_per_add.Visible = False

    End Sub

    Protected Sub rdbpermanentno_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbpermanentno.CheckedChanged
        Panel_of_per_add.Visible = True
    End Sub

    Protected Sub rdbdeptyes_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbdeptyes.CheckedChanged
        Panel1_dependent.Visible = True

    End Sub

    Protected Sub rdbdeptno_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbdeptno.CheckedChanged
        Panel1_dependent.Visible = False

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
        Str = "select count(*) from personal_detail"
        cmd = New SqlCommand(str, con.cn)

        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1
        count = cmd.ExecuteScalar() + 1

        Session("uniq id") = "Member00" + count
        con.cn.Close()
    End Sub
    Sub send_mail()
        Dim mail_to As String = txtemail.Text
        Dim mail_from As String = "help4insure@gmail.com"
        Dim mail As System.Net.Mail.MailMessage = New MailMessage()
        'initiate
        mail.[To].Add(mail_to)
        mail.From = New MailAddress(mail_from, "Registration from", System.Text.Encoding.UTF8)
        mail.Subject = "User id"
        mail.SubjectEncoding = System.Text.Encoding.UTF8
        mail.Body = "Thaks for Registration " & vbNewLine & "User Id Is = " & Session("uniq id") & " Password is = " & txtpassword.Text & ""
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
    
    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        ClientScript.RegisterStartupScript([GetType](), "CloseScript", " window.close();", True)
    End Sub

    
End Class