Imports System.Data.SqlClient
Imports System.Data
Partial Class Inventory_Medical_store_Purchase_Return
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim Show, insert, delete, search, upd As String
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet
    Shared curpos As Integer



    Protected Sub btninsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninsert.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            auto()
            insert = "insert into medicine_supplyer values('" + Session("provide_org_user_id") + "','" + Session("supplier_code") + "','" + txtsupplier_name.Text + "','" + ddltype.SelectedValue + "','" + txtaddress.Text + "'," + txtpan_no.Text + "," + txttax.Text + "," + txtvat_no.Text + "," + txtline_no.Text + "," + txtline_balance_amount.Text + ",'" + txtmode_of_delivery.Text + "')"

            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()
            txtsupplier_code.Text = ""
            ddltype.SelectedValue = ""
            txtaddress.Text = ""
            txtpan_no.Text = ""
            txttax.Text = ""
            txtvat_no.Text = ""
            txtline_no.Text = ""
            txtline_balance_amount.Text = ""
            txtpan_no.Text = ""
            txttax.Text = ""
            txtvat_no.Text = ""
            txtline_no.Text = ""
            txtline_balance_amount.Text = ""
            txtmode_of_delivery.Text = ""

        Catch ex As Exception

            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
        End Try


    End Sub
    '==============================Show Detail========================================
    Sub shows()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Show = "select * from medicine_supplyer where Hospital_id='" + Session("provide_org_user_id") + "' "
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        '=========================Search==================================
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            search = "select * from medicine_supplyer where supplier_code ='" + txtsupplier_code.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
            da = New SqlDataAdapter(search, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_supplyer")
            txtsupplier_code.Text = ds.Tables(0).Rows(0)(1)
            txtsupplier_name.Text = ds.Tables(0).Rows(0)(2)
            ddltype.SelectedValue = ds.Tables(0).Rows(0)(3)
            txtaddress.Text = ds.Tables(0).Rows(0)(4)
            txtpan_no.Text = ds.Tables(0).Rows(0)(5)
            txttax.Text = ds.Tables(0).Rows(0)(6)
            txtvat_no.Text = ds.Tables(0).Rows(0)(7)
            txtline_no.Text = ds.Tables(0).Rows(0)(8)
            txtline_balance_amount.Text = ds.Tables(0).Rows(0)(9)
            txtmode_of_delivery.Text = ds.Tables(0).Rows(0)(10)

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Not Search Completed ')</script>")
        End Try
        con.cn.Close()
        '=================Search End==================================
    End Sub

    Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click

        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            delete = "delete from medicine_supplyer where supplier_code='" + txtsupplier_code.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()

        Catch ex As Exception

            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")

        End Try
        con.cn.Close()
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        upd = "update medicine_supplyer set supplier_code='" + txtsupplier_code.Text + "',supplier_name='" + txtsupplier_name.Text + "',type='" + ddltype.SelectedValue + "',address='" + txtaddress.Text + "',pan_no=" + txtpan_no.Text + ",tax=" + txttax.Text + ",vat_no=" + txtvat_no.Text + ",line_no=" + txtline_no.Text + ",line_balance_amt=" + txtline_balance_amount.Text + ",mode_of_delivary='" + txtmode_of_delivery.Text + "' where supplier_code='" + txtsupplier_code.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
        cmd2 = New SqlCommand(upd, con.cn)
        cmd2.ExecuteNonQuery()
        shows()
        Try

            Response.Write("<script language=javascript>alert('Succesfully Updated Completed ')</script>")

        Catch ex As Exception

            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")

        End Try
        con.cn.Close()

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("provide_org_user_id") = "Hospital001"
        shows()

    End Sub

    Protected Sub btnfirst_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnfirst.Click
        curpos = 0
        show_rec(curpos)
    End Sub

    Protected Sub btnlast_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlast.Click
        curpos = ds.Tables(0).Rows.Count - 1
        show_rec(curpos)
    End Sub
    Sub show_rec(ByVal pos As Integer)

        txtsupplier_code.Text = ds.Tables(0).Rows(pos)(1)
        txtsupplier_name.Text = ds.Tables(0).Rows(pos)(2)
        ddltype.SelectedValue = ds.Tables(0).Rows(pos)(3)
        txtaddress.Text = ds.Tables(0).Rows(pos)(4)
        txtpan_no.Text = ds.Tables(0).Rows(pos)(5)
        txttax.Text = ds.Tables(0).Rows(pos)(6)
        txtvat_no.Text = ds.Tables(0).Rows(pos)(7)
        txtline_no.Text = ds.Tables(0).Rows(pos)(8)
        txtline_balance_amount.Text = ds.Tables(0).Rows(pos)(9)
        txtmode_of_delivery.Text = ds.Tables(0).Rows(pos)(10)

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

    End Sub
    Sub auto()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim str As String
        Dim count As String
        str = "select count(*) from medicine_supplyer where Hospital_id='" + Session("provide_org_user_id") + "'"
        cmd = New SqlCommand(str, con.cn)

        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1
        count = cmd.ExecuteScalar() + 1

        Session("supplier_code") = "supplier00" + count
        con.cn.Close()
    End Sub

End Class
