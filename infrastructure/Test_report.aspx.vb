Imports System.Data.SqlClient
Imports System.Data
Partial Class infrastructure_Test_report
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim insert, delete, search, upd As String
    Dim show As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Protected Sub RadioButton2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton2.CheckedChanged
        txtreciptno.Visible = False
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            auto()
            insert = "insert into test_form values('" + Session("provide_org_user_id") + "','" + Session("test") + "','" + txtreciptno.Text + "'," + txtdate.Text + ",'" + ddlpatientid.SelectedValue + "','" + ddldoctorid.SelectedValue + "','" + ddltest_type.SelectedValue + "','" + ddltestcode.SelectedValue + "','" + ddlperticular.SelectedValue + "'," + ddlrate.SelectedValue + ")"

            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()


            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            con.cn.Close()
            txtreciptno.Text = ""
            txtdate.Text = ""
            'ddlpatientid.SelectedValue = ""
            ' ddldoctorid.SelectedValue = ""
            'ddltest_type.SelectedValue = ""
            'ddlperticular.SelectedValue = ""
            'ddlrate.SelectedValue = ""

        Catch ex As Exception

            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
        End Try

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddltest_type.SelectedIndexChanged

        If ddltest_type.SelectedValue = "Hematology" Then
            SqlDataSource1.ConnectionString = "<%$ ConnectionStrings:ConnectionString %>"
            SqlDataSource1.SelectCommand = "SELECT * FROM [pathology] where Hospital_id='" + Session("provide_org_user_id") + "'"
        ElseIf ddltest_type.SelectedValue = "Body Fluids" Then
            'SqlDataSource1.ConnectionString = "<%$ ConnectionStrings:ConnectionString %>"
            SqlDataSource1.SelectCommand = "SELECT * FROM [body_fluids] where Hospital_id='" + Session("provide_org_user_id") + "'"
        ElseIf ddltest_type.SelectedValue = "Biochemistory" Then
            ' SqlDataSource1.ConnectionString = "<%$ ConnectionStrings:ConnectionString %>"
            SqlDataSource1.SelectCommand = "SELECT * FROM [Biochemistry] where Hospital_id='" + Session("provide_org_user_id") + "'"
        ElseIf ddltest_type.SelectedValue = "Microbiology" Then
            SqlDataSource1.SelectCommand = "SELECT * FROM [Microbiology] where Hospital_id='" + Session("provide_org_user_id") + "'"
        ElseIf ddltest_type.SelectedValue = "Urine" Then
            SqlDataSource1.SelectCommand = "SELECT * FROM [Urine] where Hospital_id='" + Session("provide_org_user_id") + "'"
        ElseIf ddltest_type.SelectedValue = "stool" Then
            SqlDataSource1.SelectCommand = "SELECT * FROM [stol] where Hospital_id='" + Session("provide_org_user_id") + "'"
        ElseIf ddltest_type.SelectedValue = "Serology" Then
            SqlDataSource1.SelectCommand = "SELECT * FROM [Serology] where Hospital_id='" + Session("provide_org_user_id") + "'"
        ElseIf ddltest_type.SelectedValue = "Histopathology" Then
            SqlDataSource1.SelectCommand = "SELECT * FROM [Histo] where Hospital_id='" + Session("provide_org_user_id") + "'"
        ElseIf ddltest_type.SelectedValue = "Cytology" Then
            SqlDataSource1.SelectCommand = "SELECT * FROM [CYTOLOGY] where Hospital_id='" + Session("provide_org_user_id") + "'"
        ElseIf ddltest_type.SelectedValue = "Special Tests" Then
            SqlDataSource1.SelectCommand = "SELECT * FROM [SPE_TEST] where Hospital_id='" + Session("provide_org_user_id") + "'"

        End If


    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim con As New Connection()
        con.Connection()

        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        Dim cmd2 As New SqlCommand
        con.cn.Open()

        upd = "update test_form set recipet_no='" + txtreciptno.Text + "',date='" + txtdate.Text + "',patient_id='" + ddlpatientid.SelectedValue + "',doctor_id='" + ddldoctorid.SelectedValue + "',test_type='" + ddltest_type.SelectedValue + "',test_code='" + ddltestcode.SelectedValue + "',test_name='" + ddlperticular.SelectedValue + "',rate=" + ddlrate.SelectedValue + "  where patient_id= '" + ddlpatientid.SelectedValue + "'"
        cmd2 = New SqlCommand(upd, con.cn)

        cmd2.ExecuteNonQuery()

        Try
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")

        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            delete = "delete from test_form where patient_id='" + ddlpatientid.SelectedValue + "'"

            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")

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
            search = "select * from test_form where patient_id = '" + ddlpatientid.SelectedValue + "' "
            da = New SqlDataAdapter(search, con.cn)
            da.Fill(ds, "test_form")
            txtreciptno.Text = ds.Tables(0).Rows(0)(1)
            txtdate.Text = ds.Tables(0).Rows(0)(2)
            ddlpatientid.SelectedValue = ds.Tables(0).Rows(0)(3)
            ddldoctorid.SelectedValue = ds.Tables(0).Rows(0)(4)
            ddltest_type.SelectedValue = ds.Tables(0).Rows(0)(5)
            ddltestcode.SelectedValue = ds.Tables(0).Rows(0)(6)
            ddlperticular.SelectedValue = ds.Tables(0).Rows(0)(7)
            ddlrate.SelectedValue = ds.Tables(0).Rows(0)(8)

        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Record is Not in Database ')</script>")
        End Try
        con.cn.Close()
    End Sub

   
    
    
    Protected Sub RadioButton1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton1.CheckedChanged
        txtreciptno.Visible = True
    End Sub

    Sub auto()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim str As String
        Dim count As String
        str = "select count(*) from test_form "
        cmd = New SqlCommand(str, con.cn)

        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1
        count = cmd.ExecuteScalar() + 1

        Session("test") = "AA00" + count
        con.cn.Close()
    End Sub


End Class


