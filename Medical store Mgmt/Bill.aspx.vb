Imports System.Data.SqlClient
Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page

    Dim insert_bill_master As String
    Dim cmd As SqlCommand
    Dim search_medicine, qty, update_medicine As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet

    Protected Sub txtqty_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtqty.TextChanged
        Try
            txtamount.Text = CInt(txtqty.Text) * CInt(ddlrate1.SelectedValue)
            txttotalamount.Text = txtamount.Text
        Catch ex As Exception

        End Try
        
    End Sub
    Protected Sub qty1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles qty1.TextChanged
        Try
            txtamount1.Text = CInt(qty1.Text) * CInt(ddlrate2.SelectedValue)
            txttotalamount.Text = CInt(txtamount.Text) + CInt(txtamount1.Text)
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub qty2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles qty2.TextChanged
        Try
            txtamount2.Text = CInt(qty2.Text) * CInt(ddlrate3.SelectedValue)
            txttotalamount.Text = CInt(txtamount.Text) + CInt(txtamount1.Text) + CInt(txtamount2.Text)
        Catch ex As Exception

        End Try
    End Sub
    Protected Sub qty3_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles qty3.TextChanged
        Try
            txtamount3.Text = CInt(qty3.Text) * CInt(ddlrate4.SelectedValue)
            txttotalamount.Text = CInt(txtamount.Text) + CInt(txtamount1.Text) + CInt(txtamount2.Text) + CInt(txtamount3.Text)
        Catch ex As Exception

        End Try
    End Sub
    Protected Sub qty4_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles qty4.TextChanged
        Try
            txtamount4.Text = CInt(qty4.Text) * CInt(ddlrate5.SelectedValue)
            txttotalamount.Text = CInt(txtamount.Text) + CInt(txtamount1.Text) + CInt(txtamount2.Text) + CInt(txtamount3.Text) + CInt(txtamount4.Text)
        Catch ex As Exception

        End Try
    End Sub
    Protected Sub qty5_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles qty5.TextChanged
        Try
            txtamount5.Text = CInt(qty5.Text) * CInt(ddlrate6.SelectedValue)
            txttotalamount.Text = CInt(txtamount.Text) + CInt(txtamount1.Text) + CInt(txtamount2.Text) + CInt(txtamount3.Text) + CInt(txtamount4.Text) + CInt(txtamount5.Text)

        Catch ex As Exception

        End Try
    End Sub
    Protected Sub qty6_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles qty6.TextChanged
        Try
            txtamount6.Text = CInt(qty6.Text) * CInt(ddlrate7.SelectedValue)
            txttotalamount.Text = CInt(txtamount.Text) + CInt(txtamount1.Text) + CInt(txtamount2.Text) + CInt(txtamount3.Text) + CInt(txtamount4.Text) + CInt(txtamount5.Text) + CInt(txtamount6.Text)

        Catch ex As Exception

        End Try
    End Sub
    Protected Sub qty7_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles qty7.TextChanged
        Try
            txtamount7.Text = CInt(qty7.Text) * CInt(ddlrate8.SelectedValue)
            txttotalamount.Text = CInt(txtamount.Text) + CInt(txtamount1.Text) + CInt(txtamount2.Text) + CInt(txtamount3.Text) + CInt(txtamount4.Text) + CInt(txtamount5.Text) + CInt(txtamount6.Text) + CInt(txtamount7.Text)

        Catch ex As Exception

        End Try
    End Sub
    Protected Sub qty8_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles qty8.TextChanged
        Try
            txtamount8.Text = CInt(qty8.Text) * CInt(ddlrate9.SelectedValue)
            txttotalamount.Text = CInt(txtamount.Text) + CInt(txtamount1.Text) + CInt(txtamount2.Text) + CInt(txtamount3.Text) + CInt(txtamount4.Text) + CInt(txtamount5.Text) + CInt(txtamount6.Text) + CInt(txtamount7.Text) + CInt(txtamount8.Text)

        Catch ex As Exception

        End Try
    End Sub
    Protected Sub qty9_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles qty9.TextChanged
        Try
            txtamount9.Text = CInt(qty9.Text) * CInt(ddlrate9.SelectedValue)
            txttotalamount.Text = CInt(txtamount.Text) + CInt(txtamount1.Text) + CInt(txtamount2.Text) + CInt(txtamount3.Text) + CInt(txtamount4.Text) + CInt(txtamount5.Text) + CInt(txtamount6.Text) + CInt(txtamount7.Text) + CInt(txtamount8.Text) + CInt(txtamount9.Text)

        Catch ex As Exception

        End Try
    End Sub
    Protected Sub qty10_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles qty10.TextChanged
        Try
            txtamount10.Text = CInt(qty10.Text) * CInt(ddlrate11.SelectedValue)
            txttotalamount.Text = CInt(txtamount.Text) + CInt(txtamount1.Text) + CInt(txtamount2.Text) + CInt(txtamount3.Text) + CInt(txtamount4.Text) + CInt(txtamount5.Text) + CInt(txtamount6.Text) + CInt(txtamount7.Text) + CInt(txtamount8.Text) + CInt(txtamount9.Text) + CInt(txtamount10.Text)

        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim del As String
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        del = "delete from dummy_master_table"
        cmd = New SqlCommand(del, con.cn)
        cmd.ExecuteNonQuery()
        auto()
        insert_bill_master = "insert into dummy_master_table values('" + Session("provide_org_user_id") + "','" + Session("bill_no") + "','" + txtdate.Text + "','" + ddldoctorid.SelectedValue + "','" + ddldoctorname.SelectedValue + "','" + ddlpatient_id.SelectedValue + "','" + ddlpatient_name.SelectedValue + "','" + txtaddress.Text + "')"
        cmd = New SqlCommand(insert_bill_master, con.cn)
        cmd.ExecuteNonQuery()
        Try

            insert_bill_master = "insert into Bill_master values('" + Session("provide_org_user_id") + "','" + Session("bill_no") + "','" + txtdate.Text + "','" + ddldoctorid.SelectedValue + "','" + ddldoctorname.SelectedValue + "','" + ddlpatient_id.SelectedValue + "','" + ddlpatient_name.SelectedValue + "','" + txtaddress.Text + "')"
            cmd = New SqlCommand(insert_bill_master, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('bill not success ')</script>")
        End Try

        con.cn.Close()


    End Sub

    Protected Sub btnadd1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd1.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        '===========================================Medicine Qty Search================================
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where medicine_name='" + ddlparticular1.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '==============================================================================================
        If (CInt(txtqty.Text) > qty) Then
            MsgBox("qty is = " & qty & " not more as = " & txtqty.Text)
        Else
            '=========================qty update=========================
            Dim final_qty As String = CInt(qty) - CInt(txtqty.Text)
            Try
                update_medicine = "update medicine_order set qty= '" + final_qty + "' where batch_no='" + ddlbatch0.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
                cmd = New SqlCommand(update_medicine, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

            End Try
            '============================================================
            Try

                insert_bill_master = "insert into Bill_detail values('" + Session("provide_org_user_id") + "','" + Session("bill_no") + "','" + txtserialno.Text + "','" + ddlmedicine_grade.SelectedValue + "','" + ddlparticular1.SelectedValue + "','" + txtqty.Text + "','" + ddlmfg01.SelectedValue + "','" + ddlbatch0.SelectedValue + "','" + ddlexp01.SelectedValue + "','" + ddlrate1.SelectedValue + "','" + ddltax1.SelectedValue + "','" + txtamount.Text + "','" + txttotalamount.Text + "')"
                cmd = New SqlCommand(insert_bill_master, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('bill not success ')</script>")
            End Try
        End If
        con.cn.Close()

    End Sub

    Protected Sub btnadd2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd2.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        '===========================================Medicine Qty Search================================
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where medicine_name='" + ddlparticular2.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '==============================================================================================
        If (CInt(qty1.Text) > qty) Then
            MsgBox("qty is = " & qty & " not more as = " & qty1.Text)
        Else
            '=========================qty update=========================
            Dim final_qty As String = CInt(qty) - CInt(qty1.Text)
            Try
                update_medicine = "update medicine_order set qty= '" + final_qty + "' where batch_no='" + ddlbatch1.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
                cmd = New SqlCommand(update_medicine, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

            End Try
            '============================================================
            Try

                insert_bill_master = "insert into Bill_detail values('" + Session("provide_org_user_id") + "','" + Session("bill_no") + "','" + txtserialno1.Text + "','" + ddlmedicine_grade0.SelectedValue + "','" + ddlparticular2.SelectedValue + "','" + qty1.Text + "','" + ddlmfg2.SelectedValue + "','" + ddlbatch1.SelectedValue + "','" + ddlexp2.SelectedValue + "','" + ddlrate2.SelectedValue + "','" + ddltax2.SelectedValue + "','" + txtamount1.Text + "','" + txttotalamount.Text + "')"
                cmd = New SqlCommand(insert_bill_master, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('bill not success ')</script>")
            End Try
        End If

        con.cn.Close()
    End Sub

    Protected Sub btnadd3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd3.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        '===========================================Medicine Qty Search================================
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where medicine_name='" + ddlparticular3.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '==============================================================================================
        If (CInt(qty2.Text) > qty) Then
            MsgBox("qty is = " & qty & " not more as = " & qty2.Text)
        Else
            '=========================qty update=========================
            Dim final_qty As String = CInt(qty) - CInt(qty2.Text)
            Try
                update_medicine = "update medicine_order set qty= '" + final_qty + "' where batch_no='" + ddlbatch2.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
                cmd = New SqlCommand(update_medicine, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

            End Try
            '============================================================

            Try

                insert_bill_master = "insert into Bill_detail values('" + Session("provide_org_user_id") + "','" + Session("bill_no") + "','" + txtserialno2.Text + "','" + ddlmedicine_grade1.SelectedValue + "','" + ddlparticular3.SelectedValue + "','" + qty2.Text + "','" + ddlmfg3.SelectedValue + "','" + ddlbatch2.SelectedValue + "','" + ddlexp3.SelectedValue + "','" + ddlrate3.SelectedValue + "','" + ddltax3.SelectedValue + "','" + txtamount2.Text + "','" + txttotalamount.Text + "')"
                cmd = New SqlCommand(insert_bill_master, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('bill not success ')</script>")
            End Try
        End If

        con.cn.Close()
    End Sub

    Protected Sub btnadd4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd4.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        '===========================================Medicine Qty Search================================
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where medicine_name='" + ddlparticular4.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '==============================================================================================
        If (CInt(qty3.Text) > qty) Then
            MsgBox("qty is = " & qty & " not more as = " & qty3.Text)
        Else
            '=========================qty update=========================
            Dim final_qty As String = CInt(qty) - CInt(qty3.Text)
            Try
                update_medicine = "update medicine_order set qty= '" + final_qty + "' where batch_no='" + ddlbatch3.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
                cmd = New SqlCommand(update_medicine, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

            End Try
            '============================================================
            Try
                insert_bill_master = "insert into Bill_detail values('" + Session("provide_org_user_id") + "','" + Session("bill_no") + "','" + txtserialno3.Text + "','" + ddlmedicine_grade4.SelectedValue + "','" + ddlparticular4.SelectedValue + "','" + qty3.Text + "','" + ddlmfg4.SelectedValue + "','" + ddlbatch3.SelectedValue + "','" + ddlexp4.SelectedValue + "','" + ddlrate4.SelectedValue + "','" + ddltax4.SelectedValue + "','" + txtamount3.Text + "','" + txttotalamount.Text + "')"
                cmd = New SqlCommand(insert_bill_master, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('bill not success ')</script>")
            End Try
        End If
        con.cn.Close()
    End Sub

    Protected Sub btnadd5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd5.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        '===========================================Medicine Qty Search================================
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where medicine_name='" + ddlparticular5.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '==============================================================================================
        If (CInt(qty4.Text) > qty) Then
            MsgBox("qty is = " & qty & " not more as = " & qty4.Text)
        Else
            '=========================qty update=========================
            Dim final_qty As String = CInt(qty) - CInt(qty4.Text)
            Try
                update_medicine = "update medicine_order set qty= '" + final_qty + "' where batch_no='" + ddlbatch4.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
                cmd = New SqlCommand(update_medicine, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

            End Try
            '============================================================
            Try

                insert_bill_master = "insert into Bill_detail values('" + Session("provide_org_user_id") + "','" + Session("bill_no") + "','" + txtserialno4.Text + "','" + ddlmedicine_grade5.SelectedValue + "','" + ddlparticular5.SelectedValue + "','" + qty4.Text + "','" + ddlmfg5.SelectedValue + "','" + ddlbatch4.SelectedValue + "','" + ddlexp5.SelectedValue + "','" + ddlrate5.SelectedValue + "','" + ddltax5.SelectedValue + "','" + txtamount4.Text + "','" + txttotalamount.Text + "')"
                cmd = New SqlCommand(insert_bill_master, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('bill not success ')</script>")
            End Try
        End If

        con.cn.Close()
    End Sub

    Protected Sub btnadd6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd6.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        '===========================================Medicine Qty Search================================
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where medicine_name='" + ddlparticular6.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '==============================================================================================
        If (CInt(qty5.Text) > qty) Then
            MsgBox("qty is = " & qty & " not more as = " & qty5.Text)
        Else
            '=========================qty update=========================
            Dim final_qty As String = CInt(qty) - CInt(qty5.Text)
            Try
                update_medicine = "update medicine_order set qty= '" + final_qty + "' where batch_no='" + ddlbatch5.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
                cmd = New SqlCommand(update_medicine, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

            End Try
            '============================================================
            Try

                insert_bill_master = "insert into Bill_detail values('" + Session("provide_org_user_id") + "','" + Session("bill_no") + "','" + txtserialno5.Text + "','" + ddlmedicine_grade6.SelectedValue + "','" + ddlparticular6.SelectedValue + "','" + qty5.Text + "','" + ddlmfg6.SelectedValue + "','" + ddlbatch5.SelectedValue + "','" + ddlexp6.SelectedValue + "','" + ddlrate6.SelectedValue + "','" + ddltax6.SelectedValue + "','" + txtamount5.Text + "','" + txttotalamount.Text + "')"
                cmd = New SqlCommand(insert_bill_master, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('bill not success ')</script>")
            End Try
        End If

        con.cn.Close()
    End Sub

    Protected Sub btnadd7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd7.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        '===========================================Medicine Qty Search================================
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where medicine_name='" + ddlparticular7.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '==============================================================================================
        If (CInt(qty6.Text) > qty) Then
            MsgBox("qty is = " & qty & " not more as = " & qty6.Text)
        Else
            '=========================qty update=========================
            Dim final_qty As String = CInt(qty) - CInt(qty6.Text)
            Try
                update_medicine = "update medicine_order set qty= '" + final_qty + "' where batch_no='" + ddlbatch6.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
                cmd = New SqlCommand(update_medicine, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

            End Try
            '============================================================
            Try

                insert_bill_master = "insert into Bill_detail values('" + Session("provide_org_user_id") + "','" + txtbillno.Text + "','" + txtserialno6.Text + "','" + ddlmedicine_grade7.SelectedValue + "','" + ddlparticular7.SelectedValue + "','" + qty6.Text + "','" + ddlmfg7.SelectedValue + "','" + ddlbatch6.SelectedValue + "','" + ddlexp7.SelectedValue + "','" + ddlrate7.SelectedValue + "','" + ddltax7.SelectedValue + "','" + txtamount6.Text + "','" + txttotalamount.Text + "')"
                cmd = New SqlCommand(insert_bill_master, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('bill not success ')</script>")
            End Try
        End If
        con.cn.Close()
    End Sub

    Protected Sub btnadd8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd8.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        '===========================================Medicine Qty Search================================
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where medicine_name='" + ddlparticular8.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '==============================================================================================
        If (CInt(qty7.Text) > qty) Then
            MsgBox("qty is = " & qty & " not more as = " & qty7.Text)
        Else
            '=========================qty update=========================
            Dim final_qty As String = CInt(qty) - CInt(qty7.Text)
            Try
                update_medicine = "update medicine_order set qty= '" + final_qty + "' where batch_no='" + ddlbatch7.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
                cmd = New SqlCommand(update_medicine, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

            End Try
            '============================================================
            Try

                insert_bill_master = "insert into Bill_detail values('" + Session("provide_org_user_id") + "','" + Session("bill_no") + "','" + txtserialno7.Text + "','" + ddlmedicine_grade8.SelectedValue + "','" + ddlparticular8.SelectedValue + "','" + qty7.Text + "','" + ddlmfg8.SelectedValue + "','" + ddlbatch7.SelectedValue + "','" + ddlexp8.SelectedValue + "','" + ddlrate8.SelectedValue + "','" + ddltax8.SelectedValue + "','" + txtamount7.Text + "','" + txttotalamount.Text + "')"
                cmd = New SqlCommand(insert_bill_master, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('bill not success ')</script>")
            End Try
        End If

        con.cn.Close()
    End Sub

    Protected Sub btnadd9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd9.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        '===========================================Medicine Qty Search================================
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where medicine_name='" + ddlparticular9.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '==============================================================================================
        If (CInt(qty8.Text) > qty) Then
            MsgBox("qty is = " & qty & " not more as = " & qty8.Text)
        Else
            '=========================qty update=========================
            Dim final_qty As String = CInt(qty) - CInt(qty8.Text)
            Try
                update_medicine = "update medicine_order set qty= '" + final_qty + "' where batch_no='" + ddlbatch8.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
                cmd = New SqlCommand(update_medicine, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

            End Try
            '============================================================
            Try

                insert_bill_master = "insert into Bill_detail values('" + Session("provide_org_user_id") + "','" + Session("bill_no") + "','" + txtserialno8.Text + "','" + ddlmedicine_grade9.SelectedValue + "','" + ddlparticular9.SelectedValue + "','" + qty8.Text + "','" + ddlmfg9.SelectedValue + "','" + ddlbatch8.SelectedValue + "','" + ddlexp9.SelectedValue + "','" + ddlrate9.SelectedValue + "','" + ddltax9.SelectedValue + "','" + txtamount8.Text + "','" + txttotalamount.Text + "')"
                cmd = New SqlCommand(insert_bill_master, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('bill not success ')</script>")
            End Try
        End If

        con.cn.Close()
    End Sub

    Protected Sub btnadd10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd10.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        '===========================================Medicine Qty Search================================
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where medicine_name='" + ddlparticular10.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '==============================================================================================
        If (CInt(qty9.Text) > qty) Then
            MsgBox("qty is = " & qty & " not more as = " & qty9.Text)
        Else
            '=========================qty update=========================
            Dim final_qty As String = CInt(qty) - CInt(qty9.Text)
            Try
                update_medicine = "update medicine_order set qty= '" + final_qty + "' where batch_no='" + ddlbatch9.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
                cmd = New SqlCommand(update_medicine, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

            End Try
            '============================================================
            Try

                insert_bill_master = "insert into Bill_detail values('" + Session("provide_org_user_id") + "','" + Session("bill_no") + "','" + txtserialno9.Text + "','" + ddlmedicine_grade10.SelectedValue + "','" + ddlparticular10.SelectedValue + "','" + qty9.Text + "','" + ddlmfg10.SelectedValue + "','" + ddlbatch9.SelectedValue + "','" + ddlexp10.SelectedValue + "','" + ddlrate10.SelectedValue + "','" + ddltax10.SelectedValue + "','" + txtamount9.Text + "','" + txttotalamount.Text + "')"
                cmd = New SqlCommand(insert_bill_master, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('bill not success ')</script>")

            End Try
        End If
        con.cn.Close()
    End Sub

    Protected Sub btnadd11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd11.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        '===========================================Medicine Qty Search================================
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where medicine_name='" + ddlparticular11.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '==============================================================================================
        If (CInt(qty10.Text) > qty) Then
            MsgBox("qty is = " & qty & " not more as = " & qty10.Text)
        Else
            '=========================qty update=========================
            Dim final_qty As String = CInt(qty) - CInt(qty10.Text)
            Try
                update_medicine = "update medicine_order set qty= '" + final_qty + "' where batch_no='" + ddlbatch10.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
                cmd = New SqlCommand(update_medicine, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")

            Catch ex As Exception

                Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

            End Try
            '============================================================
            Try

                insert_bill_master = "insert into Bill_detail values('" + Session("provide_org_user_id") + "','" + Session("bill_no") + "','" + txtserialno10.Text + "','" + ddlmedicine_grade11.SelectedValue + "','" + ddlparticular11.SelectedValue + "','" + qty10.Text + "','" + ddlmfg11.SelectedValue + "','" + ddlbatch10.SelectedValue + "','" + ddlexp11.SelectedValue + "','" + ddlrate11.SelectedValue + "','" + ddltax11.SelectedValue + "','" + txtamount10.Text + "','" + txttotalamount.Text + "')"
                cmd = New SqlCommand(insert_bill_master, con.cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            Catch ex As Exception
                Response.Write("<script language=javascript>alert('bill not success ')</script>")
            End Try
        End If
        con.cn.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Session("provide_org_user_id") = "Hospital001"
        txtdate.Text = Today
        '        auto()


    End Sub
    Sub auto()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim str As String
        Dim count As String
        str = "select count(*) from Bill_master where Hospital_id='" + Session("provide_org_user_id") + "'"
        cmd = New SqlCommand(str, con.cn)

        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1
        count = cmd.ExecuteScalar() + 1

        Session("bill_no") = count
        con.cn.Close()
    End Sub

   
    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        Dim popup As String = "<script language='javascript'>" & "window.open('Show_priscription.aspx','CustomPopUp', " & "'fullscreen=no,height=200,width=800,top=250,left=250,location=0,directories=0,status=no,scrollbars=yes, dependant = no, alwaysRaised = yes, menubar=no,resizable=no')" & "</script>"
        ScriptManager.RegisterClientScriptBlock(Me.Page, Me.[GetType](), "PopupScript", popup, False)

    End Sub

    Protected Sub ddldoctorid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddldoctorid.SelectedIndexChanged
        Session("doctor_id") = ddldoctorid.SelectedValue
    End Sub

    Protected Sub ddlpatient_id_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlpatient_id.SelectedIndexChanged
        Session("patient_id") = ddlpatient_id.SelectedValue
    End Sub


End Class
