Imports System.Data.SqlClient
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim ds As New DataSet

    Dim da As New SqlDataAdapter
    Dim cmd As SqlCommand
    Dim insert, upd, delete, search As String


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        If ddlregistration_qcc.SelectedValue = "Other" Then

            Try

                insert = "insert into Regiandqcc values('" + Session("provide_org_user_id") + "','" + txtother.Text + "','" + txtauthority.Text + "','" + txtregistration_number.Text + "'," + txtvalid_from.Text + "," + txtvalid_up_to.Text + ")"
                cmd = New SqlCommand(insert, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")


                txtauthority.Text = ""
                txtregistration_number.Text = ""
                txtvalid_from.Text = ""
                txtvalid_up_to.Text = ""
                shows()
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('not success ')</script>")
            End Try


            Try

                insert = "insert into rqcc_list values('" + txtother.Text + "')"
                cmd = New SqlCommand(insert, con.cn)
                cmd.ExecuteNonQuery()

            Catch ex As Exception
                Response.Write("<script language=javascript>alert('not success ')</script>")
            End Try

        Else
            Try

                insert = "insert into Regiandqcc values('" + Session("provide_org_user_id") + "','" + ddlregistration_qcc.SelectedValue + "','" + txtauthority.Text + "','" + txtregistration_number.Text + "'," + txtvalid_from.Text + "," + txtvalid_up_to.Text + ")"
                cmd = New SqlCommand(insert, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")

                ddlregistration_qcc.SelectedValue = ""
                txtauthority.Text = ""
                txtregistration_number.Text = ""
                txtvalid_from.Text = ""
                txtvalid_up_to.Text = ""
                shows()
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('not success ')</script>")
            End Try
        End If



 
        con.cn.Close()

    End Sub

    

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Dim con As New Connection()
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet


        con.Connection()
        con.cn.Open()
        Try
            search = "select * from Regiandqcc where Registration_qcc= '" + ddlregistration_qcc.SelectedValue + "' "
            da = New SqlDataAdapter(search, con.cn)
            da.Fill(ds, "Regiandqcc")
            ddlregistration_qcc.SelectedValue = ds.Tables(0).Rows(0)(1)
            txtauthority.Text = ds.Tables(0).Rows(0)(2)
            txtregistration_number.Text = ds.Tables(0).Rows(0)(3)
            txtvalid_from.Text = ds.Tables(0).Rows(0)(4)
            txtvalid_up_to.Text = ds.Tables(0).Rows(0)(5)

        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Record is Not in Database ')</script>")
        End Try
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        shows()
    End Sub


    Dim show As String

    '==============================Show Detail========================================
    Sub shows()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from Regiandqcc where Hospital_id= '" + Session("provide_org_user_id") + "'"
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Dim con As New Connection()
        con.Connection()

        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        Dim cmd2 As New SqlCommand
        con.cn.Open()

        upd = "update Regiandqcc set Registration_qcc= '" + ddlregistration_qcc.SelectedValue + "',Authorty='" + txtauthority.Text + "',Registration_number='" + txtregistration_number.Text + "',Valid_from=" + txtvalid_from.Text + ",Valid_up_to=" + txtvalid_up_to.Text + " where Registration_qcc= '" + ddlregistration_qcc.SelectedValue + "'"
        cmd2 = New SqlCommand(upd, con.cn)

        cmd2.ExecuteNonQuery()

        Try
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub

    Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            delete = "delete from Regiandqcc where Registration_qcc='" + ddlregistration_qcc.SelectedValue + "'"

            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub

    Protected Sub ddlregistration_qcc_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlregistration_qcc.SelectedIndexChanged
        If ddlregistration_qcc.SelectedValue = "Other" Then

            txtother.Enabled = True
            Label39.Enabled = True
        Else

            txtother.Enabled = False
            Label39.Enabled = False
        End If
    End Sub
End Class
