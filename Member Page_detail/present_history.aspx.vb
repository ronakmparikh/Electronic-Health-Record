Imports System.Data.SqlClient
Imports System.Data
Partial Class present_history
    Inherits System.Web.UI.Page

    'Dim con As SqlConnection
    Dim cmd, cmd1, cmd2 As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim insert, delete, serch, upd As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '  con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=E:\demo\App_Data\Patient_demography.mdf;Integrated Security=True;User Instance=True")
        btnsubmit4.Visible = False
        btnsubmit1.Visible = False
        btnsubmit2.Visible = False
        lblcvs_patient_id.Visible = False
        txtcvs_patientid.Visible = False
    End Sub
    Protected Sub btnsubmit0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit0.Click
       
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim patient_id As String
        patient_id = Session("member_user_id")
        ' present history value
        insert = "insert into present_history values('" + patient_id + "'," + txtcvs_height.Text + "," + txtcvs_weight.Text + "," + txtcvs_waist.Text + "," + txtcvs_hip.Text + "," + txtcvs_bmi.Text + ",'" + txtcvs_bmi_stutus.Text + "'," + txtcvs_pulse.Text + "," + txtcvs_blood_pressure.Text + "," + txtcvs_blood_sugar.Text + "," + txtrespiratory_rate.Text + "," + txttemprature.Text + ",'" + ddlblood_group.SelectedValue + "','" + ddlrh.SelectedValue + "' )"

        Try
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")


        Catch ex As Exception
            MsgBox(" Record not save")
        End Try
        con.cn.Close()

    End Sub

    Protected Sub btnsubmit1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit1.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        delete = "delete from present_history where patient_id = '" + txtcvs_patientid.Text + "'"

        Try
            cmd1 = New SqlCommand(delete, con.cn)
            cmd1.ExecuteNonQuery()
            MsgBox("succsfully deleted")
        Catch ex As Exception
            MsgBox("not deleted")
        End Try
        con.cn.Close()

    End Sub

    Protected Sub btnsubmit2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit2.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            serch = "Select * from present_history  where patient_id=" + txtcvs_patientid.Text + ""
            da = New SqlDataAdapter(serch, con.cn)
            ds = New DataSet()
            da.Fill(ds, "present_history")
            txtcvs_patientid.Text = ds.Tables("present_history").Rows(0)(1)
            txtcvs_height.Text = ds.Tables("present_history").Rows(0)(2)
            txtcvs_weight.Text = ds.Tables("present_history").Rows(0)(3)
            txtcvs_waist.Text = ds.Tables("present_history").Rows(0)(4)
            txtcvs_hip.Text = ds.Tables("present_history").Rows(0)(4)
            txtcvs_bmi.Text = ds.Tables("present_history").Rows(0)(5)
            txtcvs_bmi_stutus.Text = ds.Tables("present_history").Rows(0)(6)
            txtcvs_pulse.Text = ds.Tables("present_history").Rows(0)(1)
            txtcvs_blood_pressure.Text = ds.Tables("present_history").Rows(0)(7)
            txtcvs_blood_sugar.Text = ds.Tables("present_history").Rows(0)(8)
            txtrespiratory_rate.Text = ds.Tables("present_history").Rows(0)(9)
            txttemprature.Text = ds.Tables("present_history").Rows(0)(10)
            ddlblood_group.SelectedValue = ds.Tables("present_history").Rows(0)(11)
            ddlrh.SelectedValue = ds.Tables("present_history").Rows(0)(12)
            MsgBox("search is found")
        Catch ex As Exception
            MsgBox("Search not found")
        End Try
        con.cn.Close()
    End Sub




    Protected Sub btnsubmit4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit4.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim patient_id As String
        upd = "update present_history  set patient_id='" + patient_id + "',height=" + txtcvs_height.Text + ",weight=" + txtcvs_weight.Text + ",waist=" + txtcvs_waist.Text + ",hip=" + txtcvs_hip.Text + ",bmi=" + txtcvs_bmi.Text + ",bmi_status='" + txtcvs_bmi_stutus.Text + "',pulse=" + txtcvs_pulse.Text + ",blood_pressure=" + txtcvs_blood_pressure.Text + ",blood_sugar=" + txtcvs_blood_sugar.Text + ",respiratory_rate=" + txtrespiratory_rate.Text + ",temprature=" + txttemprature.Text + ",blood_group='" + ddlblood_group.SelectedValue + "',rh='" + ddlrh.SelectedValue + "' where patient_id='" + txtcvs_patientid.Text + "'"
        Try

            cmd2 = New SqlCommand(upd, con.cn)
            cmd2.ExecuteNonQuery()
            MsgBox("Updaed Successfully")
        Catch ex As Exception
            MsgBox("Not Update")
        End Try
        con.cn.Close()

    End Sub

    Protected Sub btnsubmit3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit3.Click
        txtcvs_patientid.Text = ""
        txtcvs_height.Text = ""
        txtcvs_blood_pressure.Text = ""
        txtcvs_blood_sugar.Text = ""
        txtcvs_bmi.Text = ""
        txtcvs_hip.Text = ""
        txtcvs_patientid.Text = ""
        txtcvs_pulse.Text = ""
        txtcvs_waist.Text = ""
        txtcvs_weight.Text = ""
        txtrespiratory_rate.Text = ""
        txttemprature.Text = ""
        ddlblood_group.SelectedValue = ""
        txtcvs_bmi_stutus.Text = ""
        ddlrh.SelectedValue = ""


    End Sub

    Protected Sub txtcvs_hip_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtcvs_hip.TextChanged
        Try

        
            txtcvs_bmi.Text = CInt((txtcvs_weight.Text) * (10000)) / CInt(txtcvs_height.Text * txtcvs_height.Text)
            If (txtcvs_bmi.Text > 15) Then
                txtcvs_bmi_stutus.Text = "under weight"
            ElseIf (txtcvs_bmi.Text > 15.0 And txtcvs_bmi.Text < 18.9) Then
                txtcvs_bmi_stutus.Text = "normal"
            ElseIf (txtcvs_bmi.Text > 19.0 And txtcvs_bmi.Text < 21.9) Then
                txtcvs_bmi_stutus.Text = "over weight"
            ElseIf (txtcvs_bmi.Text > 22.0 And txtcvs_bmi.Text < 25.9) Then
                txtcvs_bmi_stutus.Text = "obse"
            ElseIf (txtcvs_bmi.Text > 25.0) Then
                txtcvs_bmi_stutus.Text = "Morebid obese"
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class
