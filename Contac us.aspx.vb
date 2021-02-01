Imports System.Data.SqlClient
Imports System.Data
Partial Class Home_Page
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        member()
        hospital()
        '   lblmember.Text = Session("member")
        '  lblhospital.Text = Session("hospital")

        Response.AddHeader("REFRESH", "500;URL=Home Page.aspx")

        ' Response.Redirect(Request.RawUrl)
    End Sub

    Sub member()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim str As String
        Dim count As String
        str = "select count(*) from personal_detail"
        cmd = New SqlCommand(str, con.cn)

        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1
        count = cmd.ExecuteScalar() + 0

        Session("member") = count
        con.cn.Close()
    End Sub
    Sub hospital()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim str As String
        Dim count As String
        str = "select count(*) from Registration"
        cmd = New SqlCommand(str, con.cn)

        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1
        count = cmd.ExecuteScalar() + 0

        Session("hospital") = count
        con.cn.Close()
    End Sub

End Class
