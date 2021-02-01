Imports System.Data.SqlClient
Imports System.Data

Partial Class Chemothrapy_Charge
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Dim ds As New DataSet
    Dim da As New SqlDataAdapter
    Dim insert, upd, del, search As String


  

    Protected Sub btninsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninsert.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into Chemothrapy_Charge values('" + Session("provide_org_user_id") + "','" + txtcode.Text + "',' " + txtservices.Text + " ','" + ddlroomtype.SelectedValue + "'," + txtrate.Text + ")"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully inserted ')</script>")

            txtcode.Text = ""
            txtservices.Text = ""
            ddlroomtype.SelectedValue = ""
            txtrate.Text = ""
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Record not inserted ')</script>")
        End Try

        con.cn.Close()

    End Sub

    Protected Sub btninsert2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            search = "select * from Chemothrapy_Charge where Code = '" + txtcode.Text + "'"
            da = New SqlDataAdapter(search, con.cn)
            ds = New DataSet()
            da.Fill(ds, "Chemothrapy_Charge")

            txtcode.Text = ds.Tables(0).Rows(0)(1)
            txtservices.Text = ds.Tables(0).Rows(0)(2)
            ddlroomtype.SelectedValue = ds.Tables(0).Rows(0)(3)
            txtrate.Text = ds.Tables(0).Rows(0)(4)



        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Search is not Found')</script>")
        End Try

        con.cn.Close()

    End Sub

    Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            del = "delete from Staff_Master where Code='" + txtcode.Text + " '"
            cmd = New SqlCommand(del, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")

            shows()
        Catch ex As Exception

            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")

        End Try
        con.cn.Close()

    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        Try

            upd = "update Chemothrapy_Charge set Code ='" + txtcode.Text + "', Services =' " + txtservices.Text + " ',Room_Type = '" + ddlroomtype.SelectedValue + "', Rate = " + txtrate.Text + " where Code= '" + txtcode.Text + "'"
            cmd = New SqlCommand(upd, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Updated')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Updated ')</script>")

            txtcode.Text = ""
            txtservices.Text = ""
            ddlroomtype.SelectedValue = ""
            txtrate.Text = ""


        End Try

        con.cn.Close()

    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click

        txtcode.Text = ""
        txtservices.Text = ""
        ddlroomtype.SelectedValue = ""
        txtrate.Text = ""

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
        show = "select * from Chemothrapy_Charge"
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub
End Class
