Imports System.Data.SqlClient
Imports System.Data
Partial Class Member_Page
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim ds As dataset
    Dim str, patient_id As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Session("Member_user_id") = "Sagar"
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        str = "select * from personal_detail where patient_id ='" + Session("member_user_id") + "' "
        Try
            da = New SqlDataAdapter(str, con.cn)
            ds = New DataSet()
            da.Fill(ds, "personal_detail")
            patient_id = ds.Tables("personal_detail").Rows(0)(1)
            lblusername.Text = patient_id


        Catch ex As Exception

            'Response.Write("<script>alert('" + Server.HtmlEncode(ex.Message) + "')</script>")
            '            Response.Write("<script language=javascript>alert('You Are Invalid User')</script>")

        End Try

        con.cn.Close()

        'lblusername.Text = Session("Member_user_id")
    End Sub


    Protected Sub lkprofile_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lkprofile.Click

    End Sub
End Class
