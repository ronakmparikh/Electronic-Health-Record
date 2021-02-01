Imports System.Data.SqlClient
Imports System.Data
Partial Class Doctor_login_page
    Inherits System.Web.UI.MasterPage
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim ds As DataSet
    Dim str, patient_id As String
    Protected Sub lbllogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbllogout.Click
        Session.Abandon()
        Session.Clear()
        Response.Redirect("~/Home Page.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
      
    End Sub


    Protected Sub lkchangepassowd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lkchangepassowd.Click
        Dim popup As String = "<script language='javascript'>" & "window.open('Doctor_change_password.aspx','CustomPopUp', " & "'fullscreen=no,height=150,width=300,top=250,left=250,location=0,directories=0,status=no,scrollbars=yes, dependant = no, alwaysRaised = yes, menubar=no,resizable=no')" & "</script>"
        ScriptManager.RegisterClientScriptBlock(Me.Page, Me.[GetType](), "PopupScript", popup, False)

    End Sub
End Class

