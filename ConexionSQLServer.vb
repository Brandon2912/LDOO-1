Imports System.Web
Imports System.Data.SqlClient

Public Class ConexionSQLServer
    Public Shared Cnn As SqlClient.SqlConnection
    Public Shared Validar As String = "0"

    Public Shared Sub AbrirConexion()
        Cnn = New SqlConnection("Server=sbd-proyecto.database.windows.net;Database=Bancos;User Id=SBD;Password=Contraseña1;")
    End Sub


End Class

