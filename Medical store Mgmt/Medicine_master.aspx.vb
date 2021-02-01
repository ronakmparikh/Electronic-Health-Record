Imports System.Data.SqlClient
Imports System.Data
Partial Class Inventory_Medical_store_Purchase_
    Inherits System.Web.UI.Page
    Dim insert, show, del, search_record, update As String
    Dim cmd As SqlCommand
    Dim con As SqlConnection
    Dim da As SqlDataAdapter
    Dim medicine_id As String
    Dim ds As DataSet
    Shared curpos As Integer

    Protected Sub btninsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninsert.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        medicine_id = ddlmedicine_grade.SelectedValue & txtmedicine_id.Text

        Try

            insert = "insert into medicine_order values('" + Session("provide_org_user_id") + "','" + medicine_id + "','" + txtmedicine_name.Text + "','" + txtcompany_name.Text + "','" + txtcompany_address.Text + "','" + txtpurchase_date.Text + "','" + txtmfg_date.Text + "','" + txtbatch_no.Text + "','" + txtlotno.Text + "','" + txtexpiry_date.Text + "','" + ddlmedicine_grade.SelectedValue + "','" + ddluom.SelectedValue + "'," + txtquantity.Text + "," + txtrate.Text + "," + txttax_rate.Text + "," + txtmin_level.Text + ",'" + txtabc_classification.Text + "'," + txtmax_level.Text + "," + txtreader_level.Text + ")"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub
    Sub shows()

        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from medicine_order where Hospital_id='" + Session("provide_org_user_id") + "' "

        da = New SqlDataAdapter(show, con.cn)
        ds = New DataSet()

        da.Fill(ds)

        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

        con.cn.Close()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("provide_org_user_id") = "Hospital001"
        shows()

    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        search()
        search_record = "select * from medicine_order where Madicine_id ='" + txtmedicine_id.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
        da = New SqlDataAdapter(search_record, con.cn)
        ds = New DataSet()
        da.Fill(ds, "Medicine_id")
        txtmedicine_id.Text = ds.Tables(0).Rows(0)(1)
        txtmedicine_name.Text = ds.Tables(0).Rows(0)(2)
        txtcompany_name.Text = ds.Tables(0).Rows(0)(3)
        txtcompany_address.Text = ds.Tables(0).Rows(0)(4)
        txtpurchase_date.Text = ds.Tables(0).Rows(0)(5)
        txtmfg_date.Text = ds.Tables(0).Rows(0)(6)
        txtbatch_no.Text = ds.Tables(0).Rows(0)(7)
        txtlotno.Text = ds.Tables(0).Rows(0)(8)
        txtexpiry_date.Text = ds.Tables(0).Rows(0)(9)
        ddlmedicine_grade.SelectedValue = ds.Tables(0).Rows(0)(10)
        ddluom.SelectedValue = ds.Tables(0).Rows(0)(11)
        txtquantity.Text = ds.Tables(0).Rows(0)(12)
        txtrate.Text = ds.Tables(0).Rows(0)(13)
        txttax_rate.Text = ds.Tables(0).Rows(0)(14)
        txtmin_level.Text = ds.Tables(0).Rows(0)(15)
        txtabc_classification.Text = ds.Tables(0).Rows(0)(16)
        txtmax_level.Text = ds.Tables(0).Rows(0)(17)
        txtreader_level.Text = ds.Tables(0).Rows(0)(18)

        con.cn.Close()

    End Sub
    Sub search()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from medicine_order where Madicine_id ='" + txtmedicine_id.Text + "'"

        da = New SqlDataAdapter(show, con.cn)
        ds = New DataSet()

        da.Fill(ds)


        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

        con.cn.Close()
    End Sub

    Protected Sub btnfirst_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnfirst.Click
        curpos = 0
        show_rec(curpos)
    End Sub

    Protected Sub btnpre_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnpre.Click
        If curpos > 0 Then
            curpos = curpos - 1

        End If
        show_rec(curpos)
    End Sub

    Protected Sub btnforward_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnforward.Click
        If curpos < ds.Tables(0).Rows.Count - 1 Then
            curpos = curpos + 1

        End If
        show_rec(curpos)
    End Sub

    Protected Sub btnlast_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlast.Click
        curpos = ds.Tables(0).Rows.Count - 1
        show_rec(curpos)
    End Sub
    Sub show_rec(ByVal pos As Integer)

        txtmedicine_id.Text = ds.Tables(0).Rows(pos)(1)
        txtmedicine_name.Text = ds.Tables(0).Rows(pos)(2)
        txtcompany_name.Text = ds.Tables(0).Rows(pos)(3)
        txtcompany_address.Text = ds.Tables(0).Rows(pos)(4)
        txtpurchase_date.Text = ds.Tables(0).Rows(pos)(5)
        txtmfg_date.Text = ds.Tables(0).Rows(pos)(6)
        txtbatch_no.Text = ds.Tables(0).Rows(pos)(7)
        txtlotno.Text = ds.Tables(0).Rows(pos)(8)
        txtexpiry_date.Text = ds.Tables(0).Rows(pos)(9)
        ddlmedicine_grade.SelectedValue = ds.Tables(0).Rows(pos)(10)
        ddluom.SelectedValue = ds.Tables(0).Rows(pos)(11)
        txtquantity.Text = ds.Tables(0).Rows(pos)(12)
        txtrate.Text = ds.Tables(0).Rows(pos)(13)
        txttax_rate.Text = ds.Tables(0).Rows(pos)(14)
        txtmin_level.Text = ds.Tables(0).Rows(pos)(15)
        txtabc_classification.Text = ds.Tables(0).Rows(pos)(16)
        txtmax_level.Text = ds.Tables(0).Rows(pos)(17)
        txtreader_level.Text = ds.Tables(0).Rows(pos)(18)

    End Sub

    Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        del = "delete from medicine_order where Madicine_id ='" + txtmedicine_id.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
        Try
            cmd = New SqlCommand(Del, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('DeleteSuccesfully Completed ')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")

        End Try

        con.cn.Close()
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Dim con As New Connection()
        con.Connection()

        con.cn.Open()
        Try
            update = "update medicine_order set  Madicine_id= '" + medicine_id + "',medicine_name='" + txtmedicine_name.Text + "',company_name='" + txtcompany_name.Text + "',company_address='" + txtcompany_address.Text + "',purchase_date='" + txtpurchase_date.Text + "',mfg_date='" + txtmfg_date.Text + "',batch_no='" + txtbatch_no.Text + "',lot_no='" + txtlotno.Text + "',expiry_date='" + txtexpiry_date.Text + "',medicine_grade='" + ddlmedicine_grade.SelectedValue + "',uom='" + ddluom.SelectedValue + "',qty=" + txtquantity.Text + ",rate=" + txtrate.Text + ",tax_rate=" + txttax_rate.Text + ",min_level=" + txtmin_level.Text + ",abc_classification='" + txtabc_classification.Text + "',max_level=" + txtmax_level.Text + ",reader_level=" + txtreader_level.Text + " where   Madicine_id= '" + medicine_id + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            cmd = New SqlCommand(update, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Updated ')</script>")
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Updated ')</script>")
        End Try
        con.cn.Close()
    End Sub
End Class
