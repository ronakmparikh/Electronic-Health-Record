Imports System.Data.SqlClient
Imports System.Data
Partial Class Default8
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim insert, delete, search, upd As String

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into deposit values('" + Session("provide_org_user_id") + "','" + txtcode.Text + "','" + ddlroom_class.SelectedValue + "','" + ddlroom_type.SelectedValue + "'," + txtrate.Text + ")"

            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()


            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            ddlroom_class.SelectedValue = ""
            ddlroom_type.SelectedValue = ""
            txtrate.Text = ""
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
            delete = "delete from deposit where code='" + txtcode.Text + "'"

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
            search = "select * from deposit where code= '" + txtcode.Text + "' "
            da = New SqlDataAdapter(search, con.cn)
            da.Fill(ds, "deposit")
            txtcode.Text = ds.Tables(0).Rows(0)(1)
            ddlroom_class.SelectedValue = ds.Tables(0).Rows(0)(2)
            ddlroom_type.SelectedValue = ds.Tables(0).Rows(0)(3)
            txtrate.Text = ds.Tables(0).Rows(0)(4)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Record is not in Database')</script>")
        End Try

    End Sub

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        Dim con As New Connection()
        con.Connection()

        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        Dim cmd2 As New SqlCommand
        con.cn.Open()

        upd = "update deposit set code='" + txtcode.Text + "', room_type= '" + ddlroom_type.SelectedValue + "', class='" + ddlroom_class.SelectedValue + "', charges=" + txtrate.Text + " where room_type= '" + ddlroom_type.SelectedValue + "'"
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
        txtcode.Text = ""
        ddlroom_class.SelectedValue = "sewlected"
        ddlroom_type.SelectedValue = "sewlected"
        txtrate.Text = ""
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
        show = "select * from deposit"
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub
End Class