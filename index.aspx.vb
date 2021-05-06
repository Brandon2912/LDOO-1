Public Class index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub consulta_Click(sender As Object, e As EventArgs) Handles consulta.Click

        Response.Redirect("consultas.aspx")

    End Sub

    Protected Sub registro_Click(sender As Object, e As EventArgs) Handles registro.Click

        Response.Redirect("registroDolares.aspx")

    End Sub
End Class