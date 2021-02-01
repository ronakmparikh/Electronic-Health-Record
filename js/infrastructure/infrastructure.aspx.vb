Imports System.Data.SqlClient
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim delete As String
    Dim cmd As SqlCommand
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim sts As String
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Session("provide_org_user_id") = "Hospital0010"
        Dim cmd As New SqlCommand("adddep_acco", con.cn)
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@Hospital_id", Session("provide_org_user_id"))
        cmd.Parameters.AddWithValue("@Department", ddldepartment.SelectedValue)
        cmd.Parameters.AddWithValue("@Type", ddltype.SelectedValue)
        cmd.Parameters.AddWithValue("@Number_of_room", txtroom.Text)
        cmd.Parameters.AddWithValue("@Number_of_bed", txtbed.Text)
        'txtpba.Text = "(CInt(txtroom.Text) * CInt(txtarea.Text) / CInt(txtbed.Text))"
        cmd.Parameters.AddWithValue("@Per_bed_area", txtpba.Text)
        cmd.Parameters.AddWithValue("@Area", txtarea.Text)
        cmd.Parameters.AddWithValue("@Opd", ddlopd.SelectedValue)


        sts = cmd.ExecuteNonQuery()
        con.cn.Close()

        If sts >= 0 Then
            Page.ClientScript.RegisterStartupScript(Page.GetType(), DateTime.Now.ToFileTime().ToString(), "alert('Record Is Inserted successfully');", True)
            MsgBox("Record is inserted", MsgBoxStyle.OkOnly, "Confirmation")
            'Response.Redirect("casedetail1.aspx")

            shows()
        Else
            Page.ClientScript.RegisterStartupScript(Page.GetType(), DateTime.Now.ToFileTime().ToString(), "alert('Record Is Not Inserted');", True)
            'Response.Redirect("casedetail1.aspx")
        End If

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
        show = "select * from dep_acco"
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub


    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            delete = "delete from dep_acco where department='" + ddldepartment.SelectedValue + "'"

            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub
End Class
