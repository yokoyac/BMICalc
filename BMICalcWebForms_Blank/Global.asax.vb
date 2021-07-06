
Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ' アプリケーションの起動時に呼び出されます

        ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
        New ScriptResourceDefinition() With
        {
           .Path = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.10.2.min.js",
           .DebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.10.2.min.js"
        }
)
    End Sub
End Class