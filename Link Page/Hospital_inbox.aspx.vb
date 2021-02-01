Imports System.Data.SqlClient
Imports System.Data

Partial Class Link_Page_Hospital_inbox
    Inherits System.Web.UI.Page
    Dim insert As String
    Dim cmd As SqlCommand

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        txtto.Text = GridView1.SelectedRow.Cells(1).Text
        txtsubject.Text = GridView1.SelectedRow.Cells(2).Text
        txtmessage.Text = GridView1.SelectedRow.Cells(3).Text
    End Sub

    Protected Sub btnsend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsend.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into Mail_Box values('" + txtto.Text + "','" + Session("provide_indi_user_id") + "','" + txtsubject.Text + "','" + txtmessage.Text + "','" + Today() + "') "
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Clear()
            Response.Write("<script language=javascript>alert('Send Succesfully')</script>")

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('send not Succesfully')</script>")

        End Try

        con.cn.Close()

    End Sub
    Sub clear()
        txtto.Text = ""
        txtsubject.Text = ""
        txtmessage.Text = ""
    End Sub
End Class
