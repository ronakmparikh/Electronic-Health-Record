Imports System.Data.SqlClient
Imports System.Data
Partial Class Link_Page_edit_profile
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim con As New Connection()
        Dim upd As String
        con.Connection()

        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        Dim cmd2 As New SqlCommand
        Dim blank As String
        blank = ""
        con.cn.Open()
        If RadioButton1.Checked = True Then
            upd = "update Registration set Rname= '" + txtfirstname.Text + "',Pin_code=" + ddlpincode.SelectedValue + ",Country='" + ddlcountry.SelectedValue + "',state='" + ddlstste.SelectedValue + "',city='" + txtcity.Text + "',street='" + txtstreet.Text + "',area='" + ddlarea.SelectedValue + "',Land_mark='" + txtland_mark.Text + "',Country_code=" + txtcountry_code.Text + ",Std_code=" + txtstd_code.Text + ",Land_line=" + txtland_line.Text + ",Facimile=" + txtfacimile.Text + ",Mobile_number=" + txtmobile.Text + ",Toll_free)number=" + txttoll_free_no.Text + ",E_mail='" + txte_mail.Text + "',Web_url='" + txtweb_url.Text + "',,ownership='" + ddlownership.SelectedValue + "',type_of_org='" + ddlorganisation.SelectedValue + "',specility1='" + RadioButton1.Text + "',specility2='" + RadioButton1.Text + "',specility3='" + RadioButton1.Text + "',specility4='" + RadioButton1.Text + "' where Hospital_id= '" + Session("provide_org_user_id") + "' "
            cmd2 = New SqlCommand(upd, con.cn)

            cmd2.ExecuteNonQuery()
        ElseIf RadioButton2.Checked = True Then
            upd = "update Registration set Rname= '" + txtfirstname.Text + "',Pin_code=" + ddlpincode.SelectedValue + ",Country='" + ddlcountry.SelectedValue + "',state='" + ddlstste.SelectedValue + "',city='" + txtcity.Text + "',street='" + txtstreet.Text + "',area='" + ddlarea.SelectedValue + "',Land_mark='" + txtland_mark.Text + "',Country_code=" + txtcountry_code.Text + ",Std_code=" + txtstd_code.Text + ",Land_line=" + txtland_line.Text + ",Facimile=" + txtfacimile.Text + ",Mobile_number=" + txtmobile.Text + ",Toll_free)number=" + txttoll_free_no.Text + ",E_mail='" + txte_mail.Text + "',Web_url='" + txtweb_url.Text + "',,ownership='" + ddlownership.SelectedValue + "',type_of_org='" + ddlorganisation.SelectedValue + "' where Hospital_id= '" + Session("provide_org_user_id") + "' "
            cmd2 = New SqlCommand(upd, con.cn)

            cmd2.ExecuteNonQuery()
        ElseIf RadioButton3.Checked = True Then
            upd = "update Registration set Rname= '" + txtfirstname.Text + "',Pin_code=" + ddlpincode.SelectedValue + ",Country='" + ddlcountry.SelectedValue + "',state='" + ddlstste.SelectedValue + "',city='" + txtcity.Text + "',street='" + txtstreet.Text + "',area='" + ddlarea.SelectedValue + "',Land_mark='" + txtland_mark.Text + "',Country_code=" + txtcountry_code.Text + ",Std_code=" + txtstd_code.Text + ",Land_line=" + txtland_line.Text + ",Facimile=" + txtfacimile.Text + ",Mobile_number=" + txtmobile.Text + ",Toll_free)number=" + txttoll_free_no.Text + ",E_mail='" + txte_mail.Text + "',Web_url='" + txtweb_url.Text + "',,ownership='" + ddlownership.SelectedValue + "',type_of_org='" + ddlorganisation.SelectedValue + "' where Hospital_id= '" + Session("provide_org_user_id") + "' "
            cmd2 = New SqlCommand(upd, con.cn)

            cmd2.ExecuteNonQuery()
        End If
        

        Try
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")

        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Not Succesfully Completed ')</script>")
        End Try
        con.cn.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New Connection()
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        Dim SEARCH As String


        con.Connection()
        con.cn.Open()
        Try
            SEARCH = "select * from Registration where hospital_id='" + Session("provide_org_user_id") + "' "
            da = New SqlDataAdapter(search, con.cn)
            da.Fill(ds, "Registration")
            txtfirstname.Text = ds.Tables(0).Rows(0)(1)
            txtstreet.Text = ds.Tables(0).Rows(0)(7)
            txtcity.Text = ds.Tables(0).Rows(0)(6)
            txtland_mark.Text = ds.Tables(0).Rows(0)(8)
            txtcountry_code.Text = ds.Tables(0).Rows(0)(9)
            txtstd_code.Text = ds.Tables(0).Rows(0)(10)
            txtland_line.Text = ds.Tables(0).Rows(0)(11)
            txtfacimile.Text = ds.Tables(0).Rows(0)(12)
            txtmobile.Text = ds.Tables(0).Rows(0)(13)
            txttoll_free_no.Text = ds.Tables(0).Rows(0)(14)
            txte_mail.Text = ds.Tables(0).Rows(0)(15)
            txtweb_url.Text = ds.Tables(0).Rows(0)(16)
            ddlownership.SelectedValue = ds.Tables(0).Rows(0)(17)
            ddlorganisation.SelectedValue = ds.Tables(0).Rows(0)(18)



        Catch ex As Exception
            Response.Write("<script language=javascript>alert(' Record is Not in Database ')</script>")
        End Try
    End Sub
End Class
