Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim sts As String
        Dim con As New Connection()
        con.Connection()

        Dim cmd As New SqlCommand("addmanpower", con.coni)
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@hospital_id", Session("provide_org_user_id"))
        cmd.Parameters.AddWithValue("@Medical_staff", ddlmedicalstaff.SelectedValue)
        cmd.Parameters.AddWithValue("@Paramedical_staff", ddlparamedicalstaff.SelectedValue)
        cmd.Parameters.AddWithValue("@Nurses", ddlnurses.SelectedValue)
        cmd.Parameters.AddWithValue("@Dietician", txtdietician.Text)
        cmd.Parameters.AddWithValue("@Physiotherapist", txtphysiotherapist.Text)
        cmd.Parameters.AddWithValue("@Higher_management", ddlhighermanagement.SelectedValue)
        cmd.Parameters.AddWithValue("@Department", ddldepartment.SelectedValue)
        cmd.Parameters.AddWithValue("@HName", txthname.Text)
        cmd.Parameters.AddWithValue("@HMobile_number", txthmobilenumber.Text)
        cmd.Parameters.AddWithValue("@HEmail_id", txthEmail_id.Text)
        cmd.Parameters.AddWithValue("@Middle_management", ddlmiddlemangement.SelectedValue)
        cmd.Parameters.AddWithValue("@MName", txtmname.Text)
        cmd.Parameters.AddWithValue("@Mmobile_number", txtmmobilenumber.Text)
        cmd.Parameters.AddWithValue("@MEmail_id", txtmEmail_id.Text)
        cmd.Parameters.AddWithValue("@Lower_management", ddllowermanagement.SelectedValue)
        ' cmd.Parameters.AddWithValue("@Middle_management", ddlmiddlemangement.SelectedValue)

        con.coni.Open()
        sts = cmd.ExecuteNonQuery()
        con.coni.Close()

        If sts >= 0 Then
            Page.ClientScript.RegisterStartupScript(Page.GetType(), DateTime.Now.ToFileTime().ToString(), "alert('Record Is Inserted successfully');", True)
            MsgBox("Record is inserted", MsgBoxStyle.OkOnly, "Confirmation")
            'Response.Redirect("casedetail1.aspx")
        Else
            Page.ClientScript.RegisterStartupScript(Page.GetType(), DateTime.Now.ToFileTime().ToString(), "alert('Record Is Not Inserted');", True)
            'Response.Redirect("casedetail1.aspx")
        End If



    End Sub
End Class
