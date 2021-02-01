Imports System.Data.SqlClient
Imports System.Data
Partial Class infrastructure_Hospital_Bill
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim insert, delete, search, upd As String
    Dim show As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Protected Sub ddlpat_admit_id_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlpat_admit_id.SelectedIndexChanged
        Dim con As New Connection()
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet


        con.Connection()
        con.cn.Open()
        Try
            search = "select * from patient_admit_card where Admit_id='" + ddlpat_admit_id.SelectedValue + "' "
            da = New SqlDataAdapter(search, con.cn)
            da.Fill(ds, "patient_admit_card")
            txtadmit_date.Text = ds.Tables(0).Rows(0)(7)
            txtbedno.Text = ds.Tables(0).Rows(0)(11)
            txtdept.Text = ds.Tables(0).Rows(0)(5)
            txtopd_ipd.Text = ds.Tables(0).Rows(0)(6)

        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' It is an opd patient ')</script>")
        End Try


        con.cn.Close()
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Dim con As New Connection()
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet


        con.Connection()
        con.cn.Open()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        'TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""
        'TextBox10.Text = ""

        TextBox11.Text = ""
        TextBox12.Text = ""
        TextBox13.Text = ""
        TextBox14.Text = ""
        'TextBox15.Text = ""
        TextBox16.Text = ""
        TextBox17.Text = ""
        TextBox18.Text = ""
        TextBox19.Text = ""
        'TextBox20.Text = ""

        TextBox21.Text = ""
        TextBox22.Text = ""
        TextBox23.Text = ""
        TextBox24.Text = ""
        'TextBox25.Text = ""
        TextBox26.Text = ""
        TextBox27.Text = ""
        TextBox28.Text = ""
        TextBox29.Text = ""
        'TextBox30.Text = ""

        TextBox31.Text = ""
        TextBox32.Text = ""
        TextBox33.Text = ""
        TextBox34.Text = ""
        'TextBox35.Text = ""
        TextBox36.Text = ""
        TextBox37.Text = ""
        TextBox38.Text = ""
        TextBox39.Text = ""
        'TextBox40.Text = ""

        TextBox41.Text = ""
        TextBox42.Text = ""
        TextBox43.Text = ""
        TextBox44.Text = ""
        'TextBox45.Text = ""
        TextBox46.Text = ""
        TextBox47.Text = ""
        TextBox48.Text = ""
        TextBox49.Text = ""
        'TextBox50.Text = ""


        Try
            search = "select * from test_form where patient_id= '" + ddlpatientid.SelectedValue + "' "
            da = New SqlDataAdapter(search, con.cn)
            da.Fill(ds, "test_form")
            TextBox1.Text = ds.Tables(0).Rows(0)(8)
            TextBox2.Text = ds.Tables(0).Rows(0)(3)
            TextBox3.Text = ds.Tables(0).Rows(0)(9)

            TextBox6.Text = ds.Tables(0).Rows(1)(8)
            TextBox7.Text = ds.Tables(0).Rows(1)(3)
            TextBox8.Text = ds.Tables(0).Rows(1)(9)

            TextBox11.Text = ds.Tables(0).Rows(2)(8)
            TextBox12.Text = ds.Tables(0).Rows(2)(3)
            TextBox13.Text = ds.Tables(0).Rows(2)(9)

            TextBox16.Text = ds.Tables(0).Rows(3)(8)
            TextBox17.Text = ds.Tables(0).Rows(3)(3)
            TextBox18.Text = ds.Tables(0).Rows(3)(9)

            TextBox21.Text = ds.Tables(0).Rows(4)(8)
            TextBox22.Text = ds.Tables(0).Rows(4)(3)
            TextBox23.Text = ds.Tables(0).Rows(4)(9)

            TextBox26.Text = ds.Tables(0).Rows(5)(8)
            TextBox27.Text = ds.Tables(0).Rows(5)(3)
            TextBox28.Text = ds.Tables(0).Rows(5)(9)

            TextBox31.Text = ds.Tables(0).Rows(6)(8)
            TextBox32.Text = ds.Tables(0).Rows(6)(3)
            TextBox33.Text = ds.Tables(0).Rows(6)(9)

            TextBox36.Text = ds.Tables(0).Rows(7)(8)
            TextBox37.Text = ds.Tables(0).Rows(7)(3)
            TextBox38.Text = ds.Tables(0).Rows(7)(9)

            TextBox41.Text = ds.Tables(0).Rows(8)(8)
            TextBox42.Text = ds.Tables(0).Rows(8)(3)
            TextBox43.Text = ds.Tables(0).Rows(8)(9)

            TextBox46.Text = ds.Tables(0).Rows(9)(8)
            TextBox47.Text = ds.Tables(0).Rows(9)(3)
            TextBox48.Text = ds.Tables(0).Rows(9)(9)

        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' record found ')</script>")
        End Try

    End Sub

    Protected Sub btnadd1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd1.Click
        Dim con As New Connection()
        Dim bla As String = ""
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into patient_bill values('" + Session("provide_org_user_id") + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + bla + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        con.cn.Close()

    End Sub

    Protected Sub btnadd2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd2.Click
        Dim con As New Connection()
        Dim bla As String = ""
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into patient_bill values('" + Session("provide_org_user_id") + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + bla + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try

        con.cn.Close()
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""
    End Sub

    Protected Sub btnadd3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd3.Click
        Dim con As New Connection()
        Dim bla As String = ""
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into patient_bill values('" + Session("provide_org_user_id") + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + bla + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try

        con.cn.Close()

        TextBox11.Text = ""
        TextBox12.Text = ""
        TextBox13.Text = ""
        TextBox14.Text = ""
    End Sub

    Protected Sub btnadd4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd4.Click
        Dim con As New Connection()
        Dim bla As String = ""
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into patient_bill values('" + Session("provide_org_user_id") + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + bla + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try

        con.cn.Close()
        TextBox16.Text = ""
        TextBox17.Text = ""
        TextBox18.Text = ""
        TextBox19.Text = ""
    End Sub

    Protected Sub btnadd5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd5.Click
        Dim con As New Connection()
        Dim bla As String = ""
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into patient_bill values('" + Session("provide_org_user_id") + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + TextBox21.Text + "','" + TextBox22.Text + "','" + TextBox23.Text + "','" + TextBox24.Text + "','" + TextBox25.Text + "','" + bla + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try

        con.cn.Close()
        TextBox21.Text = ""
        TextBox22.Text = ""
        TextBox23.Text = ""
        TextBox24.Text = ""
    End Sub

    Protected Sub btnadd6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd6.Click
        Dim con As New Connection()
        Dim bla As String = ""
        con.Connection()
        con.cn.Open()


        Try

            insert = "insert into patient_bill values('" + Session("provide_org_user_id") + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + TextBox26.Text + "','" + TextBox27.Text + "','" + TextBox28.Text + "','" + TextBox29.Text + "','" + TextBox30.Text + "','" + bla + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try

        con.cn.Close()
        TextBox26.Text = ""
        TextBox27.Text = ""
        TextBox28.Text = ""
        TextBox29.Text = ""
    End Sub

    Protected Sub btnadd7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd7.Click
        Dim con As New Connection()
        Dim bla As String = ""
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into patient_bill values('" + Session("provide_org_user_id") + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + TextBox31.Text + "','" + TextBox32.Text + "','" + TextBox33.Text + "','" + TextBox34.Text + "','" + TextBox35.Text + "','" + bla + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try

        con.cn.Close()
        TextBox31.Text = ""
        TextBox32.Text = ""
        TextBox33.Text = ""
        TextBox34.Text = ""
    End Sub

    Protected Sub btnadd8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd8.Click
        Dim con As New Connection()
        Dim bla As String = ""
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into patient_bill values('" + Session("provide_org_user_id") + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + TextBox36.Text + "','" + TextBox37.Text + "','" + TextBox38.Text + "','" + TextBox39.Text + "','" + TextBox40.Text + "','" + bla + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try

        con.cn.Close()
        TextBox36.Text = ""
        TextBox37.Text = ""
        TextBox38.Text = ""
        TextBox39.Text = ""
    End Sub

    Protected Sub btnadd9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd9.Click
        Dim con As New Connection()
        Dim bla As String = ""
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into patient_bill values('" + Session("provide_org_user_id") + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + TextBox41.Text + "','" + TextBox42.Text + "','" + TextBox43.Text + "','" + TextBox44.Text + "','" + TextBox45.Text + "','" + bla + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try

        con.cn.Close()
        TextBox41.Text = ""
        TextBox42.Text = ""
        TextBox43.Text = ""
        TextBox44.Text = ""

    End Sub

    Protected Sub btnadd110_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd110.Click
        Dim con As New Connection()
        Dim bla As String = ""
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into patient_bill values('" + Session("provide_org_user_id") + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + TextBox46.Text + "','" + TextBox47.Text + "','" + TextBox48.Text + "','" + TextBox49.Text + "','" + TextBox50.Text + "','" + bla + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try

        con.cn.Close()
        TextBox46.Text = ""
        TextBox47.Text = ""
        TextBox48.Text = ""
        TextBox49.Text = ""
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Dim con As New Connection()
        Dim bla As String = ""
        con.Connection()
        con.cn.Open()
        Session("provide_org_user_id") = "Hospital001"
        Try
            delete = "delete from patient_bill "

            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()



        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try



        Try
            insert = "insert into patient_bill values('" + Session("provide_org_user_id") + "','" + ddlpat_admit_id.SelectedValue + "','" + txtbillno.Text + "','" + txtadmit_date.Text + "','" + ddlpatientid.SelectedValue + "','" + ddlpatientid.SelectedValue + "','" + txtaddress.Text + "','" + txtbedno.Text + "','" + txtopd_ipd.Text + "','" + txtdept.Text + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Information inserted ')</script>")
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try





        con.cn.Close()

    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click

        Dim con As New Connection()
        Dim bla As String = ""
        con.Connection()
        con.cn.Open()

        Try
            txtbill_total.Text = CInt(TextBox5.Text) + CInt(TextBox10.Text) + CInt(TextBox15.Text) + CInt(TextBox20.Text) + CInt(TextBox25.Text) + CInt(TextBox30.Text) + CInt(TextBox35.Text) + CInt(TextBox40.Text) + CInt(TextBox45.Text) + CInt(TextBox50.Text) - CInt(txtadvance_amount.Text)
        Catch ex As Exception

        End Try

        
        Try
            insert = "insert into patient_bill values('" + Session("provide_org_user_id") + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + bla + "','" + txtbill_total.Text + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try

        con.cn.Close()


    End Sub

    Protected Sub TextBox4_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox4.TextChanged
        TextBox5.Text = CInt(TextBox3.Text) - CInt(TextBox4.Text)
    End Sub

    Protected Sub TextBox9_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox9.TextChanged
        TextBox10.Text = CInt(TextBox8.Text) - CInt(TextBox9.Text)

    End Sub

    Protected Sub TextBox14_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox14.TextChanged
        TextBox15.Text = CInt(TextBox13.Text) - CInt(TextBox14.Text)
    End Sub

    Protected Sub TextBox19_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox19.TextChanged
        TextBox20.Text = CInt(TextBox18.Text) - CInt(TextBox19.Text)
    End Sub

    Protected Sub TextBox24_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox24.TextChanged
        TextBox25.Text = CInt(TextBox23.Text) - CInt(TextBox24.Text)
    End Sub

    Protected Sub TextBox29_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox29.TextChanged
        TextBox30.Text = CInt(TextBox28.Text) - CInt(TextBox29.Text)
    End Sub

    Protected Sub TextBox34_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox34.TextChanged
        TextBox35.Text = CInt(TextBox33.Text) - CInt(TextBox34.Text)
    End Sub

    Protected Sub TextBox39_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox39.TextChanged
        TextBox40.Text = CInt(TextBox38.Text) - CInt(TextBox39.Text)
    End Sub

    Protected Sub TextBox44_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox44.TextChanged
        TextBox45.Text = CInt(TextBox43.Text) - CInt(TextBox44.Text)
    End Sub

    Protected Sub TextBox49_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox49.TextChanged
        TextBox50.Text = CInt(TextBox48.Text) - CInt(TextBox49.Text)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub
End Class
