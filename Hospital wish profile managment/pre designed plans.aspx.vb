Imports System.Data.SqlClient
Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim insert, delete, search, upd As String

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into pre_plans values('" + Session("provide_org_user_id") + "','" + txtcode.Text + "','" + txtparticular.Text + "'," + txtrate.Text + ")"

            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()


            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            txtcode.Text = ""
            txtparticular.Text = ""
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
            delete = "delete from pre_plans where code='" + txtcode.Text + "'"

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
            search = "select * from pre_plans where code= '" + txtcode.Text + "' "
            da = New SqlDataAdapter(search, con.cn)
            da.Fill(ds, "physio")
            txtcode.Text = ds.Tables(0).Rows(0)(1)
            txtparticular.Text = ds.Tables(0).Rows(0)(2)
            txtrate.Text = ds.Tables(0).Rows(0)(3)

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

        upd = "update pre_plans set Code= '" + txtcode.Text + "',Particularc='" + txtparticular.Text + "',Rate=" + txtrate.Text + " where code= '" + txtcode.Text + "'"
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
        txtparticular.Text = ""
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
        show = "select * from pre_plans where Hospital_id = '" + Session("provide_org_user_id") + "'"
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub

End Class