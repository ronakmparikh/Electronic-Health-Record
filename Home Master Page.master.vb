Imports System.Data.SqlClient
Imports System.Data
Partial Class Home_Master_Page
    Inherits System.Web.UI.MasterPage
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim ds As dataset
    Dim str As String
    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        Dim con As New Connection()
        con.Connection()
        con.cn.Open()
        Dim password As String
        ' Dim user, pass As String
        '====================================================
        If (ddluser_type.SelectedValue = "Member") Then

            If (txtuserid.Text = "" And txtpassword.Text = "") Then
                MsgBox("User_id and Password are blank")
            ElseIf (txtuserid.Text = "") Then
                MsgBox("User id is blank")
            ElseIf (txtpassword.Text = "") Then
                MsgBox("Password is blank")

            Else

                password = encrypt(txtpassword.Text)
                str = "select * from Login_password where user_type='" + ddluser_type.SelectedValue + "'  and user_id='" + txtuserid.Text + "' and password='" + password + "' "
                Try
                    da = New SqlDataAdapter(str, con.cn)
                    ds = New DataSet()
                    da.Fill(ds, "Login_password")
                    txtuserid.Text = ds.Tables("Login_password").Rows(0)(1)
                    txtpassword.Text = ds.Tables("Login_password").Rows(0)(2)
                    Session("member_user_id") = txtuserid.Text
                    Response.Redirect("Member_page.aspx")

                Catch ex As Exception

                    'Response.Write("<script>alert('" + Server.HtmlEncode(ex.Message) + "')</script>")
                    Response.Write("<script language=javascript>alert('You Are Invalid User')</script>")

                End Try
            End If
            '=======================================================
        ElseIf (ddluser_type.SelectedValue = "Provider Organisation") Then

            If (txtuserid.Text = "" And txtpassword.Text = "") Then
                Response.Write("<script language=javascript>alert('User id and password is blank')</script>")
            ElseIf (txtuserid.Text = "") Then
                Response.Write("<script language=javascript>alert('user id is blank ')</script>")
            ElseIf (txtpassword.Text = "") Then
                Response.Write("<script language=javascript>alert('passsword is blank')</script>")

            Else
                password = encrypt(txtpassword.Text)
                str = "select * from Login_password where user_type='" + ddluser_type.SelectedValue + "'  and user_id='" + txtuserid.Text + "' and password='" + password + "' "
                Try
                    da = New SqlDataAdapter(str, con.cn)
                    ds = New DataSet()
                    da.Fill(ds, "Login_password")
                    txtuserid.Text = ds.Tables("Login_password").Rows(0)(1)
                    txtpassword.Text = ds.Tables("Login_password").Rows(0)(2)
                    Session("provide_org_user_id") = txtuserid.Text
                    Response.Redirect("~/infrastructure/hospital_page.aspx")

                Catch ex As Exception

                    '   Response.Write("<script>alert('" + Server.HtmlEncode(ex.Message) + "')</script>")

                    Response.Write("<script language=javascript>alert('You Are Invalid User')</script>")

                End Try
            End If
            '=============================================================

        ElseIf (ddluser_type.SelectedValue = "Provider Individual") Then

            If (txtuserid.Text = "" And txtpassword.Text = "") Then
                MsgBox("User_id and Password are blank")
            ElseIf (txtuserid.Text = "") Then
                MsgBox("User id is blank")
            ElseIf (txtpassword.Text = "") Then
                MsgBox("Password is blank")

            Else
                password = encrypt(txtpassword.Text)
                str = "select * from Login_password where user_type='" + ddluser_type.SelectedValue + "'  and user_id='" + txtuserid.Text + "' and password='" + password + "' "
                Try
                    da = New SqlDataAdapter(str, con.cn)
                    ds = New DataSet()
                    da.Fill(ds, "Login_password")
                    txtuserid.Text = ds.Tables("Login_password").Rows(0)(1)
                    txtpassword.Text = ds.Tables("Login_password").Rows(0)(2)
                    Session("provide_indi_user_id") = txtuserid.Text
                    Response.Redirect("~/Individual Provider/doctor_page.aspx")

                Catch ex As Exception

                    '   Response.Write("<script>alert('" + Server.HtmlEncode(ex.Message) + "')</script>")

                    Response.Write("<script language=javascript>alert('You Are Invalid User')</script>")

                End Try
            End If
            '===================Admin================================
        ElseIf (ddluser_type.SelectedValue = "Admin") Then

            If (txtuserid.Text = "" And txtpassword.Text = "") Then
                MsgBox("User_id and Password are blank")
            ElseIf (txtuserid.Text = "") Then
                MsgBox("User id is blank")
            ElseIf (txtpassword.Text = "") Then
                MsgBox("Password is blank")

            Else
                password = encrypt(txtpassword.Text)
                str = "select * from Login_password where user_type='" + ddluser_type.SelectedValue + "'  and user_id='" + txtuserid.Text + "' and password='" + password + "' "
                Try
                    da = New SqlDataAdapter(str, con.cn)
                    ds = New DataSet()
                    da.Fill(ds, "Login_password")
                    txtuserid.Text = ds.Tables("Login_password").Rows(0)(1)
                    txtpassword.Text = ds.Tables("Login_password").Rows(0)(2)
                    Session("admin") = txtuserid.Text
                    Response.Redirect("~/Admin/admin Home page.aspx")

                Catch ex As Exception

                    '   Response.Write("<script>alert('" + Server.HtmlEncode(ex.Message) + "')</script>")

                    Response.Write("<script language=javascript>alert('You Are Invalid User')</script>")

                End Try
            End If
            '========================================================
        Else
            Response.Write("<script language=javascript>alert('Select User Type')</script>")

        End If

        con.cn.Close()
    End Sub
    Private Function encrypt(ByVal str As String) As String
        Dim result As String = String.Empty
        Dim temp As Char() = str.ToCharArray()
        For Each singleChar In temp
            Dim i = AscW(singleChar)
            i = i - 2
            result += ChrW(i)
        Next
        Return result
    End Function

 
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        If (DropDownList1.SelectedValue = "Member") Then
            Dim popup As String = "<script language='javascript'>" & "window.open('popup_personal_detail.aspx','CustomPopUp', " & "'fullscreen=no,height=800,width=1500,top=250,left=250,location=0,directories=0,status=no,scrollbars=yes, dependant = no, alwaysRaised = yes, menubar=no,resizable=no')" & "</script>"
            ScriptManager.RegisterClientScriptBlock(Me.Page, Me.[GetType](), "PopupScript", popup, False)

        ElseIf (DropDownList1.SelectedValue = "Provider Organisation") Then

            Dim popup As String = "<script language='javascript'>" & "window.open('registration.aspx','CustomPopUp', " & "'fullscreen=no,height=800,width=1500,top=250,left=250,location=0,directories=0,status=no,scrollbars=yes, dependant = no, alwaysRaised = yes, menubar=no,resizable=no')" & "</script>"
            ScriptManager.RegisterClientScriptBlock(Me.Page, Me.[GetType](), "PopupScript", popup, False)

        ElseIf (DropDownList1.SelectedValue = "Provider Individual") Then

            Dim popup As String = "<script language='javascript'>" & "window.open('doctor_personal_detail.aspx','CustomPopUp', " & "'fullscreen=no,height=800,width=1500,top=250,left=250,location=0,directories=0,status=no,scrollbars=yes, dependant = no, alwaysRaised = yes, menubar=no,resizable=no')" & "</script>"
            ScriptManager.RegisterClientScriptBlock(Me.Page, Me.[GetType](), "PopupScript", popup, False)

        End If
    End Sub

 
  

  
    Protected Sub LinkButton8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton8.Click
        Dim popup As String = "<script language='javascript'>" & "window.open('Forget_Password.aspx','CustomPopUp', " & "'fullscreen=no,height=150,width=300,top=250,left=250,location=0,directories=0,status=no,scrollbars=yes, dependant = no, alwaysRaised = yes, menubar=no,resizable=no')" & "</script>"
        ScriptManager.RegisterClientScriptBlock(Me.Page, Me.[GetType](), "PopupScript", popup, False)

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub



End Class

