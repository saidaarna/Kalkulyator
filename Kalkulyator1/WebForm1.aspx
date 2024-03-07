<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Kalkulyator1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>






<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="calculator card">
    <asp:TextBox ID="txtResult" runat="server" CssClass="calculator-screen z-depth-1" Enabled="false">0</asp:TextBox>
    <div class="calculator-keys">
        <asp:Button ID="btnAdd" runat="server" Text="+" CssClass="operator btn btn-info" OnClick="btnOperator_Click" />
        <asp:Button ID="btnSubtract" runat="server" Text="-" CssClass="operator btn btn-info" OnClick="btnOperator_Click" />
        <asp:Button ID="btnMultiply" runat="server" Text="*" CssClass="operator btn btn-info" OnClick="btnOperator_Click" />
        <asp:Button ID="btnDivide" runat="server" Text="/" CssClass="operator btn btn-info" OnClick="btnOperator_Click" />

        <asp:Button ID="btn7" runat="server" Text="7" CssClass="btn btn-light waves-effect" OnClick="btnNumber_Click" />
        <asp:Button ID="btn8" runat="server" Text="8" CssClass="btn btn-light waves-effect" OnClick="btnNumber_Click" />
        <asp:Button ID="btn9" runat="server" Text="9" CssClass="btn btn-light waves-effect" OnClick="btnNumber_Click" />

        <asp:Button ID="btn4" runat="server" Text="4" CssClass="btn btn-light waves-effect" OnClick="btnNumber_Click" />
        <asp:Button ID="btn5" runat="server" Text="5" CssClass="btn btn-light waves-effect" OnClick="btnNumber_Click" />
        <asp:Button ID="btn6" runat="server" Text="6" CssClass="btn btn-light waves-effect" OnClick="btnNumber_Click" />

        <asp:Button ID="btn1" runat="server" Text="1" CssClass="btn btn-light waves-effect" OnClick="btnNumber_Click" />
        <asp:Button ID="btn2" runat="server" Text="2" CssClass="btn btn-light waves-effect" OnClick="btnNumber_Click" />
        <asp:Button ID="btn3" runat="server" Text="3" CssClass="btn btn-light waves-effect" OnClick="btnNumber_Click" />

        <asp:Button ID="btn0" runat="server" Text="0" CssClass="btn btn-light waves-effect" OnClick="btnNumber_Click" />
        <asp:Button ID="btnDecimal" runat="server" Text="." CssClass="decimal function btn btn-secondary" OnClick="btnDecimal_Click" />
        <asp:Button ID="btnClear" runat="server" Text="AC" CssClass="all-clear function btn btn-danger btn-sm" OnClick="btnClear_Click" />

        <asp:Button ID="btnEqual" runat="server" Text="=" CssClass="equal-sign operator btn btn-default" OnClick="btnEqual_Click" />

       
    </div>
</div>

    
</asp:Content>
