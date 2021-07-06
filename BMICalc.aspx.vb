Public Class BMICalc
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    ''' <summary>
    ''' BMI計算をします
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub btnCalc_Click(sender As Object, e As EventArgs)

        ' 空文字判定
        If txtHeight.Text Is "" Or txtWeight.Text Is "" Then

            ShowMessage("未入力です")

        ElseIf IsNumeric(txtHeight.Text) And IsNumeric(txtWeight.Text) Then

            ' 身長(m)、体重(kg)
            Dim height As Double = Integer.Parse(txtHeight.Text) / 100
            Dim weight As Double = Integer.Parse(txtWeight.Text)

            ' 身長、体重が0以上のとき
            If height >= 0 And weight >= 0 Then

                ' BMI
                lblBMI.Text = weight / (height * height)
                ' 適正体重
                lblProperWeight.Text = (height * height) * 22

            Else
                ShowMessage("0以上の数値を入力してください")

            End If

        Else
            ShowMessage("数値を入力してください")

        End If

    End Sub


    ''' <summary>
    ''' 簡易エラーメッセージ（alert）
    ''' </summary>
    ''' <param name="message"></param>
    Private Sub ShowMessage(message As String)
        Dim script As String = $"alert('{message}');"
        ClientScript.RegisterStartupScript(Me.GetType(), "ALERT_MESSAGE", script, True)
    End Sub

End Class