Imports System.Data.SqlClient
Imports System.Data
Partial Class Member_Page_detail_view_personal_detail
    Inherits System.Web.UI.Page
    Dim insert As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New Connection()
        con.Connection()

        con.cn.Open()
        ' Session("member_user_id") = "Member006"
        insert = "Select * from personal_detail where patient_id= '" + Session("member_user_id") + "' "
        Try

            da = New SqlDataAdapter(insert, con.cn)
            ds = New DataSet()
            da.Fill(ds, "personal_detail")
            Session("iden") = ds.Tables("personal_detail").Rows(0)(24)
            Image3.ImageUrl = "~\photo and document\" & ds.Tables("personal_detail").Rows(0)(25)
            Session("photo") = ds.Tables("personal_detail").Rows(0)(25)
        Catch ex As Exception
            '  MsgBox("not success")
            con.cn.Close()

        End Try
    End Sub

    Protected Sub photo_download_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles photo_download.Click
        Dim photo As String
        photo = Session("photo")
        Response.AppendHeader("Content-Disposition", "attachment; filename= " & photo & "")

        Response.TransmitFile(Server.MapPath("~\photo and document\" & photo))

        Response.End()
    End Sub

    Protected Sub btn_download_identification_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_download_identification.Click
        Dim iden As String
        iden = Session("iden")
        Response.AppendHeader("Content-Disposition", "attachment; filename= " & iden & "")

        Response.TransmitFile(Server.MapPath("~\photo and document\" & iden))

        Response.End()
    End Sub
End Class
