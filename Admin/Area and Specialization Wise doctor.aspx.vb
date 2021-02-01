
Partial Class Admin_Area_Wise_doctor
    Inherits System.Web.UI.Page

 
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlarea.SelectedIndexChanged
        Session("area") = ddlarea.SelectedValue
    End Sub

    Protected Sub ddlspesalist_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlspesalist.SelectedIndexChanged
        Session("specilisation") = ddlspesalist.SelectedValue
    End Sub
End Class
