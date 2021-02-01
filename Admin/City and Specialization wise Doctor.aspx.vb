
Partial Class Admin_City_and_Specialization_wise_Doctor
    Inherits System.Web.UI.Page

    Protected Sub ddlarea_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlcity.SelectedIndexChanged
        Session("city") = ddlcity.SelectedValue

    End Sub

    Protected Sub ddlspesalist_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlspesalisation.SelectedIndexChanged
        Session("specialisation") = ddlspesalisation.SelectedValue
    End Sub
End Class
