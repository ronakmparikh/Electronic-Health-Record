Imports System.Data.SqlClient
Imports System.Data

Partial Class Individual_Provider_Priscription
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Dim fetch, insert As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet



    Protected Sub ddlpatient_id_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlpatient_id.SelectedIndexChanged
        Session("patient_id") = ddlpatient_id.SelectedValue
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            fetch = "select * from personal_detail where patient_id ='" + ddlpatient_id.SelectedValue + "'"
            da = New SqlDataAdapter(fetch, con.cn)
            ds = New DataSet()
            da.Fill(ds, "personal_detail")
            txtpatient_name.Text = ds.Tables(0).Rows(0)(1)
        Catch ex As Exception

        End Try
        
        con.cn.Close()

    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into Prescription values('" + Session("provide_indi_user_id") + "','" + ddlpatient_id.SelectedValue + "','" + txtdate.Text + "','" + txtsymptoms.Text + "','" + txtmedicine_name.Text + "','" + txtadvice.Text + "','" + ddllab_test.SelectedValue + "','" + txtlabadvice.Text + "') "
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Send Succesfully')</script>")
            clear()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('send not Succesfully')</script>")

        End Try
       
        con.cn.Close()

    End Sub
    Sub clear()
        txtadvice.Text = ""
        txtdate.Text = ""
        txtmedicine_name.Text = ""
        txtpatient_name.Text = ""
        txtsymptoms.Text = ""
        txtlabadvice.Text = ""
        ddllab_test.SelectedValue = "Select Test"

    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        clear()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '  Session("provide_indi_user_id") = "Doctor001"
        txtdate.Text = Today

    End Sub
End Class
