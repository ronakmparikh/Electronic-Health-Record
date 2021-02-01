Imports System.Data.SqlClient
Imports System.Data
Partial Class Staffmaster
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

            insert = "insert into Staff_Master values('" + Session("provide_org_user_id") + "','" + txtemp_id.Text + "',' " + txtname.Text + " ','" + txtaddress.Text + "', '" + txtemail_id.Text + " '," + txtmobile_no.Text + ",'" + txtgovt_regi_no.Text + "','" + ddlcategory.SelectedValue + "','" + ddltype.SelectedValue + "','" + ddldesignation.SelectedValue + "','" + txtdept_no.Text + "','" + ddldepartment_name.SelectedValue + "','" + txtqualification.Text + "'," + txtbasic_salary.Text + ",'" + txtpan_no.Text + "',' " + txtbank_ac_no.Text + "' ,'" + txtpf_regi_no.Text + "',  " + txtdob.Text + " ," + txtdate_of_joining.Text + ",'" + ddltype_of_resident.SelectedValue + "','" + txtcode.Text + "')"
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully inserted ')</script>")

            txtemp_id.Text = ""
            txtname.Text = " "
            txtaddress.Text = ""
            txtemail_id.Text = ""
            txtmobile_no.Text = ""
            txtgovt_regi_no.Text = ""
            ddlcategory.SelectedValue = ""
            ddltype.SelectedValue = ""
            ddldesignation.SelectedValue = ""
            txtdept_no.Text = ""
            ddldepartment_name.SelectedValue = ""
            txtqualification.Text = ""
            txtbasic_salary.Text = ""
            txtpan_no.Text = ""
            txtbank_ac_no.Text = ""
            txtpf_regi_no.Text = " "
            txtdob.Text = ""
            txtdate_of_joining.Text = ""
            ddltype_of_resident.SelectedValue = ""
            txtcode.Text = ""
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Record not inserted ')</script>")
        End Try

        con.cn.Close()


    End Sub


    Protected Sub Btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btndelete.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try
            del = "delete from Staff_Master where Emp_id='" + txtemp_id.Text + " '"
            cmd = New SqlCommand(del, con.cn)
            cmd.ExecuteNonQuery()

            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            shows()

        Catch ex As Exception

            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")

        End Try
        con.cn.Close()
    End Sub

    Protected Sub Btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnsearch.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Try

            search = "select * from Staff_Master where Emp_id = '" + txtemp_id.Text + " ' "
            da = New SqlDataAdapter(search, con.cn)
            ds = New DataSet()
            da.Fill(ds, "Staff_Master")
            txtemp_id.Text = ds.Tables(0).Rows(0)(0)
            txtname.Text = ds.Tables(0).Rows(0)(1)
            txtaddress.Text = ds.Tables(0).Rows(0)(2)
            txtemail_id.Text = ds.Tables(0).Rows(0)(3)
            txtmobile_no.Text = ds.Tables(0).Rows(0)(4)
            txtgovt_regi_no.Text = ds.Tables(0).Rows(0)(5)
            ddlcategory.SelectedValue = ds.Tables(0).Rows(0)(6)
            ddltype.SelectedValue = ds.Tables(0).Rows(0)(7)
            ddldesignation.SelectedValue = ds.Tables(0).Rows(0)(8)
            txtdept_no.Text = ds.Tables(0).Rows(0)(9)
            ddldepartment_name.SelectedValue = ds.Tables(0).Rows(0)(10)
            txtqualification.Text = ds.Tables(0).Rows(0)(11)
            txtbasic_salary.Text = ds.Tables(0).Rows(0)(12)
            txtpan_no.Text = ds.Tables(0).Rows(0)(13)
            txtbank_ac_no.Text = ds.Tables(0).Rows(0)(14)
            txtpf_regi_no.Text = ds.Tables(0).Rows(0)(15)
            txtdob.Text = ds.Tables(0).Rows(0)(16)
            txtdate_of_joining.Text = ds.Tables(0).Rows(0)(17)
            ddltype_of_resident.SelectedValue = ds.Tables(0).Rows(0)(18)
            txtcode.Text = ds.Tables(0).Rows(0)(19)
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

            upd = "update Staff_Master set Emp_id= '" + txtemp_id.Text + "', Name= ' " + txtname.Text + " ',Address='" + txtaddress.Text + "', Email_id= '" + txtemail_id.Text + " ',Mobile_No=" + txtmobile_no.Text + ",Govt_reg_No= '" + txtgovt_regi_no.Text + "', Category='" + ddlcategory.SelectedValue + "', Type='" + ddltype.SelectedValue + "',Designation='" + ddldesignation.SelectedValue + "',Dept_No='" + txtdept_no.Text + "',Dept_Name='" + ddldepartment_name.SelectedValue + "',Qualification= '" + txtqualification.Text + "', Basic_Salary=" + txtbasic_salary.Text + ", Pan_no='" + txtpan_no.Text + "',Bank_ac_no= ' " + txtbank_ac_no.Text + "' ,Pf_regi_No='" + txtpf_regi_no.Text + "', DOB= '" + txtdob.Text + "' ,Date_of_Joining= '" + txtdate_of_joining.Text + " ', Type_of_Residence= '" + ddltype_of_resident.SelectedValue + "',Code='" + txtcode.Text + "'where Emp_id= '" + txtemp_id.Text + "'"
            cmd = New SqlCommand(upd, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Updated')</script>")
            shows()
        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Updated ')</script>")

        End Try

        con.cn.Close()

    End Sub

    Protected Sub Btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnreset.Click
        txtemp_id.Text = ""
        txtname.Text = " "
        txtaddress.Text = ""
        txtemail_id.Text = ""
        txtmobile_no.Text = ""
        txtgovt_regi_no.Text = ""
        ddlcategory.SelectedValue = ""
        ddltype.SelectedValue = ""
        ddldesignation.SelectedValue = ""
        txtdept_no.Text = ""
        ddldepartment_name.SelectedValue = ""
        txtqualification.Text = ""
        txtbasic_salary.Text = ""
        txtpan_no.Text = ""
        txtbank_ac_no.Text = ""
        txtpf_regi_no.Text = " "
        txtdob.Text = ""
        txtdate_of_joining.Text = ""
        ddltype_of_resident.SelectedValue = ""
        txtcode.Text = ""

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
        show = "select * from Staff_Master"
        da = New SqlDataAdapter(Show, con.cn)
        ds = New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        con.cn.Close()
        '=============================================================================
    End Sub
End Class
