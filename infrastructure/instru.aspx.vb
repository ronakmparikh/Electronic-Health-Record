Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim sts As String
        Dim con As New Connection()
        con.Connection()
        Session("provide_org_user_id") = 10
        Dim cmd As New SqlCommand("addinstrument", con.coni)
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@hospital_id", Session("provide_org_user_id"))
        cmd.Parameters.AddWithValue("@department", ddldepartment.SelectedValue)
        cmd.Parameters.AddWithValue("@Name_of_Instrument", txtname_of_instrument.Text)
        cmd.Parameters.AddWithValue("@Quantity", txtquantity.Text)
        cmd.Parameters.AddWithValue("@Make", txtmake.Text)
        cmd.Parameters.AddWithValue("@Model", txtmodel.Text)
        cmd.Parameters.AddWithValue("@year", ddlyear.SelectedValue)
        cmd.Parameters.AddWithValue("@cost", Txtcost.Text)
        cmd.Parameters.AddWithValue("@maximum_utilisation_period", txtmaxuti.Text)
        cmd.Parameters.AddWithValue("@Utilisation_area", Txtutilisation_area.Text)
        cmd.Parameters.AddWithValue("@Status", Txtstatus.Text)

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
