Imports System.Data.SqlClient
Imports System.Data
Partial Class Member_Page_detail_Mestrual_History
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim insert As String


    Protected Sub btnadddelivery_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadddelivery.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()


        ' Session("member_user_id") = "Member001"


        insert = "insert into Menstrual_History values('" + Session("member_user_id") + "'," + txtmenstrual_date.Text + "," + txtlast_m_period_date.Text + "," + txtduration.Text + "," + txtbloodflow.Text + "," + txtregular_cycle.Text + ",'" + ddlbirthcontrol.SelectedValue + "')"


        Try
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")

        End Try

        con.cn.Close()

    End Sub

End Class
