Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Connection
    Public cn, coni As SqlClient.SqlConnection
    Public da As SqlClient.SqlDataAdapter
    Public ds As DataSet
    Public Sub Connection()
        'coni = New SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|infra.mdf;Integrated Security=True;User Instance=True ")

        cn = New SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Patient_demography.mdf;Integrated Security=True;User Instance=True ")
    End Sub
End Class
