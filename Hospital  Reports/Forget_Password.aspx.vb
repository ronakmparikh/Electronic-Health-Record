Imports System.Net.Mail
Imports System.Data.SqlClient
Imports System.Data
Partial Class Forget_Password
    Inherits System.Web.UI.Page
    Dim forget As String
    Dim ds As DataSet
    Dim da As SqlDataAdapter
    Dim pass, userid, email As String


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        If (ddluser_type.SelectedValue = "Member") Then
            forget = "select * from personal_detail where patient_id='" + txtuserid.Text + "'"
            Try
                da = New SqlDataAdapter(forget, con.cn)
                ds = New DataSet()
                da.Fill(ds, "personal_detail")

                Session("email") = ds.Tables("personal_detail").Rows(0)(23)

            Catch ex As Exception

                'Response.Write("<script>alert('" + Server.HtmlEncode(ex.Message) + "')</script>")
                Response.Write("<script language=javascript>alert('your user id is invalid')</script>")

            End Try
        ElseIf (ddluser_type.SelectedValue = "Provider Organisation") Then
            con.coni.Open()

            forget = "select * from Registration where hospital_id='" + txtuserid.Text + "'"
            Try
                da = New SqlDataAdapter(forget, con.coni)
                ds = New DataSet()
                da.Fill(ds, "Registration")

                Session("email") = ds.Tables("Registration").Rows(0)(15)

            Catch ex As Exception

                'Response.Write("<script>alert('" + Server.HtmlEncode(ex.Message) + "')</script>")
                Response.Write("<script language=javascript>alert('your user id is invalid')</script>")

            End Try
            con.coni.Close()

        End If

        forget = "select * from Login_password where user_id='" + txtuserid.Text + "'"
        Try
            da = New SqlDataAdapter(forget, con.cn)
            ds = New DataSet()
            da.Fill(ds, "Login_password")

            pass = ds.Tables("Login_password").Rows(0)(2)
            Session("password") = decrypt(pass)
            send_mail()

        Catch ex As Exception

            'Response.Write("<script>alert('" + Server.HtmlEncode(ex.Message) + "')</script>")
            Response.Write("<script language=javascript>alert('your user id is invalid')</script>")

        End Try
        con.cn.Close()


    End Sub

    Sub send_mail()
        Dim mail_to As String = Session("email")
        Dim mail_from As String = "baku4444@gmail.com"
        Dim mail As System.Net.Mail.MailMessage = New MailMessage()
        'initiate
        mail.[To].Add(mail_to)
        mail.From = New MailAddress(mail_from, "Registration from", System.Text.Encoding.UTF8)
        mail.Subject = "User id"
        mail.SubjectEncoding = System.Text.Encoding.UTF8
        mail.Body = "Thaks for Registration " & vbNewLine & "User Id Is =" & txtuserid.Text & "Password is" & Session("password") & ""
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

End Class
