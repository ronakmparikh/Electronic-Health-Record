Imports System.Data.SqlClient
Imports System.Data
Partial Class vehicals
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Dim ds As New DataSet

    Dim da As New SqlDataAdapter

    Dim insert, upd, del, search As String


    Protected Sub Btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnadd.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            insert = "insert into Vehical_Master values('" + Session("provide_org_user_id") + "','" + txtvehical_no.Text + "',' " + txtvehical_name.Text + " '," + txtvehical_make.Text + ", " + txtpurchase_date.Text + " ,'" + txttoregistrationnumber.Text + "','" + txtdriver_code.Text + "','" + txtdrivername.Text + "','" + txtdriver_lisence_number.Text + "','" + ddlteretory_code.SelectedValue + "'," + txtkm_from.Text + "," + txtkm_to.Text + ",'" + txtengine_no.Text + "','" + txtchares_no.Text + "','" + txtinsurance_policy_no.Text + "', " + txtdate_from.Text + " ," + txtdate_to.Text + ",  " + txtprimimum_amt.Text + " )"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully inserted ')</script>")

            txtvehical_no.Text = ""
            txtvehical_name.Text = ""
            txtvehical_make.Text = ""
            txtpurchase_date.Text = ""
            txttoregistrationnumber.Text = ""
            txtdriver_code.Text = ""
            txtdrivername.Text = ""
            txtdriver_lisence_number.Text = ""
            ddlteretory_code.SelectedValue = " "
            txtkm_from.Text = ""
            txtkm_to.Text = ""
            txtengine_no.Text = ""
            txtchares_no.Text = ""
            txtdate_from.Text = " "
            txtdate_to.Text = ""
            txtinsurance_policy_no.Text = ""
            txtprimimum_amt.Text = ""
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Record not inserted ')</script>")
        End Try

        con.cn.Close()

    End Sub


    Protected Sub Btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsearch.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            search = " select * from Vehical_Master where Vehical_No = '" + txtvehical_no.Text + "'"
            da = New SqlDataAdapter(search, con.cn)
            ds = New DataSet()
            da.Fill(ds, "Vehical_Master")
            txtvehical_no.Text = ds.Tables(0).Rows(0)(0)
            txtvehical_name.Text = ds.Tables(0).Rows(0)(1)
            txtvehical_make.Text = ds.Tables(0).Rows(0)(2)
            txtpurchase_date.Text = ds.Tables(0).Rows(0)(3)
            txttoregistrationnumber.Text = ds.Tables(0).Rows(0)(4)
            txtdriver_code.Text = ds.Tables(0).Rows(0)(5)
            txtdrivername.Text = ds.Tables(0).Rows(0)(6)
            txtdriver_lisence_number.Text = ds.Tables(0).Rows(0)(7)
            ddlteretory_code.SelectedValue = ds.Tables(0).Rows(0)(8)
            txtkm_from.Text = ds.Tables(0).Rows(0)(9)
            txtkm_to.Text = ds.Tables(0).Rows(0)(10)
            txtengine_no.Text = ds.Tables(0).Rows(0)(11)
            txtchares_no.Text = ds.Tables(0).Rows(0)(12)
            txtinsurance_policy_no.Text = ds.Tables(0).Rows(0)(13)
            txtdate_from.Text = ds.Tables(0).Rows(0)(14)
            txtdate_to.Text = ds.Tables(0).Rows(0)(15)
            txtprimimum_amt.Text = ds.Tables(0).Rows(0)(16)

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Search is not Found')</script>")
        End Try

        con.cn.Close()

    End Sub

    Protected Sub Btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnupdate.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()

        Try
            upd = "update Vehical_Master set Vehical_No='" + txtvehical_no.Text + "', Vehical_Name=' " + txtvehical_name.Text + " ', Vehical_Make= " + txtvehical_make.Text + ", Purchase_Date= " + txtpurchase_date.Text + " , RTO_Registration_No = '" + txttoregistrationnumber.Text + "', Driver_Code= '" + txtdriver_code.Text + "', Driver_Name= '" + txtdrivername.Text + "', Driver_Lisence_No= '" + txtdriver_lisence_number.Text + "', Teretory_Code= '" + ddlteretory_code.SelectedValue + "', KM_From= " + txtkm_from.Text + ", KM_To= " + txtkm_to.Text + ", Engine= '" + txtengine_no.Text + "', Chares_No= '" + txtchares_no.Text + "', Insurance_Policy_No='" + txtinsurance_policy_no.Text + "', Date_From= " + txtdate_from.Text + " , Date_To= " + txtdate_to.Text + ", Primimum_Amount= " + txtprimimum_amt.Text + " where Vehical_No='" + txtvehical_no.Text + "'"
            cmd = New SqlCommand(upd, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Updated')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Updated ')</script>")

        End Try

        con.cn.Close()
    End Sub

    Protected Sub Btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btndelete.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            del = " delete from Vehical_Master where Vehical_No='" + txtvehical_no.Text + "'"
            cmd = New SqlCommand(del, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")

            shows()
        Catch ex As Exception

            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")

        End Try
        con.cn.Close()
    End Sub

    Protected Sub Btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnreset.Click
        txtvehical_no.Text = ""
        txtvehical_name.Text = ""
        txtvehical_make.Text = ""
        txtpurchase_date.Text = ""
        txttoregistrationnumber.Text = ""
        txtdriver_code.Text = ""
        txtdrivername.Text = ""
        txtdriver_lisence_number.Text = ""
        ddlteretory_code.SelectedValue = " "
        txtkm_from.Text = ""
        txtkm_to.Text = ""
        txtengine_no.Text = ""
        txtchares_no.Text = ""
        txtdate_from.Text = " "
        txtdate_to.Text = ""
        txtinsurance_policy_no.Text = ""
        txtprimimum_amt.Text = ""

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        shows()
    End Sub


    Dim show As String
 
    '==============================Show Detail========================================
    Sub shows()
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from Vehical_Master"
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub
End Class
