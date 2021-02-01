
Partial Class login
    Inherits System.Web.UI.MasterPage

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbllogout.Click
        Dim popup As String = "<script language='javascript'>" & "window.open('Change password.aspx','CustomPopUp', " & "'fullscreen=no,height=800,width=1500,top=250,left=250,location=0,directories=0,status=no,scrollbars=yes, dependant = no, alwaysRaised = yes, menubar=no,resizable=no')" & "</script>"
        ScriptManager.RegisterClientScriptBlock(Me.Page, Me.[GetType](), "PopupScript", popup, False)

    End Sub

    Protected Sub LinkButton12_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbllogout.Click
        Session.Abandon()
        Session.Clear()
        Response.Redirect("~/Home Page.aspx")
    End Sub

    Protected Sub lkchangepassowd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lkchangepassowd.Click
        Dim popup As String = "<script language='javascript'>" & "window.open('Change password.aspx','CustomPopUp', " & "'fullscreen=no,height=150,width=300,top=250,left=250,location=0,directories=0,status=no,scrollbars=yes, dependant = no, alwaysRaised = yes, menubar=no,resizable=no')" & "</script>"
        ScriptManager.RegisterClientScriptBlock(Me.Page, Me.[GetType](), "PopupScript", popup, False)

    End Sub
End Class

