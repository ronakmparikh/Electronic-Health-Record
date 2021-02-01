Imports System.Data.SqlClient
Imports System.Data
Partial Class infrastructure_clenical_record
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim ins, dele, sea, upd As String
    

    Protected Sub Button1_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As New Connection()
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        con.Connection()
        con.cn.Open()
        Try

            ins = "insert into Clinical_record values ('" + Session("provide_org_user_id") + "','" + ddlpatientid.SelectedValue + "','" + ddlname.SelectedValue + "'," + txtroom.Text + "," + txtdate_time.Text + ", '" + txttablet.Text + "', '" + txtinjection.Text + "', " + txttemprature.Text + ", " + txtBp.Text + ", '" + txtdressing.Text + "', '" + txtattend_id_name.Text + "', '" + ddlpatientid.SelectedValue + "', '" + txtnurse_id.Text + "', '" + txtremark.Text + "')"

            cmd = New SqlCommand(ins, con.cn)
            cmd.ExecuteNonQuery()


            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            'txtpatient_id.Text = ""
            'txtname.Text = ""
            txtroom.Text = ""
            txtdate_time.Text = ""
            txttablet.Text = ""
            txtinjection.Text = ""
            txttemprature.Text = ""
            txtBp.Text = ""
            txtdressing.Text = ""
            txtattend_id_name.Text = ""
            'txtdoctor_name.Text = ""
            txtnurse_id.Text = ""
            txtremark.Text = ""

        Catch ex As Exception

            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()


    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim cmd2 As New SqlCommand
        Dim con As New Connection()
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        con.Connection()
        con.cn.Open()

        upd = "update clenical_record set Patient_id= '" + ddlpatientid.SelectedValue + "',Name='" + ddlname.SelectedValue + "',Room_ward_no='" + txtroom.Text + "', Date_time=" + txtdate_time.Text + ", Tablet='" + txttablet.Text + "', Injection='" + txtinjection.Text + "', Temptrature=" + txttemprature.Text + ",Bp=" + txtBp.Text + ", Dressing='" + txtdressing.Text + "', Attendent_id_name='" + txtattend_id_name.Text + "', Docotor_id_name='" + ddldocid.SelectedValue + "', Nurses_name='" + txtnurse_id.Text + "',Remark='" + txtremark.Text + "' where Patient_id = '" + ddlpatientid.SelectedValue + "'"
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
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        con.Connection()
        con.cn.Open()

        Try
            dele = "delete from clinical_record where Patient_id= '" + ddlpatientid.SelectedValue + "'"

            cmd = New SqlCommand(dele, con.cn)
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


        sea = "select * from Clinical_record where Patient_id= '" + ddlpatientid.SelectedValue + "'"
        da = New SqlDataAdapter(sea, con.cn)
        da.Fill(ds, "Clinical_record")
        ddlpatientid.SelectedValue = ds.Tables(0).Rows(0)(1)
        ddlname.SelectedValue = ds.Tables(0).Rows(0)(2)
        txtroom.Text = ds.Tables(0).Rows(0)(3)
        txtdate_time.Text = ds.Tables(0).Rows(0)(4)
        txttablet.Text = ds.Tables(0).Rows(0)(5)
        txtinjection.Text = ds.Tables(0).Rows(0)(6)
        txttemprature.Text = ds.Tables(0).Rows(0)(7)
        txtBp.Text = ds.Tables(0).Rows(0)(8)
        txtdressing.Text = ds.Tables(0).Rows(0)(9)
        txtattend_id_name.Text = ds.Tables(0).Rows(0)(10)
        ddldocid.SelectedValue = ds.Tables(0).Rows(0)(11)
        txtnurse_id.Text = ds.Tables(0).Rows(0)(12)
        txtremark.Text = ds.Tables(0).Rows(0)(13)

    End Sub
End Class
