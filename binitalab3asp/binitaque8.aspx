<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="que8.aspx.cs" Inherits="binitalab3asp.que8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Registration Form</h2>

            <asp:Label ID="lblFullName" runat="server" Text="Full Name:" AssociatedControlID="fullName" />
            <asp:TextBox ID="fullName" runat="server" />
            <asp:RequiredFieldValidator ID="rfvFullName" ControlToValidate="fullName" ErrorMessage="Full Name is required" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

            <br />

            <asp:Label ID="lblAddress" runat="server" Text="Address:" AssociatedControlID="address" />
            <asp:TextBox ID="address" runat="server" />
            <asp:RequiredFieldValidator ID="rfvAddress" ControlToValidate="address" ErrorMessage="Address is required" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

            <br />

            <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="email" />
            <asp:TextBox ID="email" runat="server" />
            <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="email" ErrorMessage="Email is required" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="email" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ErrorMessage="Invalid Email format" ForeColor="Red" />

            <br />

            <asp:Label ID="lblPhone" runat="server" Text="Phone:" AssociatedControlID="phone" />
            <asp:TextBox ID="phone" runat="server" />
            <asp:RequiredFieldValidator ID="rfvPhone" ControlToValidate="phone" ErrorMessage="Phone is required" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

            <br />

            <asp:Label ID="lblWebsite" runat="server" Text="Website:" AssociatedControlID="website" />
            <asp:TextBox ID="website" runat="server" />

            <br />

            <asp:Label ID="lblGender" runat="server" Text="Gender:" AssociatedControlID="gender" />
            <asp:RadioButtonList ID="gender" runat="server">
                <asp:ListItem Text="Male" Value="Male" />
                <asp:ListItem Text="Female" Value="Female" />
                <asp:ListItem Text="Other" Value="Other" />
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfvGender" ControlToValidate="gender" InitialValue="" ErrorMessage="Gender is required" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

            <br />

            <asp:Label ID="lblCountry" runat="server" Text="Country:" AssociatedControlID="country" />
            <asp:DropDownList ID="country" runat="server">
                <asp:ListItem Text="Select Country" Value="" />
                <asp:ListItem Text="USA" Value="USA" />
                <asp:ListItem Text="Canada" Value="Canada" />
                <asp:ListItem Text="India" Value="India" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvCountry" ControlToValidate="country" InitialValue="" ErrorMessage="Country is required" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

            <br /><br />

            <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="BtnRegister_Click" />
            <br /><br />

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />
        </div>
    </form>
</body>
</html>
