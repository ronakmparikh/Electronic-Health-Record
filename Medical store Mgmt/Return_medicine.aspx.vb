Imports System.Data.SqlClient
Imports System.Data
Partial Class Inventory_Medical_store_Return_medicine
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Dim ds As DataSet
    Dim da As SqlDataAdapter
    Dim insert, update_medicine, qty, search_medicine, delete, search, show As String
    Protected Sub txtreturn_qty_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtreturn_qty.TextChanged
        txtusable_qty.Text = CInt(ddlissued_qty.SelectedValue) - CInt(txtreturn_qty.Text)
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where Madicine_id='" + ddlmedicine_id.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            qty = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            'Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        txtavailable_qty.Text = CInt(qty) + CInt(txtreturn_qty.Text)
    End Sub

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
            'Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
        '=======================medicine Qty updated==============================
        Dim final_qty As String = CInt(qty) + CInt(txtreturn_qty.Text)
        Try
            update_medicine = "update medicine_order set qty= '" + final_qty + "' where Madicine_id='" + ddlmedicine_id.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
            cmd = New SqlCommand(update_medicine, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('update Succesfully Completed ')</script>")
            'txtavailable_qty.Text = final_qty
        Catch ex As Exception

            Response.Write("<script language=javascript>alert('update not Succesfully Completed ')</script>")

        End Try
        '====================Update Issue Qty===================================
        final_qty = CInt(txtusable_qty.Text)
        Try
            update_medicine = "update Issue_medicine set issued_qty= '" + final_qty + "' where Issue_no='" + ddlissu_no.SelectedValue + "' "
            cmd = New SqlCommand(update_medicine, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('update  issue Succesfully Completed ')</script>")

        Catch ex As Exception

            Response.Write("<script language=javascript>alert('update not  issue Succesfully Completed ')</script>")

        End Try
        '====================End Update Issue Qty===============================
        '========================================================================
        '==============================Return medicine==========================
        Try
            insert = "insert into Return_medicine values('" + Session("provide_org_user_id") + "','" + Session("return") + "','" + ddlissu_no.SelectedValue + "','" + ddlmedicine_id.SelectedValue + "','" + ddldiscription.SelectedValue + "','" + txtreturn_by.Text + "','" + txtreturn_date.Text + "','" + ddldepartment.SelectedValue + "','" + ddlissued_qty.SelectedValue + "','" + txtreturn_qty.Text + "','" + txtavailable_qty.Text + "','" + txtusable_qty.Text + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Return Insert Succesfully')</script>")
            retur()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Return Insert not Succesfully')</script>")
        End Try
        '=======================================================================


        con.cn.Close()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        txtreturn_date.Text = Today()
        Session("provide_org_user_id") = "Hospital001"
        retur()
    End Sub
    Sub fetch_qty()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            '========================Select Medicne_Master============================================
            search_medicine = "select * from medicine_order where Madicine_id='" + ddlmedicine_id.SelectedValue + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            da = New SqlDataAdapter(search_medicine, con.cn)
            ds = New DataSet()
            da.Fill(ds, "medicine_order")
            Dim medicine_code As String = ds.Tables(0).Rows(0)(1)
            Session("qty") = ds.Tables(0).Rows(0)(12)
        Catch ex As Exception
            'Response.Write("<script language=javascript>alert('Medicine_id is Wrong ')</script>")
        End Try
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        Try
            update_medicine = "update Return_medicine Return_no='" + txtreturn_no.Text + "',Issue_no='" + ddlissu_no.SelectedValue + "',Madicine_id='" + ddlmedicine_id.SelectedValue + "',description='" + ddldiscription.SelectedValue + "',return_by='" + txtreturn_by.Text + "',return_date='" + txtreturn_date.Text + "',department='" + ddldepartment.SelectedValue + "',issued_qty='" + ddlissued_qty.SelectedValue + "',return_qty='" + txtreturn_qty.Text + "',available_qty='" + txtavailable_qty.Text + "',usable_qty='" + txtusable_qty.Text + "'where Return_no='" + txtreturn_no.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "' "
            cmd = New SqlCommand(update_medicine, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")

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
            delete = "delete from Return_medicine where Return_no='" + txtreturn_no.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")


        Catch ex As Exception

            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")

        End Try
        con.cn.Close()

    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        '  Dim con As New Connection()
        ' con.Connection()
        'con.cn.Open()

        'Try
        'search = "select * from Return_medicine  where Return_no='" + txtreturn_no.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
        'da = New SqlDataAdapter(search, con.cn)
        'ds = New DataSet()
        'da.Fill(ds, "Return_medicine")
        'txtreturn_no.Text = ds.Tables(0).Rows(0)(1)
        'ddlissu_no.SelectedValue = ds.Tables(0).Rows(0)(2)
        'ddlmedicine_id.SelectedValue = ds.Tables(0).Rows(0)(3)
        'ddldiscription.SelectedValue = ds.Tables(0).Rows(0)(4)
        'txtreturn_by.Text = ds.Tables(0).Rows(0)(5)
        'txtreturn_date.Text = ds.Tables(0).Rows(0)(6)
        'ddldepartment.SelectedValue = ds.Tables(0).Rows(0)(7)
        'ddlissued_qty.SelectedValue = ds.Tables(0).Rows(0)(8)
        'txtreturn_qty.Text = ds.Tables(0).Rows(0)(9)
        'txtavailable_qty.Text = ds.Tables(0).Rows(0)(10)
        'txtusable_qty.Text = ds.Tables(0).Rows(0)(11)
        'Response.Write("<script language=javascript>alert('Search is Found')</script>")
        'Catch ex As Exception

        searc()


        '        Response.Write("<script language=javascript>alert('Search is not Found')</script>")
        '       End Try
        '      con.cn.Close()

    End Sub

    Sub auto()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim str As String
        Dim count As String
        str = "select count(*) from Return_medicine where Hospital_id='" + Session("provide_org_user_id") + "'"
        cmd = New SqlCommand(str, con.cn)

        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1
        count = cmd.ExecuteScalar() + 1

        Session("return") = "return00" + count
        con.cn.Close()
    End Sub
    Sub retur()

        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from Return_medicine where Hospital_id='" + Session("provide_org_user_id") + "' "

        da = New SqlDataAdapter(show, con.cn)
        ds = New DataSet()

        da.Fill(ds)

        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

        con.cn.Close()

    End Sub
    Sub searc()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        search = "select * from Return_medicine where Return_no='" + txtreturn_no.Text + "' and Hospital_id='" + Session("provide_org_user_id") + "'"
        da = New SqlDataAdapter(search, con.cn)
        ds = New DataSet()

        da.Fill(ds, "Return_medicine")

        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

        con.cn.Close()
    End Sub
End Class
