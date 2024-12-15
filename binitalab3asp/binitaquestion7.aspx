<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="que7.aspx.cs" Inherits="binitalab3asp.que7" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Simple Interest Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 300px;
            margin: 0 auto;
            padding-top: 50px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            font-weight: bold;
        }
        input[type="text"], input[type="button"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }
        input[type="button"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        input[type="button"]:hover {
            background-color: #45a049;
        }
        .result {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Simple Interest Calculator</h2>
        <form id="interestForm" runat="server">
            <div class="form-group">
                <label for="principal">Principal Amount:</label>
                <asp:TextBox ID="principal" runat="server" placeholder="Enter principal" />
            </div>
            <div class="form-group">
                <label for="rate">Rate of Interest (%):</label>
                <asp:TextBox ID="rate" runat="server" placeholder="Enter rate of interest" />
            </div>
            <div class="form-group">
                <label for="time">Time (Years):</label>
                <asp:TextBox ID="time" runat="server" placeholder="Enter time in years" />
            </div>
            <div class="form-group">
                <input type="button" value="Calculate Interest" onclick="calculateInterest()" />
            </div>
            <div class="result" id="result" runat="server"></div>
        </form>
    </div>

    <script>
        function calculateInterest() {
            var principal = parseFloat(document.getElementById('<%= principal.ClientID %>').value);
            var rate = parseFloat(document.getElementById('<%= rate.ClientID %>').value);
            var time = parseFloat(document.getElementById('<%= time.ClientID %>').value);

            if (isNaN(principal) || isNaN(rate) || isNaN(time) || principal <= 0 || rate <= 0 || time <= 0) {
                alert("Please enter valid values for principal, rate, and time.");
                return;
            }

            var interest = (principal * rate * time) / 100;
            var resultText = "Simple Interest: " + interest.toFixed(2);
            document.getElementById('<%= result.ClientID %>').innerText = resultText;
        }
    </script>
</body>
</html>
