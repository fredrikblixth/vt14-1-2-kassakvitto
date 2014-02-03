<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href="Style/style.css" rel="stylesheet" />
    <script src="Scripts/script.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- Input --%>
            <asp:Label ID="TotalSumLabel" runat="server" Text="Total köpesumma:"></asp:Label>
            <asp:TextBox ID="TotalSumTextbox" runat="server"></asp:TextBox>
            <asp:Label ID="Crowns" runat="server" Text="Kr"></asp:Label>
            
            <%-- Validering --%>
            <div>
                <asp:RequiredFieldValidator ID="TotalSumRequired" runat="server" 
                    ErrorMessage="Fältet är obligatoriskt!" 
                    ControlToValidate="TotalSumTextbox" CssClass="error"></asp:RequiredFieldValidator>
                
                <asp:CompareValidator ID="TotalSumDoubleValidator" runat="server" 
                    ErrorMessage="Kan inte tolkas som ett tal" 
                    ControlToValidate="TotalSumTextbox" 
                    Operator="DataTypeCheck" 
                    ValueToCompare="0" Type="Double" CssClass="error"></asp:CompareValidator>
                
                <asp:CompareValidator ID="TotalSumPositiveDoubleValidator" runat="server" 
                    ErrorMessage="Talet måste vara större än 0!" 
                    ControlToValidate="TotalSumTextbox" 
                    Operator="GreaterThan" 
                    ValueToCompare="0" CssClass="error"></asp:CompareValidator>
            </div>
        </div>
        <div>
            <%-- Submitknapp --%>
            <asp:Button ID="CalculateReceiptButton" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
