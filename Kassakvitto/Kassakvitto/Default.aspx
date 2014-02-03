<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href="Style/style.css" rel="stylesheet" />
    <script src="Scripts/script.js"></script>
</head>
<body>
    <form id="inputForm" runat="server">
        <div>
            <%-- Input --%>
            <asp:Label ID="TotalSumLabel" runat="server" Text="Total köpesumma:"></asp:Label>
            <asp:TextBox ID="TotalSumTextbox" runat="server"></asp:TextBox>
            <asp:Label ID="Crowns" runat="server" Text="Kr"></asp:Label>
            
            <%-- Validation --%>
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
            <%-- Submit button --%>
            <asp:Button ID="CalculateReceiptButton" runat="server" Text="Beräkna" OnClick="CalculateReceiptButton_Click" />
        </div>
        <%-- Receipt --%>
        <asp:Panel ID="ReceiptPanel" runat="server" Visible="false">
            <div class="receiptHeader">
                <asp:Label ID="ReceiptHeaderLabel" runat="server" Text="Kvitto"></asp:Label>
            </div>
            <div class="receiptSummary">
                <div>
                    <asp:Label ID="TotalAmountLabel" CssClass="summaryLeft" runat="server" Text="Totalt:"></asp:Label>
                    <asp:Label ID="TotalAmount" CssClass="summaryRight" runat="server" Text=""></asp:Label>
                </div>
                <div>
                    <asp:Label ID="DiscountPercentageLabel" CssClass="summaryLeft" runat="server" Text="Rabattsats:"></asp:Label>
                    <asp:Label ID="DiscountPercentage" CssClass="summaryRight" runat="server" Text=""></asp:Label>
                </div>
                <div>
                    <asp:Label ID="DiscountAmountLabel" CssClass="summaryLeft" runat="server" Text="Rabatt:"></asp:Label>
                    <asp:Label ID="DiscountAmount" CssClass="summaryRight" runat="server" Text=""></asp:Label>
                </div>
                <div>
                    <asp:Label ID="ToPayLabel" CssClass="summaryLeft" runat="server" Text="Att betala:"></asp:Label>
                    <asp:Label ID="ToPayAmount" CssClass="summaryRight" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="receiptBottom">
                <asp:Label ID="WelcomeBackLabel" runat="server" Text="Välkommen åter!"></asp:Label>
            </div>
        </asp:Panel>
    </form>

</body>
</html>
