
Imports System.Data.SqlClient
Imports System.Data
Partial Class asset_managemennt_Asset_management
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim ds As New DataSet

    Dim da As New SqlDataAdapter
    Shared curpos As Integer
    Dim insert, delete, search, upd As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btninsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninsert.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into asset_master values('" + txtasset_code.Text + "','" + txtasset_name.Text + "','" + txtuser.Text + "','" + txtdepartment.Text + "','" + txtcost_code.Text + "','" + txtcatagaries.Text + "','" + txtmanufactuse_code.Text + "','" + txtmanufacture_name.Text + "'," + txtunit_of_mesurement.Text + ",'" + txtpurchase_date.Text + "','" + ddlvalidity.SelectedValue + "','" + txtg_code.Text + "','" + txtguaranty_period.Text + "','" + txtw_code.Text + "','" + txtwarranty_period.Text + "','" + txtservice_center_code.Text + "','" + txtservice_name.Text + "','" + txtaddress.Text + "','" + txtpurchase_price.Text + "'," + txtpurchase_quentity.Text + "," + txtpurchase_values.Text + "," + txtdepresiation.Text + "," + txtcurrent_values.Text + ",'" + txtstatus.Text + "')"


            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()


            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            txtasset_code.Text = ""
            txtasset_name.Text = ""
            txtuser.Text = ""
            txtdepartment.Text = ""
            txtcost_code.Text = " "
            txtcatagaries.Text = ""
            txtmanufactuse_code.Text = ""
            txtmanufacture_name.Text = ""
            txtunit_of_mesurement.Text = ""
            txtpurchase_date.Text = ""
            ddlvalidity.SelectedValue = ""
            txtg_code.Text = ""
            txtguaranty_period.Text = ""
            txtw_code.Text = ""
            txtwarranty_period.Text = ""
            txtservice_center_code.Text = ""
            txtservice_name.Text = ""
            txtaddress.Text = ""
            txtpurchase_price.Text = ""
            txtpurchase_quentity.Text = ""
            txtpurchase_values.Text = ""
            txtdepresiation.Text = ""
            txtcurrent_values.Text = ""
            txtstatus.Text = ""




        Catch ex As Exception

            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub


    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()


        search = "select * from asset_master where asset_code ='" + txtasset_code.Text + "'"
        da = New SqlDataAdapter(search, con.cn)
        ds = New DataSet()

        da.Fill(ds, "asset_master")
        txtasset_code.Text = ds.Tables(0).Rows(0)(0)
        txtasset_name.Text = ds.Tables(0).Rows(0)(1)
        txtuser.Text = ds.Tables(0).Rows(0)(2)
        txtdepartment.Text = ds.Tables(0).Rows(0)(3)
        txtcost_code.Text = ds.Tables(0).Rows(0)(4)
        txtcatagaries.Text = ds.Tables(0).Rows(0)(5)
        txtmanufactuse_code.Text = ds.Tables(0).Rows(0)(6)
        txtmanufacture_name.Text = ds.Tables(0).Rows(0)(7)
        txtunit_of_mesurement.Text = ds.Tables(0).Rows(0)(8)
        txtpurchase_date.Text = ds.Tables(0).Rows(0)(9)
        ddlvalidity.SelectedValue = ds.Tables(0).Rows(0)(10)
        txtg_code.Text = ds.Tables(0).Rows(0)(11)
        txtguaranty_period.Text = ds.Tables(0).Rows(0)(12)
        txtw_code.Text = ds.Tables(0).Rows(0)(13)
        txtwarranty_period.Text = ds.Tables(0).Rows(0)(14)
        txtservice_center_code.Text = ds.Tables(0).Rows(0)(15)
        txtservice_name.Text = ds.Tables(0).Rows(0)(16)
        txtaddress.Text = ds.Tables(0).Rows(0)(17)
        txtpurchase_price.Text = ds.Tables(0).Rows(0)(18)
        txtpurchase_quentity.Text = ds.Tables(0).Rows(0)(19)
        txtpurchase_values.Text = ds.Tables(0).Rows(0)(20)
        txtdepresiation.Text = ds.Tables(0).Rows(0)(21)
        txtcurrent_values.Text = ds.Tables(0).Rows(0)(22)
        txtstatus.Text = ds.Tables(0).Rows(0)(23)

        con.cn.Close()
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Dim con As New Connection()
        con.Connection()

        con.cn.Open()

        upd = "update asset_master set asset_code= '" + txtasset_code.Text + "',asset_name='" + txtasset_name.Text + "',user_name='" + txtuser.Text + "',department='" + txtdepartment.Text + "',cost_code='" + txtcost_code.Text + "',catagaries='" + txtcatagaries.Text + "',manufacture_code='" + txtmanufactuse_code.Text + "',manufacture_name='" + txtmanufacture_name.Text + "',unit_of_masurment=" + txtunit_of_mesurement.Text + ",parchase_date='" + txtpurchase_date.Text + "',validity='" + ddlvalidity.SelectedValue + "',guaranty_code='" + txtg_code.Text + "',guaranty_period='" + txtguaranty_period.Text + "',warranty_code='" + txtw_code.Text + "',warranty_perod='" + txtwarranty_period.Text + "',service_center_code='" + txtservice_center_code.Text + "',service_center_name='" + txtservice_name.Text + "',service_center_address='" + txtaddress.Text + "',purchase_price='" + txtpurchase_price.Text + "',purchase_quentity=" + txtpurchase_quentity.Text + ",purchase_values=" + txtpurchase_values.Text + ",depresiation=" + txtdepresiation.Text + ",current_values=" + txtcurrent_values.Text + ",status='" + txtstatus.Text + "' where  asset_code= '" + txtasset_code.Text + "'"

        cmd = New SqlCommand(upd, con.cn)


        cmd.ExecuteNonQuery()

        Try
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
        delete = "delete from asset_master where asset_code ='" + txtasset_code.Text + "'"
        Try
            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('DeleteSuccesfully Completed ')</script>")

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")

        End Try


        con.cn.Close()
    End Sub

  
    Protected Sub txtcost_code_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtcost_code.TextChanged

    End Sub

    Protected Sub txtservice_name_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtservice_name.TextChanged

    End Sub
End Class
