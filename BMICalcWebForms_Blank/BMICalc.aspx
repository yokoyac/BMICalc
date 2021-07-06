<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BMICalc.aspx.vb" Inherits="BMICalcWebForms_Blank.BMICalc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>BMI計算</title>
  <style>
    .main-area {
      width: 200px;
      border: 1px solid gray;
    }
  </style>
  <script type="text/javascript">
    function clearForm() {
        console.log("clearForm called!");

        var txtH = document.getElementById("txtHeight");
        txtH.value = '';
        var txtW = document.getElementById("txtWeight");
        txtW.value = '';

        var BMI = document.getElementById("lblBMI");
        BMI.innerText = '';
        var PW = document.getElementById("lblProperWeight");
        PW.innerText = '';
    }
  </script>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <h2>BMI計算</h2>
      <table class="main-area">
        <tr>
          <td>身長</td>
          <td>
            <asp:TextBox runat="server" ID="txtHeight" Width="50px" style="margin-right:4px;"></asp:TextBox>cm
          </td>        
        </tr>
        <tr>
          <td>体重</td>
          <td>
            <asp:TextBox runat="server" ID="txtWeight" Width="50px" style="margin-right:4px;"></asp:TextBox>kg
          </td>
        </tr>
        <tr>
          <td>BMI</td>
          <td>
            <asp:Label runat="server" ID="lblBMI" Text=""></asp:Label>
          </td>
        </tr>
        <tr>
          <td>適性体重</td>
          <td>
            <asp:Label runat="server" ID="lblProperWeight" Text=""></asp:Label>
          </td>
        </tr>
        <tr>
          <td colspan="2" style="text-align: right;">
            <asp:Button runat="server" ID="btnCalc" Text="計算" style="display: inline-block;" OnClick="btnCalc_Click"/>
            <input type="reset" value="リセット" onclick="clearForm(); return false;" />
          </td>
        </tr>
      </table>
    </div>
  </form>
</body>
</html>
