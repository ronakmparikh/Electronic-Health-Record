Imports System.Data.SqlClient
Imports System.Data
Partial Class Hospital_wish_profile_managment_ot_equipment
    Inherits System.Web.UI.Page

    Dim con As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim insert, delete, search, upd As String
    Dim show As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into otequipment_charges values('" + Session("provide_org_user_id") + "','" + txtcode.Text + "','" + txtparticular.Text + "'," + txtrate.Text + ")"

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

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim con As New Connection()
        con.Connection()

        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        Dim cmd2 As New SqlCommand
        con.cn.Open()

        upd = "update otequipment_charges set Code= '" + txtcode.Text + "',particular='" + txtparticular.Text + "',Rate=" + txtrate.Text + " where Code= '" + txtcode.Text + "'"
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

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            delete = "delete from otequipment_charges where Code='" + txtcode.Text + "'"

            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()

    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim con As New Connection()
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet


        con.Connection()
        con.cn.Open()
        Try
            search = "select * from otequipment_charges where Code= '" + txtcode.Text + "' "
            da = New SqlDataAdapter(search, con.cn)
            da.Fill(ds, "otequipment_charges")
            txtcode.Text = ds.Tables(0).Rows(0)(1)
            txtparticular.Text = ds.Tables(0).Rows(0)(2)
            txtrate.Text = ds.Tables(0).Rows(0)(3)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Record is Not in Database ')</script>")
        End Try
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        txtcode.Text = ""
        txtparticular.Text = ""
        txtrate.Text = ""
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        shows()
    End Sub


    '==============================Show Detail========================================
    Sub shows()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from otequipment_charges where Hospital_id = '" + Session("provide_org_user_id") + "'"
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub

End Class
