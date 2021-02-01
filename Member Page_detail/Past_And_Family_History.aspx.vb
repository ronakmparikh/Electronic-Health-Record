Imports System.Data.SqlClient
Imports System.Data
Partial Class Past_And_Family_History
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim insert, insert1, show, sho As String

    Protected Sub btnaddpast_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddpast.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        cmd = New SqlCommand("past_history_insert", con.cn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@patient_id", Session("member_user_id"))
        cmd.Parameters.AddWithValue("@history", ddlhistory.SelectedValue)
        cmd.Parameters.AddWithValue("@date", txtpast_history_date.Text)
    
        cmd.Parameters.AddWithValue("@medicine_type", ddlmadicine.SelectedValue)
        Try
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            past()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Record Not Save ')</script>")
        End Try
        con.cn.Close()

    End Sub

    Protected Sub btnaddfamily_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddfamily.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()


        insert = "insert into family_history values(' " + Session("member_user_id") + " ',' " + ddlrelation.SelectedValue + " ',' " + ddlillness.SelectedValue + " ')"


        Try
            cmd = New SqlCommand(insert, con.cn)

            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            ' family()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Record Not Save ')</script>")
        End Try
        con.cn.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '  Session("member_user_id") = "Member001"
        past()
        '        family()

    End Sub

    Sub past()

        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from past_history where patient_id='" + Session("member_user_id") + "' "

        da = New SqlDataAdapter(show, con.cn)
        ds = New DataSet()

        da.Fill(ds)

        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

        con.cn.Close()

    End Sub
    ' Sub family()

    'Dim con As New Connection()
    '   con.Connection()
    '  con.cn.Open()
    ' show = "select * from Familys_history where patient_id='" + Session("member_user_id") + "'"

    '    da = New SqlDataAdapter(show, con.cn)
    '   ds = New DataSet()

    '  da.Fill(ds)

    ' GridView2.DataSource = ds.Tables(0)
    'GridView2.DataBind()

    'con.cn.Close()

    'End Sub

End Class
