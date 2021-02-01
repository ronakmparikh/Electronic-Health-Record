Imports System.Data.SqlClient
Imports System.Data
Partial Class laundry
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim insert, delete, search, upd As String


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            'txtwashing_amount.Text = (CInt(txtqty_given.Text) * CInt(txtrate.Text))
            insert = "insert into Laundry values('" + Session("provide_org_user_id") + "','" + txtwasherman_women_id.Text + "','" + txtwasherman_women_name.Text + "'," + txtinward_date.Text + "," + txtphone_number.Text + ",'" + txtitem_code.Text + "','" + txtname.Text + "'," + txtsize.Text + ",'" + txtward.Text + "'," + txtqty_given.Text + "," + txtrate.Text + "," + txtreceived_date.Text + "," + txtreceived_qty.Text + "," + txtwashing_amount.Text + ")"

            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")

            txtwasherman_women_id.Text = ""
            txtwasherman_women_name.Text = ""
            txtinward_date.Text = ""
            txtphone_number.Text = ""
            txtitem_code.Text = ""
            txtname.Text = ""
            txtsize.Text = ""
            txtward.Text = ""
            txtqty_given.Text = ""
            txtreceived_date.Text = ""
            txtreceived_qty.Text = ""
            txtwashing_amount.Text = ""
            txtrate.Text = ""
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")


        End Try
        con.cn.Close()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            delete = "delete from Laundry where Washer_Man_Women_Id='" + txtwasherman_women_id.Text + "'"

            cmd = New SqlCommand(delete, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()
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
            search = "select * from Laundry where Washer_Man_Women_Id='" + txtwasherman_women_id.Text + "'"
            da = New SqlDataAdapter(search, con.cn)
            da.Fill(ds, "Laundry")
            txtwasherman_women_id.Text = ds.Tables(0).Rows(0)(1)
            txtwasherman_women_name.Text = ds.Tables(0).Rows(0)(2)
            txtinward_date.Text = ds.Tables(0).Rows(0)(3)
            txtphone_number.Text = ds.Tables(0).Rows(0)(4)
            txtitem_code.Text = ds.Tables(0).Rows(0)(5)
            txtname.Text = ds.Tables(0).Rows(0)(6)
            txtsize.Text = ds.Tables(0).Rows(0)(7)
            txtward.Text = ds.Tables(0).Rows(0)(8)
            txtqty_given.Text = ds.Tables(0).Rows(0)(9)
            txtrate.Text = ds.Tables(0).Rows(0)(10)
            txtreceived_date.Text = ds.Tables(0).Rows(0)(11)
            txtreceived_qty.Text = ds.Tables(0).Rows(0)(12)
            txtwashing_amount.Text = ds.Tables(0).Rows(0)(13)
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Record is not in Database ')</script>")
        End Try


    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim con As New Connection()
        con.Connection()

        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        Dim cmd2 As New SqlCommand
        con.cn.Open()

        upd = "update Laundry set Washer_Man_Women_Id= '" + txtwasherman_women_id.Text + "', Washer_Man_Women_Name='" + txtwasherman_women_name.Text + "', Inward_Date=" + txtinward_date.Text + ", Phone_Number=" + txtphone_number.Text + ",Item_Code='" + txtitem_code.Text + "', Name='" + txtname.Text + "', size=" + txtsize.Text + ", Ward='" + txtward.Text + "', Qty_Given=" + txtqty_given.Text + ", Rate=" + txtrate.Text + ", Received_Date=" + txtreceived_date.Text + ", Received_Qty=" + txtreceived_qty.Text + ", Washing_Amount=" + txtwashing_amount.Text + " where Washer_Man_Women_Id= '" + txtwasherman_women_id.Text + "'"
        cmd2 = New SqlCommand(upd, con.cn)

        cmd2.ExecuteNonQuery()

        Try
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        txtwasherman_women_id.Text = ""
        txtwasherman_women_name.Text = ""
        txtinward_date.Text = ""
        txtphone_number.Text = ""
        txtitem_code.Text = ""
        txtname.Text = ""
        txtsize.Text = ""
        txtward.Text = ""
        txtqty_given.Text = ""
        txtrate.Text = ""
        txtreceived_date.Text = ""
        txtreceived_qty.Text = ""
        txtwashing_amount.Text = ""
    End Sub

    Protected Sub txtwashing_amount_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtwashing_amount.TextChanged

    End Sub

    Protected Sub txtrate_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtrate.TextChanged
        txtwashing_amount.Text = (CInt(txtqty_given.Text) * CInt(txtrate.Text))
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        shows()
    End Sub


    Dim show As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    '==============================Show Detail========================================
    Sub shows()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from Laundry where Hospital_id = '" + Session("provide_org_user_id") + "'"
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub

End Class
