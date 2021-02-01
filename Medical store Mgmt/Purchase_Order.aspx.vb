Imports System.Data.SqlClient
Imports System.Data

Partial Class Purchase_Order
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ds As New DataSet

    Dim da As New SqlDataAdapter
    Shared curpos As Integer
    Dim insert, delete, search, upd, show, fetch_supplier As String


    Protected Sub btninsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninsert.Click
        '=================================Insert Purchase data ===================================
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            auto()

            insert = "insert into purchse_order values('" + Session("provide_org_user_id") + "','" + Session("po_no") + "','" + txtpodate.Text + "','" + ddlsuppliercode.SelectedValue + "','" + txtpo_supplier_name.Text + "','" + txtsupplier_address.Text + "','" + ddlmedicinecode.SelectedValue + "','" + ddlmedicinename.SelectedValue + "','" + ddluom.SelectedValue + "'," + txtquentity_purchase.Text + "," + txtquantity_rate.Text + "," + txtquantity_value.Text + "," + txtvat.Text + "," + txtvat_amount.Text + "," + txtexcise.Text + "," + txtvat_amount.Text + "," + txtnetpurchase.Text + ")"

            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()


            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            ddlsuppliercode.SelectedValue = ""
            txtsupplier_address.Text = ""
            ddlmedicinename.SelectedValue = ""
            txtquantity_rate.Text = ""
            txtvat.Text = ""
            txtexcise.Text = ""
            txtnetpurchase.Text = ""
            txtpodate.Text = ""
            txtpo_supplier_name.Text = ""
            ddlmedicinecode.SelectedValue = ""
            txtquentity_purchase.Text = ""
            txtquantity_value.Text = ""
            txtvat_amount.Text = ""
            txtexcise_amount.Text = ""
            shows()

        Catch ex As Exception

            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
        End Try
        '===============================Insert Close=======================================
        con.cn.Close()

    End Sub


    Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            delete = "delete from purchse_order where po_no='" + txtpono.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()

        Catch ex As Exception

            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")

        End Try
        con.cn.Close()



    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            search = "select * from purchse_order where po_no='" + txtpono.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search, con.cn)
            ds = New DataSet()
            da.Fill(ds, "purchse_order")
            txtpono.Text = ds.Tables(0).Rows(0)(1)
            txtpodate.Text = ds.Tables(0).Rows(0)(2)
            ddlsuppliercode.SelectedValue = ds.Tables(0).Rows(0)(3)
            txtpo_supplier_name.Text = ds.Tables(0).Rows(0)(4)
            txtsupplier_address.Text = ds.Tables(0).Rows(0)(5)
            ddlmedicinecode.SelectedValue = ds.Tables(0).Rows(0)(6)
            ddlmedicinename.SelectedValue = ds.Tables(0).Rows(0)(7)
            ddluom.SelectedValue = ds.Tables(0).Rows(0)(8)
            txtquentity_purchase.Text = ds.Tables(0).Rows(0)(9)
            txtquantity_rate.Text = ds.Tables(0).Rows(0)(10)
            txtquantity_value.Text = ds.Tables(0).Rows(0)(11)
            txtvat.Text = ds.Tables(0).Rows(0)(12)
            txtvat_amount.Text = ds.Tables(0).Rows(0)(13)
            txtexcise.Text = ds.Tables(0).Rows(0)(14)
            txtexcise_amount.Text = ds.Tables(0).Rows(0)(15)
            txtnetpurchase.Text = ds.Tables(0).Rows(0)(16)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Search is not Found')</script>")
        End Try

        con.cn.Close()


    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
      
        Try
            upd = "update purchse_order set po_no= '" + txtpono.Text + "',po_date='" + txtpodate.Text + "',supplier_code='" + ddlsuppliercode.SelectedValue + "',po_supplier_name='" + txtpo_supplier_name.Text + "',supplier_address='" + txtsupplier_address.Text + "',Madicine_id='" + ddlmedicinecode.SelectedValue + "',description='" + ddlmedicinename.SelectedValue + "',UOM='" + ddluom.SelectedValue + "',quantity_purchase=" + txtquentity_purchase.Text + ",quantity_rate=" + txtquantity_rate.Text + ",quantity_values=" + txtquantity_value.Text + ",vat=" + txtvat.Text + ",vat_amt=" + txtvat_amount.Text + ",excise=" + txtexcise.Text + ",excise_amt=" + txtexcise_amount.Text + ",net_purchase_order_amt=" + txtnetpurchase.Text + " where po_no='" + txtpono.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
            cmd = New SqlCommand(upd, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
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
        txtpono.Text = ds.Tables(0).Rows(pos)(0)
        txtpodate.Text = ds.Tables(0).Rows(pos)(1)
        ddlsuppliercode.SelectedValue = ds.Tables(0).Rows(pos)(2)
        txtpo_supplier_name.Text = ds.Tables(0).Rows(pos)(3)
        txtsupplier_address.Text = ds.Tables(0).Rows(pos)(4)
        ddlmedicinecode.SelectedValue = ds.Tables(0).Rows(pos)(5)
        ddlmedicinename.SelectedValue = ds.Tables(0).Rows(pos)(6)
        txtquentity_purchase.Text = ds.Tables(0).Rows(pos)(7)
        txtquantity_rate.Text = ds.Tables(0).Rows(pos)(8)
        txtquantity_value.Text = ds.Tables(0).Rows(pos)(9)
        txtvat.Text = ds.Tables(0).Rows(pos)(10)
        txtvat_amount.Text = ds.Tables(0).Rows(pos)(11)
        txtexcise.Text = ds.Tables(0).Rows(pos)(12)
        txtexcise_amount.Text = ds.Tables(0).Rows(pos)(13)
        txtnetpurchase.Text = ds.Tables(0).Rows(pos)(14)
    End Sub

    Sub shows()

        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        show = "select * from purchse_order order by po_no "
        da = New SqlDataAdapter(show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

        con.cn.Close()

    End Sub
    Sub auto()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim str As String
        Dim count As String
        str = "select count(*) from purchse_order where Hospital_id='" + Session("provide_org_user_id") + "'"
        cmd = New SqlCommand(str, con.cn)

        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1
        count = cmd.ExecuteScalar() + 1

        Session("po_no") = "po00" + count
        con.cn.Close()
    End Sub

    
    Protected Sub txtquantity_rate_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtquantity_rate.TextChanged
        'quantity * rate
        Try
            txtquantity_value.Text = CInt(txtquentity_purchase.Text) * CInt(txtquantity_rate.Text)
            'VAT AMOUNT
            txtvat_amount.Text = CInt((txtquantity_value.Text) * CInt(txtvat.Text) / 100)

            'EXISE AMOUNT

            txtexcise_amount.Text = CInt((txtquantity_value.Text) * CInt(txtexcise.Text) / 100)

            'total net amount
            txtnetpurchase.Text = CInt((txtquantity_value.Text) + CInt(txtvat_amount.Text) + CInt(txtexcise_amount.Text))

        Catch ex As Exception

        End Try
    End Sub

    Protected Sub txtquentity_purchase_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtquentity_purchase.TextChanged
        'quantity * rate
        Try
            txtquantity_value.Text = CInt(txtquentity_purchase.Text) * CInt(txtquantity_rate.Text)
            'VAT AMOUNT
            txtvat_amount.Text = CInt((txtquantity_value.Text) * CInt(txtvat.Text) / 100)

            'EXISE AMOUNT

            txtexcise_amount.Text = CInt((txtquantity_value.Text) * CInt(txtexcise.Text) / 100)

            'total net amount
            txtnetpurchase.Text = CInt((txtquantity_value.Text) + CInt(txtvat_amount.Text) + CInt(txtexcise_amount.Text))
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub txtvat_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtvat.TextChanged
        'vat amount
        Try
            txtvat_amount.Text = CInt((txtquantity_value.Text) * CInt(txtvat.Text) / 100)
            'total net amount
            txtnetpurchase.Text = CInt((txtquantity_value.Text) + CInt(txtvat_amount.Text) + CInt(txtexcise_amount.Text))
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub txtexcise_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtexcise.TextChanged
        'Excise amount
        Try
            txtexcise_amount.Text = CInt((txtquantity_value.Text) * CInt(txtexcise.Text) / 100)
            'total net amount
            txtnetpurchase.Text = CInt((txtquantity_value.Text) + CInt(txtvat_amount.Text) + CInt(txtexcise_amount.Text))
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub ddlsuppliercode_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlsuppliercode.SelectedIndexChanged
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        Try
            '========================Fetch Supplier data============================================
            fetch_supplier = "select * from medicine_supplyer where supplier_code='" + ddlsuppliercode.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(fetch_supplier, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_supplyer")
            txtpo_supplier_name.Text = ds.Tables(0).Rows(0)(2)
            txtsupplier_address.Text = ds.Tables(0).Rows(0)(4)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        con.cn.Close()

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        shows()
        txtpodate.Text = Today
        Session("provide_org_user_id") = "Hospital001"
    End Sub

 
End Class
