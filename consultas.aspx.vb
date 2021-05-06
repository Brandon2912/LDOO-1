Public Class consultas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        GridView1.DataSource = Session("grid")
        GridView1.DataBind()

        Session.Remove("grid")

    End Sub

End Class