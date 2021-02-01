Imports System.Data.SqlClient
Imports System.Data
Partial Class Inventory_Medical_store_Issue_medicine
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd_update, cmd_search As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim update_medicine, insert, search_medicine, insert_po, qty, update, delete, search, show As String
    Protected Sub btninsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninsert.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        auto()
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where Madicine_id='" + ddlmedicine_id.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '========================Medicine _master end===================================================================
        '=========================check quantity=====================
        If (CInt(txtrequested_qty.Text) > qty) Then
            MsgBox("qty is = " & qty & " not more as = " & txtrequested_qty.Text)
            Dim order As MsgBoxResult
            order = MsgBox("Do you want to purchase order this Medicine", MsgBoxStyle.YesNo)
            '================================
            If (qty = "m") Then
                '=============Purchase Order Generate=======================
                '   Try
                'insert_po = "insert into purchse_order values('" + txtpono.Text + "','" + txtpodate.Text + "','" + txtpo_supplier_code.Text + "','" + txtpo_supplier_name.Text + "','" + txtsupplier_address.Text + "','" + txtitem_code.Text + "','" + txtdescriptin.Text + "'," + txtquentity_purchase.Text + "," + txtquantity_rate.Text + "," + txtquantity_value.Text + "," + txtvat.Text + "," + txtvat_amount.Text + "," + txtexcise.Text + "," + txtvat_amount.Text + "," + txtnetpurchase.Text + ")"

                'cmd = New SqlCommand(insert, con.cn)
                'cmd.ExecuteNonQuery()
                'Response.Write("<script language=javascript>alert('purchase Order is Genreted ')</script>")
                ' Catch ex As Exception

                ' End Try
                '==========End purchase order===================
            Else

            End If
            '================ End check quantity================
        Else
            '============================Update medicine qty========================================================
            Dim final_qty As String = CInt(qty) - CInt(txtIssued_qty.Text)
            Try
                update_medicine = "update medicine_order set qty= '" + final_qty + "' where Madicine_id='" + ddlmedicine_id.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
                cmd = New SqlCommand(update_medicine, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

            End Try
            '============================Update medicine qty End====================================================
            '============================insert Issue_medicine=======================================================
            Try
                insert = "insert into Issue_medicine values('" + Session("provide_org_user_id") + "','" + Session("issue") + "','" + txtissue_date.Text + "','" + ddlmedicine_grade.SelectedValue + "','" + ddlmedicine_id.SelectedValue + "','" + ddldescription.SelectedValue + "','" + txtrequested_by.Text + "','" + ddlpatient_id.SelectedValue + "','" + ddlde0partment.SelectedValue + "'," + txtrequested_qty.Text + "," + txtavailable_qty.Text + "," + txtIssued_qty.Text + ",'" + ddlrate.SelectedValue + "','" + txttotalrate.Text + "')"
                cmd = New SqlCommand(insert, con.cn)

                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
                issue()

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")

            End Try
            '======================insert Issue_medicine End========================================================
            con.cn.Close()
        End If
        '==========================check quantity end======================
    End Sub

    Protected Sub txtrequested_by_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtrequested_by.TextChanged
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            '========================show avaliable Qty============================================
            search_medicine = "select * from medicine_order where Madicine_id='" + ddlmedicine_id.SelectedValue + "' and medicine_name='" + ddldescription.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            txtavailable_qty.Text = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            ' Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtissue_date.Text = Today
        Session("provide_org_user_id") = "Hospital001"
        issue()

    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click

        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        Try
            update = "update Return_medicine set Issue_no= '" + txtissue_no.Text + "',issue_date='" + txtissue_date.Text + "',medicine_grade='" + ddlmedicine_grade.SelectedValue + "',Madicine_id='" + ddlmedicine_id.SelectedValue + "',description='" + ddldescription.SelectedValue + "',require_by='" + txtrequested_by.Text + "',issued_to='" + txtissue_no.Text + "',department='" + ddlde0partment.SelectedValue + "',requested_qty=" + txtrequested_qty.Text + ",available_qty=" + txtavailable_qty.Text + ",issued_qty=" + txtIssued_qty.Text + " where Issue_no='" + txtissue_no.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
            cmd = New SqlCommand(update, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            issue()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub

    Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            delete = "delete from Issue_medicine where Issue_no='" + txtissue_no.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            issue()


        Catch ex As Exception

            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")

        End Try
        con.cn.Close()
    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        '        Dim con As New Connection()
        '       con.Connection()
        '      con.cn.Open()

        '     Try
        'search = "select * from Issue_medicine where Issue_no='" + txtissue_date.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
        'da = New SqlDataAdapter(search, con.cn)
        'ds = New DataSet()
        'da.Fill(ds, "Return_medicine")
        'txtissue_no.Text = ds.Tables(0).Rows(0)(1)
        'txtissue_date.Text = ds.Tables(0).Rows(0)(2)
        'ddlmedicine_grade.SelectedValue = ds.Tables(0).Rows(0)(3)
        'ddlmedicine_id.SelectedValue = ds.Tables(0).Rows(0)(4)
        'ddldescription.SelectedValue = ds.Tables(0).Rows(0)(5)
        'txtrequested_by.Text = ds.Tables(0).Rows(0)(6)
        'ddlde0partment.SelectedValue = ds.Tables(0).Rows(0)(7)
        'txtrequested_qty.Text = ds.Tables(0).Rows(0)(8)
        'txtavailable_qty.Text = ds.Tables(0).Rows(0)(9)

        '        txtIssued_qty.Text = ds.Tables(0).Rows(0)(10)
        '       Response.Write("<script language=javascript>alert('Search is Found')</script>")
        '      issue()

        '     Catch ex As Exception


        searc()

        '    Response.Write("<script language=javascript>alert('Search is not Found')</script>")
        '   End Try
        '  con.cn.Close()

    End Sub
    Sub auto()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim str As String
        Dim count As String
        str = "select count(*) from Issue_medicine where Hospital_id='" + Session("provide_org_user_id") + "'"
        cmd = New SqlCommand(str, con.cn)

        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1
        count = cmd.ExecuteScalar() + 1

        Session("issue") = "issue00" + count
        con.cn.Close()
    End Sub
    '  Sub generate_P_order()
    'Dim con As New Connection()
    '   con.Connection()
    '  con.cn.Open()
    ' Try
    '    auto()

    '   insert = "insert into purchse_order values('" + Session("provide_org_user_id") + "','" + Session("po_no") + "','" + txtpodate.Text + "','" + ddlsuppliercode.SelectedValue + "','" + txtpo_supplier_name.Text + "','" + txtsupplier_address.Text + "','" + ddlmedicinecode.SelectedValue + "','" + ddlmedicinename.SelectedValue + "','" + ddluom.SelectedValue + "'," + txtquentity_purchase.Text + "," + txtquantity_rate.Text + "," + txtquantity_value.Text + "," + txtvat.Text + "," + txtvat_amount.Text + "," + txtexcise.Text + "," + txtvat_amount.Text + "," + txtnetpurchase.Text + ")"

    '  cmd = New SqlCommand(insert, con.cn)
    ' cmd.ExecuteNonQuery()


    'Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")


    'Catch ex As Exception

    '   Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
    ' End Try
    '===============================Insert Close=======================================
    '   con.cn.Close()
    'End Sub
    Sub issue()

        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from Issue_medicine where Hospital_id='" + Session("provide_org_user_id") + "' "

        da = New SqlDataAdapter(show, con.cn)
        ds = New DataSet()

        da.Fill(ds)

        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

        con.cn.Close()

    End Sub

    Protected Sub txtIssued_qty_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtIssued_qty.TextChanged
        Try
            txttotalrate.Text = CInt(ddlrate.SelectedValue) * CInt(txtIssued_qty.Text)
        Catch ex As Exception

        End Try

    End Sub

    Sub searc()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        search = "select * from Issue_medicine where Issue_no='" + txtissue_no.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
        da = New SqlDataAdapter(search, con.cn)
        ds = New DataSet()

        da.Fill(ds, "Issue_medicine")

        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

        con.cn.Close()
    End Sub
End Class
