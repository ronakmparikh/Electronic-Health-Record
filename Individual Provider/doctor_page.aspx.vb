Imports System.Data.SqlClient
Imports System.Data
Partial Class doctor_page
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim ds As DataSet
    Dim str, patient_id As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        str = "select * from doctor_personal_detail where doctor_id ='" + Session("provide_indi_user_id") + "' "
        ' Try
        da = New SqlDataAdapter(str, con.cn)
        ds = New DataSet()
        da.Fill(ds, "doctor_personal_detail")
        patient_id = ds.Tables("doctor_personal_detail").Rows(0)(1)
        lblusername.Text = patient_id


        'Catch ex As Exception

        'Response.Write("<script>alert('" + Server.HtmlEncode(ex.Message) + "')</script>")
        '            Response.Write("<script language=javascript>alert('You Are Invalid User')</script>")

        'End Try

        con.cn.Close()

        'lblusername.Text = Session("Member_user_id")
    End Sub
End Class
