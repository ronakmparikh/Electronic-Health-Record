
Partial Class Admin_illness_report
    Inherits System.Web.UI.Page

    Protected Sub ddlillness_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlillness.SelectedIndexChanged
        Session("illness") = ddlillness.SelectedValue
    End Sub
End Class
