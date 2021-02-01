Imports System.Data.SqlClient
Imports System.Data
Partial Class Member_Page_detail_Account_informtion
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Dim insert As String

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        insert = "insert into Accout_info values ('" + Session("member_user_id") + "','" + ddlsub.SelectedValue + "','" + txtcheque.Text + "','" + txtac_holdername.Text + "','" + txtifsccode.Text + "','" + txtbranch.Text + "','" + txtamt.Text + "','" + txtdate.Text + "')"

        Try
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
        End Try

        con.cn.Close()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("member_user_id") = "Member001"
    End Sub
End Class
