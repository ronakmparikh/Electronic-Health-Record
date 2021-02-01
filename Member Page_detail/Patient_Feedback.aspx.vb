Imports System.Data.SqlClient

Partial Class Member_Page_detail_Patient_Feedback
    Inherits System.Web.UI.Page
    Dim insert As String
    Dim cmd As New SqlCommand
    Protected Sub btnsend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsend.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        insert = "insert into Feedback values('" + Session("member_user_id") + "','" + subject.Text + "','" + txtmessage.Text + "')"
        Try
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")

        End Try
        con.cn.Close()

    End Sub
End Class
