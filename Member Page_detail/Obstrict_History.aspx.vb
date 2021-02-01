Imports System.Data.SqlClient
Imports System.Data
Partial Class Menstrual_and_o_s
    Inherits System.Web.UI.Page
    '  Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim insert, show As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '    con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=G:\demo\App_Data\Patient_demography.mdf;Integrated Security=True;User Instance=True")
        '  Session("member_user_id") = "Member001"
        obsstric()
        abortion()

    End Sub



    Protected Sub rdbobhyes_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbobhyes.CheckedChanged
        Panel1_obstetric_history.Visible = True

    End Sub

    Protected Sub rdbobhno_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbobhno.CheckedChanged
        Panel1_obstetric_history.Visible = False

    End Sub



    Protected Sub rdbayes_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbayes.CheckedChanged
        Panel1_abortions.Visible = True

    End Sub

    Protected Sub rdbano_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbano.CheckedChanged
        Panel1_abortions.Visible = False

    End Sub

  
    Protected Sub btnaddabortion_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddabortion.Click
       
    End Sub

    Protected Sub btnadddelivery_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadddelivery.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()



        insert = "insert into Delivery_detail values('" + Session("member_user_id") + "','" + txtf_delivery_date.Text + "','" + ddldelivery.SelectedValue + "'," + txtduration_of_pregnancy.Text + ",'" + ddlstatusof_baby.SelectedValue + "')"


        Try
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            obsstric()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")

        End Try

        con.cn.Close()

    End Sub

    Protected Sub btnaddabortion0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddabortion.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()


        '  Session("member_user_id") = "Member001"
        insert = "insert into Abortion values('" + Session("member_user_id") + "'," + txtabortion_date.Text + ",'" + ddlabortion.SelectedValue + "'," + ddlabortion_month.SelectedValue + ")"


        Try
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")
            abortion()

        Catch ex As Exception
            Response.Write("<script language=javascript>alert('Not Succesfully Completed ')</script>")

        End Try

        con.cn.Close()


    End Sub

    Sub obsstric()

        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select date_of_delivery,delivery_type,duration_preg,status_of_baby from Delivery_detail where patient_id='" + Session("member_user_id") + "' "

        da = New SqlDataAdapter(show, con.cn)
        ds = New DataSet()

        da.Fill(ds)

        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

        con.cn.Close()

    End Sub

    Sub abortion()

        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        show = "select * from Abortion where patient_id='" + Session("member_user_id") + "' "

        da = New SqlDataAdapter(show, con.cn)
        ds = New DataSet()

        da.Fill(ds)

        GridView2.DataSource = ds.Tables(0)
        GridView2.DataBind()

        con.cn.Close()

    End Sub
End Class
