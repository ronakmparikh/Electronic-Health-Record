
Partial Class Admin_Area_and_Specialisation_wise_Hospital
    Inherits System.Web.UI.Page

    Protected Sub ddlarea_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlarea.SelectedIndexChanged
        Session("area") = ddlarea.SelectedValue
    End Sub

    Protected Sub ddlspesalist_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlspesalist.SelectedIndexChanged
        Session("specialization") = ddlspesalist.SelectedValue
    End Sub
End Class
