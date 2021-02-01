Imports System.Data.SqlClient
Imports System.Data
Partial Class Default14
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim insert, delete, search, upd As String
    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into procedure_charges values('" + Session("provide_org_user_id") + "','" + txtservice1.Text + "'," + txtcharges.Text + ",'" + txtservice2.Text + "','" + ddlclass.SelectedValue + "', " + txtrate.Text + ", '" + txtservice3.Text + "','" + ddlclass2.SelectedValue + "', " + txtrate2.Text + ", '" + txtservice4.Text + "', " + txtrate3.Text + ")"

            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()


            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            txtservice1.Text = ""
            txtservice1.Text = ""
            txtcharges.Text = ""
            txtservice2.Text = ""
            ddlclass.SelectedValue = ""
            txtrate.Text = ""
            txtservice3.Text = ""
            ddlclass2.SelectedValue = ""
            txtrate2.Text = ""
            txtservice4.Text = ""
            txtrate3.Text = ""
            shows()
        Catch ex As Exception

            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub

    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            delete = "delete from procedure_charges where genral_srvice='" + txtservice1.Text + "'"

            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub

    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button10.Click
        Dim con As New Connection()
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        con.Connection()
        con.cn.Open()
        Try
            search = "select * from procedure_charges where genral_srvice= '" + txtservice1.Text + "'"
            da = New SqlDataAdapter(search, con.cn)
            da.Fill(ds, "procedure_charges")
            txtservice1.Text = ds.Tables(0).Rows(0)(1)
            txtservice1.Text = ds.Tables(0).Rows(0)(2)
            txtcharges.Text = ds.Tables(0).Rows(0)(3)
            txtservice2.Text = ds.Tables(0).Rows(0)(4)
            ddlclass.SelectedValue = ds.Tables(0).Rows(0)(5)
            txtrate.Text = ds.Tables(0).Rows(0)(6)
            txtservice3.Text = ds.Tables(0).Rows(0)(7)
            ddlclass2.SelectedValue = ds.Tables(0).Rows(0)(7)
            txtrate2.Text = ds.Tables(0).Rows(0)(9)
            txtservice4.Text = ds.Tables(0).Rows(0)(10)
            txtrate3.Text = ds.Tables(0).Rows(0)(11)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Record is not in Database ')</script>")
        End Try

    End Sub

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        Dim con As New Connection()
        con.Connection()

        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        Dim cmd2 As New SqlCommand
        con.cn.Open()

        upd = "update procedure_charges set genral_srvice= '" + txtservice1.Text + "',charges=" + txtcharges.Text + ",spe_service='" + txtservice2.Text + "',class='" + ddlclass.SelectedValue + "',rate=" + txtrate.Text + ", dre_service='" + txtservice3.Text + "',dre_class='" + ddlclass2.SelectedValue + "',dre_rate=" + txtrate2.Text + ",pain_service='" + txtservice4.Text + "' where genral_srvice= '" + txtservice1.Text + "'"
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

    Protected Sub Button11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button11.Click
        txtservice1.Text = " "
        txtservice1.Text = " "
        txtcharges.Text = " "
        txtservice2.Text = " "
        ddlclass.SelectedValue = " "
        txtrate.Text = " "
        txtservice3.Text = " "
        ddlclass2.SelectedValue = " "
        txtrate2.Text = " "
        txtservice4.Text = " "
        txtrate3.Text = " "
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        shows()
    End Sub


    Dim show As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    '==============================Show Detail========================================
    Sub shows()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from procedure_charges where Hospital_id= '" + Session("provide_org_user_id") + "'"
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub

End Class