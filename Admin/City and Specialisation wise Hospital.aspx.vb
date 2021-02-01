
Partial Class Admin_City_and_Specialisation_wise_Hospital
    Inherits System.Web.UI.Page

    Protected Sub ddlspesalisation_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlspesalisation.SelectedIndexChanged
        Session("specialization") = ddlspesalisation.SelectedValue

    End Sub

    Protected Sub ddlcity_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlcity.SelectedIndexChanged
        Session("city") = ddlcity.SelectedValue
    End Sub
End Class
