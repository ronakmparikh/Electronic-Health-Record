
Partial Class infrastructure_hospital_page
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblusername.Text = Session("provide_org_user_id")
    End Sub
End Class
