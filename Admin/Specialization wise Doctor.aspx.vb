
Partial Class Admin_Specialization_wise_Doctor
    Inherits System.Web.UI.Page

    Protected Sub ddlspesalist_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlspesalist.SelectedIndexChanged
        Session("specialization") = ddlspesalist.SelectedValue
    End Sub
End Class
