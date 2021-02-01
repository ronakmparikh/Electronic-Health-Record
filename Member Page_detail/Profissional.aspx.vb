Imports System.Data.SqlClient
Imports System.Data
Partial Class Profissional
    Inherits System.Web.UI.Page
    '  Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim insert As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '  con = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=E:\demo\App_Data\Patient_demography.mdf;Integrated Security=True;User Instance=True")
    End Sub
    Protected Sub ddlPROoccupation_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlPROoccupation.SelectedIndexChanged
        If (ddlPROoccupation.SelectedValue = "Service" Or ddlPROoccupation.SelectedValue = "Business") Then
            Panel1_service_office.Visible = True
            Panel1_Student.Visible = False
        ElseIf (ddlPROoccupation.SelectedValue = "Student") Then
            Panel1_Student.Visible = True
            Panel1_service_office.Visible = False
        ElseIf (ddlPROoccupation.SelectedValue = "Home") Then
            Panel1_Student.Visible = False
            Panel1_service_office.Visible = False
        End If


    End Sub

   
    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim patient_id As String
        '        patient_id = 10
        '        patient_id = Session("member_user_id")

        Dim officename, officeid, address, phonenumber, emailid, website, monthly_income, annual_income, institute, qualification, year, extra, hobbies, clubmember, recognition, designation As String
        officename = " "
        officeid = " "
        address = " "
        phonenumber = " "
        emailid = " "
        website = " "
        monthly_income = " "
        annual_income = " "
        institute = " "
        qualification = " "
        year = " "
        extra = " "
        hobbies = " "
        clubmember = " "
        recognition = " "
        designation = " "

        If (ddlPROoccupation.SelectedValue = "Service" Or ddlPROoccupation.SelectedValue = "Business") Then

            insert = "insert into proffesional values('" + Session("member_user_id") + "','" + ddlPROoccupation.SelectedValue + "','" + txtpofficename.Text + "','" + txtpoffice_id_number.Text + "','" + txtPROaddress.Text + "'," + txtPROphone_number.Text + ",'" + txtPROemailid.Text + "','" + txtPROwebsite.Text + "'," + txtpmonthlyincome.Text + "," + txtPROannualincome.Text + ",'" + txtodesignation.Text + "', '" + institute + "','" + qualification + "','" + year + "','" + extra + "','" + hobbies + "','" + clubmember + "','" + recognition + "','" + txtecpname1.Text + "','" + txtecpname2.Text + "','" + txtecpname3.Text + "'," + txtecpcontectno.Text + ",'" + ddlrelationship.SelectedValue + "','" + txtcpfamilydoctor.Text + "','" + txtecpqualification.Text + "'," + txtmobilenumber.Text + ",'" + txtstd_code.Text + "'," + txtlandlinenumber.Text + ",'" + txtecpemailid.Text + "','" + txtpphouse_number.Text + "','" + txtppstreetaddress.Text + "','" + ddlppincode.SelectedValue + "','" + ddlparea.SelectedValue + "','" + ddlpcity.SelectedValue + "','" + ddlpstate.SelectedValue + "','" + ddlpcountry.SelectedValue + "')"


        ElseIf (ddlPROoccupation.SelectedValue = "Student") Then

            insert = "insert into proffesional values('" + Session("member_user_id") + "','" + ddlPROoccupation.SelectedValue + "','" + officename + "','" + officeid + "','" + address + "','" + phonenumber + "','" + emailid + "','" + website + "','" + monthly_income + "','" + annual_income + "','" + designation + "','" + txtPROinstitute.Text + "','" + txtPROqUalification.Text + "'," + txtsuyear.Text + ",'" + txtPROactivities.Text + "','" + txtPROhobbies.Text + "','" + txtPROclub_membership.Text + "','" + txtPROrecognition.Text + "','" + txtecpname1.Text + "','" + txtecpname2.Text + "','" + txtecpname3.Text + "'," + txtecpcontectno.Text + ",'" + ddlrelationship.SelectedValue + "','" + txtcpfamilydoctor.Text + "','" + txtecpqualification.Text + "'," + txtmobilenumber.Text + ",'" + txtstd_code.Text + "'," + txtlandlinenumber.Text + ",'" + txtecpemailid.Text + "','" + txtpphouse_number.Text + "','" + txtppstreetaddress.Text + "','" + ddlppincode.SelectedValue + "','" + ddlparea.SelectedValue + "','" + ddlpcity.SelectedValue + "','" + ddlpstate.SelectedValue + "','" + ddlpcountry.SelectedValue + "')"
        ElseIf (ddlPROoccupation.SelectedValue = "Home") Then

            insert = "insert into proffesional values('" + Session("member_user_id") + "','" + ddlPROoccupation.SelectedValue + "','" + officename + "','" + officeid + "','" + address + "','" + phonenumber + "','" + emailid + "','" + website + "','" + monthly_income + "','" + annual_income + "','" + designation + "', '" + institute + "','" + qualification + "','" + year + "','" + extra + "','" + hobbies + "','" + clubmember + "','" + recognition + "','" + txtecpname1.Text + "','" + txtecpname2.Text + "','" + txtecpname3.Text + "'," + txtecpcontectno.Text + ",'" + ddlrelationship.SelectedValue + "','" + txtcpfamilydoctor.Text + "','" + txtecpqualification.Text + "'," + txtmobilenumber.Text + ",'" + txtstd_code.Text + "'," + txtlandlinenumber.Text + ",'" + txtecpemailid.Text + "','" + txtpphouse_number.Text + "','" + txtppstreetaddress.Text + "','" + ddlppincode.SelectedValue + "','" + ddlparea.SelectedValue + "','" + ddlpcity.SelectedValue + "','" + ddlpstate.SelectedValue + "','" + ddlpcountry.SelectedValue + "')"

        End If

       
        Try
            cmd = New SqlCommand(insert, con.cn)
            cmd.ExecuteNonQuery()
            Response.Write("<script language=javascript>alert('Succesfully Completed ')</script>")


        Catch ex As Exception
            MsgBox(" Record not save")
        End Try
        con.cn.Close()

    End Sub

   
End Class
