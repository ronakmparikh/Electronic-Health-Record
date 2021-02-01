Imports System.Data.SqlClient
Imports System.Data
Partial Class infrastructure_Hospital_bill
    Inherits System.Web.UI.Page
    Dim culc As String
    Dim cmd As SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        shows()
        '        txtbil l_total.Text = a

    End Sub


    Dim show As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    '==============================Show Detail========================================
    Sub shows()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from test_form where patient_id='" + ddlpatientid.SelectedValue + "' AND Hospital_id='" + Session("provide_org_user_id") + "' "
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub

    Protected Sub Submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit.Click

    End Sub

    Protected Sub txtbill_total_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtbill_total.TextChanged

    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim dum As Integer
        Dim sum As Integer = 0
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        culc = "select rate from test_form where Hospital_id='" + Session("provide_org_user_id") + "' and patient_id='" + ddlpatientid.SelectedValue + "'"
        da = New SqlDataAdapter(culc, con.cn)
        ds = New DataSet()
        da.Fill(ds, "test_form")

        dum = ds.Tables(0).Rows(0)(8)
        sum = CInt(sum) + CInt(dum)
        txtbill_total.Text = sum
        con.cn.Close()

    End Sub
End Class
