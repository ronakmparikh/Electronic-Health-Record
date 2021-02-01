Imports System.Data.SqlClient
Imports System.Data
Partial Class infrastructure_Default
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim insert, delete, search, upd As String
    Dim show As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As New Connection()
        Dim bla As String = ""
        Dim bla1 As Integer
        bla1 = "0"
        con.Connection()
        con.cn.Open()

        auto()
        If RadioButton3.Checked = True Then
            insert = "insert into patient_admit_card values('" + Session("provide_org_user_id") + "','" + Session("admit_id") + "','" + ddlpatientid.SelectedValue + "','" + ddldocid.SelectedValue + "'," + txtdate.Text + ",'" + ddldept.SelectedValue + "','" + RadioButton3.Text + "'," + txtAdmitDate.Text + "," + txtwardno.Text + ",'" + ddlroomtype.SelectedValue + "'," + txtroomno.Text + "," + txtbedno.Text + "," + txtdeposit.Text + ")"
        Else 'RadioButton4.Checked Then
            insert = "insert into patient_admit_card values('" + Session("provide_org_user_id") + "','" + Session("admit_id") + "','" + ddlpatientid.SelectedValue + "','" + ddldocid.SelectedValue + "'," + txtdate.Text + ",'" + ddldept.SelectedValue + "','" + RadioButton4.Text + "'," + txtAdmitDate.Text + "," + txtAdmitDate.Text + ",'" + bla + "'," + txtAdmitDate.Text + "," + txtAdmitDate.Text + "," + txtAdmitDate.Text + ")"
        End If


        cmd = New SqlCommand(insert, con.cn)
        cmd.ExecuteNonQuery()


        Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
        'txtdate.Text = ""
        'txtAdmitDate.Text = ""
        'txtwardno.Text = ""
        'txtroomno.Text = ""
        'txtbedno.Text = ""
        'txtdeposit.Text = ""
        shows()
        ' Catch ex As Exception

        'Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
        'End Try
        con.cn.Close()
    End Sub

    Protected Sub RadioButton3_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton3.CheckedChanged

        Panel2.Visible = True
        
    End Sub

    Protected Sub RadioButton4_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton4.CheckedChanged
        Panel2.Visible = False
        txtAdmitDate.Text = "0"
        txtwardno.Text = "0"
        ddlroomtype.SelectedValue = "General Ward"
        txtroomno.Text = "0"
        txtbedno.Text = "0"
        txtdeposit.Text = "0"
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            delete = "delete from patient_admit_card where patient_id='" + ddlpatientid.SelectedValue + "'"

            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim con As New Connection()
        con.Connection()

        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        Dim cmd2 As New SqlCommand
        con.cn.Open()
        Try
            upd = "update patient_admit_card set patient_id='" + ddlpatientid.SelectedValue + "',doctor_id='" + ddldocid.SelectedValue + "',date=" + txtdate.Text + ",department='" + ddldept.SelectedValue + "',admit_date=" + txtAdmitDate.Text + ",ward_no=" + txtwardno.Text + ",room_type='" + ddlroomtype.SelectedValue + "',room_no=" + txtroomno.Text + ",bed_no=" + txtbedno.Text + ",deposit=" + txtdeposit.Text + " where patient_id= '" + ddlpatientid.SelectedValue + "'"
            cmd2 = New SqlCommand(upd, con.cn)

            cmd2.ExecuteNonQuery()


            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim con As New Connection()
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet


        con.Connection()
        con.cn.Open()
        Try
            search = "select * from patient_admit_card where patient_id= '" + ddlpatientid.SelectedValue + "' "
            da = New SqlDataAdapter(search, con.cn)
            da.Fill(ds, "patient_admit_card")
            ddlpatientid.SelectedValue = ds.Tables(0).Rows(0)(2)
            ddldocid.SelectedValue = ds.Tables(0).Rows(0)(3)
            txtdate.Text = ds.Tables(0).Rows(0)(4)
            ddldept.SelectedValue = ds.Tables(0).Rows(0)(5)

            txtAdmitDate.Text = ds.Tables(0).Rows(0)(7)
            txtwardno.Text = ds.Tables(0).Rows(0)(8)
            ddlroomtype.SelectedValue = ds.Tables(0).Rows(0)(9)
            txtroomno.Text = ds.Tables(0).Rows(0)(10)
            txtbedno.Text = ds.Tables(0).Rows(0)(11)
            txtdeposit.Text = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Record is Not in Database ')</script>")
        End Try

    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        shows()
    End Sub


      
    '==============================Show Detail========================================
    Sub shows()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from patient_admit_card where Hospital_id='" + Session("provide_org_user_id") + "'"
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub

    Sub auto()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim str As String
        Dim count As String
        str = "select count(*) from  patient_admit_card"
        cmd = New SqlCommand(str, con.cn)

        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1
        count = cmd.ExecuteScalar() + 1

        Session("admit_id") = "Patient00" + count
        con.cn.Close()
    End Sub
End Class
