Public Class registroDolares
    Inherits System.Web.UI.Page
    Public dst As DataSet

    Private Sub Limpiar()
        compra.Text = ""
        venta.Text = ""
        banco.Text = ""

    End Sub

    Protected Sub Registrar_Click(sender As Object, e As EventArgs) Handles registrar.Click

        ConexionSQLServer.AbrirConexion()
        ConexionSQLServer.Cnn.Open()

        Dim cmd As New SqlClient.SqlCommand("exec ProcedimientoAlmacenado @variable = 'insert', @compraActual = '" & compra.Text & "', @ventaActual = '" & venta.Text & "', @banco = '" & banco.Text & "'", ConexionSQLServer.Cnn)
        cmd.ExecuteNonQuery()

        Limpiar()

        ConexionSQLServer.Cnn.Close()

    End Sub

    Protected Sub Compra_TextChanged(sender As Object, e As EventArgs) Handles compra.TextChanged
    End Sub

    Protected Sub Venta_TextChanged(sender As Object, e As EventArgs) Handles venta.TextChanged

    End Sub

    Protected Sub Banco_TextChanged(sender As Object, e As EventArgs) Handles banco.TextChanged

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub consultar_Click(sender As Object, e As EventArgs) Handles consultar.Click
        ConexionSQLServer.AbrirConexion()
        ConexionSQLServer.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("exec ProcedimientoAlmacenado @variable = 'select', @compraActual = '" & compra.Text & "', @ventaActual = '" & venta.Text & "', @banco = '" & banco.Text & "'", ConexionSQLServer.Cnn)
        'Dim ds As DataSet = New DataSet
        dst = New DataSet
        da.Fill(dst)
        If dst.Tables(0).Rows.Count > 0 Then
            Session("grid") = dst.Tables(0)
            Session("fecha") = Now

            Server.Transfer("consultas.aspx")

        End If
        ConexionSQLServer.Cnn.Close()
    End Sub
End Class