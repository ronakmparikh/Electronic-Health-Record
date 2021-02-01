Imports System.Data.SqlClient
Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim insert As String
   
    Protected Sub rdblife_insurance1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdblife_insurance1_yes.CheckedChanged
        panel_of_lifeinsurance.Visible = True
    End Sub

    Protected Sub rdblife_insurance_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdblife_insurance_no.CheckedChanged
        panel_of_lifeinsurance.Visible = False
    End Sub

    Protected Sub rdbcriticalno_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbcriticalno.CheckedChanged
        Panel_of_Critical_illness.Visible = False
    End Sub

    Protected Sub rdbcritcalyes_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbcritcalyes.CheckedChanged
        Panel_of_Critical_illness.Visible = True
    End Sub

    Protected Sub personal_accidentno_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles personal_accidentno.CheckedChanged
        panel_of_personal_accident.Visible = False
    End Sub

    Protected Sub rdbpersonalaccidentyes_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbpersonalaccidentyes.CheckedChanged
        panel_of_personal_accident.Visible = True
    End Sub

    Protected Sub rdbmedilaim_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbmediclaimno.CheckedChanged
        Panel_of_mediclaim.Visible = False
    End Sub

    Protected Sub rdbmadiclaim_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbmadiclaimyes.CheckedChanged
        Panel_of_mediclaim.Visible = True
    End Sub
  
    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim patient_id As String
        'Session("member_user_id") = 10
        ' patient_id = Session("member_user_id")
        If (rdbmadiclaimyes.Checked = True Or rdblife_insurance1_yes.Checked = True Or rdbcritcalyes.Checked = True Or rdbpersonalaccidentyes.Checked = True) Then



            '================================================================================================
            ' Mediclaim_insurance insert data
            If (rdbmadiclaimyes.Checked = True) Then

                If mediclaim_upload.HasFile Then
                    mediclaim_upload.SaveAs("F:\EHR\photo and document\" & mediclaim_upload.FileName)
                End If
                Dim upload_mediclaim As String = mediclaim_upload.FileName
                ' insert = "insert into insurance_detail values('" + id + "','" + ddlcinsurancecompany.SelectedValue + "','" + txtmpolicynumber.Text + "','" + txtmpolicytype.Text + "'," + ddlmpolicystartdate.SelectedValue + "," + ddlmpolicystartmonth.SelectedValue + "," + ddlmpolicystartyear.SelectedValue + "," + ddlmpolicyenddate.SelectedValue + "," + ddlmpolicyendmonth.SelectedValue + "," + ddlmpolicyendyear.SelectedValue + ",'" + txtmsuminsure.Text + "','" + txtmcummulativebonus.Text + "','" + txtmpremiumamount.Text + "','" + txtmpreviouspolicies.Text + "','" + txtmtpa.Text + "','" + txtmagent.Text + "','" + txtmagentcode.Text + "'," + txtmagentcontact.Text + ",'" + txtmaddress.Text + "'," + txtmmobilenumber.Text + "," + txtstd_code.Text + "," + txtmlandlinenumber.Text + ",'" + txtmemail.Text + "')"
                cmd = New SqlCommand("mediclaim_insurance_detail_insert", con.cn)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@patient_id", Session("member_user_id"))

                cmd.Parameters.AddWithValue("@medi_insurance_company_name", ddlminsurancecompany.SelectedValue)
                cmd.Parameters.AddWithValue("@medi_policy_number", txtmmobilenumber.Text)
                cmd.Parameters.AddWithValue("@medi_policy_type", txtmpolicytype.Text)
                cmd.Parameters.AddWithValue("@medi_policy_startdate", txtmpolicy_sdate.Text)
               
                cmd.Parameters.AddWithValue("@medi_policy_enddate", txtmpolicy_edate.Text)
             
                cmd.Parameters.AddWithValue("@medi_sum_insure", txtmsuminsure.Text)
                cmd.Parameters.AddWithValue("@medi_commulative_bonus", txtmcummulativebonus.Text)
                cmd.Parameters.AddWithValue("@medi_premium_amount", txtmpremiumamount.Text)
                cmd.Parameters.AddWithValue("@medi_previous_policies", txtmpreviouspolicies.Text)
                cmd.Parameters.AddWithValue("@medi_tpa", ddlctpa.SelectedValue)
                cmd.Parameters.AddWithValue("@medi_agent_name", txtmagent.Text)
                cmd.Parameters.AddWithValue("@medi_agent_code", txtmagentcode.Text)
                cmd.Parameters.AddWithValue("@medi_agent_contact", txtmagentcontact.Text)
                cmd.Parameters.AddWithValue("@medi_address", txtmaddress.Text)
                cmd.Parameters.AddWithValue("@medi_mobile_number", txtmmobilenumber.Text)
                cmd.Parameters.AddWithValue("@medi_std_code", txtstd_code.Text)
                cmd.Parameters.AddWithValue("@medi_landline_number", txtmlandlinenumber.Text)
                cmd.Parameters.AddWithValue("@medi_email_id", txtmemail.Text)
                cmd.Parameters.AddWithValue("@medi_upload", upload_mediclaim)


                Try
                    '  cmd = New SqlCommand(insert, con.cn)
                    cmd.ExecuteNonQuery()
                    Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")


                Catch ex As Exception
                    MsgBox("Record not save")
                End Try
            End If
            '=========================================================================================================
            'personal accident insert data
            If (rdbpersonalaccidentyes.Checked = True) Then
                If personal_accident_upload.HasFile Then
                    personal_accident_upload.SaveAs("F:\EHR\photo and document\" & personal_accident_upload.FileName)
                End If
                Dim upload_personal_accident As String = personal_accident_upload.FileName
                'Dim id As String
                'id = 101
                insert = "insert into personal_accident_insurance values('" + Session("member_user_id") + "','" + ddlpinsurancecompany.SelectedValue + "','" + txtppolicynumber.Text + "','" + txtppolicytype.Text + "'," + txtppolicy_sdate.Text + "," + txtppolicy_edate.Text + ",'" + txtpsuminsure.Text + "','" + txtpcummulativebonus.Text + "','" + txtppremiumamount.Text + "','" + txtppreviouspolicies.Text + "','" + upload_personal_accident + "')"
                Try
                    cmd = New SqlCommand(insert, con.cn)
                    cmd.ExecuteNonQuery()
                    Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")


                Catch ex As Exception
                    MsgBox("Personal Accident Record not save")
                End Try
            End If
            '========================================================================================================
            'Critical Illness insert data
            If (rdbcritcalyes.Checked = True) Then

                If critical_illness_upload.HasFile Then
                    critical_illness_upload.SaveAs("F:\EHR\photo and document\" & critical_illness_upload.FileName)
                End If
                Dim upload_critical_illness As String = critical_illness_upload.FileName
                insert = "insert into critical_illness_insurance values('" + Session("member_user_id") + "','" + ddlcinsurancecompany.SelectedValue + "','" + txtcpolicynumber.Text + "','" + txtcpolicytype.Text + "','" + txtcpolicy_sdate.Text + "','" + txtcpolicy_edate.Text + "','" + txtcsuminsure.Text + "','" + txccummulativebonus.Text + "','" + txtcpremiumamount.Text + "','" + txtcpreviouspolicies.Text + "','" + ddlctpa.SelectedValue + "','" + upload_critical_illness + "')"
                Try
                    cmd = New SqlCommand(insert, con.cn)
                    cmd.ExecuteNonQuery()
                    Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")


                Catch ex As Exception
                    MsgBox("Critical Illness Record not save")
                End Try
            End If
            '=========================================================================================================
            'life_insurance insert data

            If (rdblife_insurance1_yes.Checked = True) Then
                If life_insurance.HasFile Then
                    life_insurance.SaveAs("F:\EHR\photo and document\" & life_insurance.FileName)
                End If
                Dim upload_life_insurance As String = life_insurance.FileName
                insert = "insert into lic_insurance values('" + Session("member_user_id") + "','" + ddllinsurancecompany.SelectedValue + "','" + txtlpolicynumber.Text + "','" + txtlpolicytype.Text + "','" + txtlsuminsure.Text + "','" + txtmaturity_date.Text + "','" + txtrenewal_date.Text + "','" + upload_life_insurance + "')"
                'Try
                cmd = New SqlCommand(insert, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")


                'Catch ex As Exception
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
                'End Try
            End If


        Else
            MsgBox("other page")
        End If
        con.cn.Close() 'connection close
    End Sub

  
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Session("member_user_id") = "Member001"
    End Sub
End Class
