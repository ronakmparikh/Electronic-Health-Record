Imports System.Data.SqlClient
Imports System.Data
Partial Class Doctor_change_password
    Inherits System.Web.UI.Page
    Dim upd As String
    Dim cmd As SqlCommand
    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            upd = "update Login_password set password= '" + encrypt(txtpassword.Text) + "' where user_id='" + Session("provide_indi_user_id") + "'  "
            cmd = New SqlCommand(upd, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert(' Password Update Succesfully')</script>")

        Catch ex As Exception

            Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

        End Try
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
End Class
