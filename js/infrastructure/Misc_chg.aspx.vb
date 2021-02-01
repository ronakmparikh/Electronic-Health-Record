Imports System.Data.SqlClient
Imports System.Data
Partial Class infrastructure_Misc_chg
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

            insert = "insert into test_form values('" + Session("provide_org_user_id") + "','" + Session("recpt_no") + "','" + txtdate.Text + "','" + ddlpatientid.SelectedValue + "','" + ddldoctorid.SelectedValue + "','" + Label8.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "'," + DropDownList3.SelectedValue + ")"

            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()


            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            con.cn.Close()
            txtreciptno.Text = ""
            txtdate.Text = ""
            'ddlpatientid.SelectedValue = ""
            ' ddldoctorid.SelectedValue = ""
            'ddltest_type.SelectedValue = ""
            'ddlperticular.SelectedValue = ""
            'ddlrate.SelectedValue = ""

        Catch ex As Exception

            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
        End Try
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into test_form values('" + Session("provide_org_user_id") + "','" + Session("recpt_no") + "','" + txtdate.Text + "','" + ddlpatientid.SelectedValue + "','" + ddldoctorid.SelectedValue + "','" + Label9.Text + "','" + DropDownList4.SelectedValue + "','" + DropDownList5.SelectedValue + "'," + DropDownList6.SelectedValue + ")"

            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()


            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            con.cn.Close()
            txtreciptno.Text = ""
            txtdate.Text = ""
            'ddlpatientid.SelectedValue = ""
            ' ddldoctorid.SelectedValue = ""
            'ddltest_type.SelectedValue = ""
            'ddlperticular.SelectedValue = ""
            'ddlrate.SelectedValue = ""

        Catch ex As Exception

            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
        End Try
    End Sub
    
End Class
