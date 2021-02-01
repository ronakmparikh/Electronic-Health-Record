Imports System.Data.SqlClient
Imports System.Data
Partial Class personal_history
    Inherits System.Web.UI.Page

    '  Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim insert As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '   con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=F:\patient DemographyVB\App_Data\Patient_demography.mdf;Integrated Security=True;User Instance=True ")
    End Sub


    Protected Sub RadioButton1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbtyes.CheckedChanged
        Panel1_tabacoo.Visible = True

    End Sub

    Protected Sub RadioButton2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbtno.CheckedChanged
        Panel1_tabacoo.Visible = False
    End Sub

    Protected Sub RadioButton3_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbayes.CheckedChanged
        Panel1_alcohol.Visible = True

    End Sub

    Protected Sub RadioButton4_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbano.CheckedChanged
        Panel1_alcohol.Visible = False

    End Sub

    Protected Sub RadioButton5_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbsyes.CheckedChanged
        Panel1_spectacle.Visible = True

    End Sub

    Protected Sub RadioButton6_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbsno.CheckedChanged
        Panel1_spectacle.Visible = False

    End Sub

   
    Protected Sub Btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsubmit.Click
        Dim con As New Connection()
        con.Connection()
        Dim sleft, sright As String
        Dim tabacoo As String
        Dim tabacoo_time As String
        Dim alcohol As String
        Dim alcohol_duration As String
        Dim alcohol_time As String
        sleft = " "
        sright = " "
        tabacoo = " "
        tabacoo_time = " "
        alcohol = " "
        alcohol_duration = " "
        alcohol_time = " "

        con.cn.Open()
        Dim patient_id As String
        patient_id = Session("member_user_id")
        If (rdbtyes.Checked = True And rdbayes.Checked = True And rdbsyes.Checked = True) Then

            insert = "insert into personal_history values('" + patient_id + "','" + ddltabacoo.SelectedValue + "','" + ddltabacoo_count.SelectedValue + "','" + ddlalcohol.SelectedValue + "','" + ddldaily.SelectedValue + "','" + ddlalcohol_count.SelectedValue + "','" + ddlfoodhabit.SelectedValue + "','" + ddlappetite.SelectedValue + "','" + ddlbowelhabits.SelectedValue + "','" + ddlmicturitions.SelectedValue + "','" + ddlsleep.SelectedValue + "','" + ddlmadications.SelectedValue + "','" + txtleft.Text + "','" + txtright.Text + "')"

        ElseIf (rdbtyes.Checked = True And rdbayes.Checked = True And rdbsno.Checked = True) Then

            insert = "insert into personal_history values('" + patient_id + "','" + ddltabacoo.SelectedValue + "','" + ddltabacoo_count.SelectedValue + "','" + ddlalcohol.SelectedValue + "','" + ddldaily.SelectedValue + "','" + ddlalcohol_count.SelectedValue + "','" + ddlfoodhabit.SelectedValue + "','" + ddlappetite.SelectedValue + "','" + ddlbowelhabits.SelectedValue + "','" + ddlmicturitions.SelectedValue + "','" + ddlsleep.SelectedValue + "','" + ddlmadications.SelectedValue + "','" + txtleft.Text + "','" + txtright.Text + "')"

        ElseIf (rdbtyes.Checked = True And rdbano.Checked = True And rdbsno.Checked = True) Then

            insert = "insert into personal_history values('" + patient_id + "','" + ddltabacoo.SelectedValue + "','" + ddltabacoo_count.SelectedValue + "','" + alcohol + "','" + alcohol_duration + "','" + alcohol_time + "','" + ddlfoodhabit.SelectedValue + "','" + ddlappetite.SelectedValue + "','" + ddlbowelhabits.SelectedValue + "','" + ddlmicturitions.SelectedValue + "','" + ddlsleep.SelectedValue + "','" + ddlmadications.SelectedValue + "','" + sleft + "','" + sright + "')"

        ElseIf (rdbtyes.Checked = True And rdbano.Checked = True And rdbsyes.Checked = True) Then

            insert = "insert into personal_history values('" + patient_id + "','" + ddltabacoo.SelectedValue + "','" + ddltabacoo_count.SelectedValue + "','" + alcohol + "','" + alcohol_duration + "','" + alcohol_time + "','" + ddlfoodhabit.SelectedValue + "','" + ddlappetite.SelectedValue + "','" + ddlbowelhabits.SelectedValue + "','" + ddlmicturitions.SelectedValue + "','" + ddlsleep.SelectedValue + "','" + ddlmadications.SelectedValue + "','" + txtleft.Text + "','" + txtright.Text + "')"

        ElseIf (rdbtno.Checked = True And rdbayes.Checked = True And rdbsno.Checked = True) Then

            insert = "insert into personal_history values('" + patient_id + "','" + tabacoo + "','" + tabacoo_time + "','" + ddlalcohol.SelectedValue + "','" + ddldaily.SelectedValue + "','" + ddlalcohol_count.SelectedValue + "','" + ddlfoodhabit.SelectedValue + "','" + ddlappetite.SelectedValue + "','" + ddlbowelhabits.SelectedValue + "','" + ddlmicturitions.SelectedValue + "','" + ddlsleep.SelectedValue + "','" + ddlmadications.SelectedValue + "','" + sleft + "','" + sright + "')"

        ElseIf (rdbtno.Checked = True And rdbano.Checked = True And rdbsyes.Checked = True) Then

            insert = "insert into personal_history values('" + patient_id + "','" + tabacoo + "','" + tabacoo_time + "','" + alcohol + "','" + alcohol_duration + "','" + alcohol_time + "','" + ddlfoodhabit.SelectedValue + "','" + ddlappetite.SelectedValue + "','" + ddlbowelhabits.SelectedValue + "','" + ddlmicturitions.SelectedValue + "','" + ddlsleep.SelectedValue + "','" + ddlmadications.SelectedValue + "','" + txtleft.Text + "','" + txtright.Text + "')"

        Else

            insert = "insert into personal_history values('" + patient_id + "','" + tabacoo + "','" + tabacoo_time + "','" + alcohol + "','" + alcohol_duration + "','" + alcohol_time + "','" + ddlfoodhabit.SelectedValue + "','" + ddlappetite.SelectedValue + "','" + ddlbowelhabits.SelectedValue + "','" + ddlmicturitions.SelectedValue + "','" + ddlsleep.SelectedValue + "','" + ddlmadications.SelectedValue + "','" + sleft + "','" + sright + "')"


        End If
        '===============================================
        Try
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")


        Catch ex As Exception
            MsgBox("Record not save")
        End Try
        con.cn.Close()
        '===============================================
    End Sub

End Class