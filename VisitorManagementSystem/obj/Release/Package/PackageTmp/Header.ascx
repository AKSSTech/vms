<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="VisitorManagementSystem.Header" %>
<table style="width: 100%; background-color:darkblue;">
    <tr>
        <td style="height: 30px;">
            <div style="text-align:center">
                <span style="text-align: left; font-size: 20pt; font-weight: bold; color: white; padding: 10px;">Visitor Management System</span>
            </div>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:LinkButton ID="Login" runat="server" Text="Login |" OnClick="Login_Click" CssClass="BlueText"
                CausesValidation="false" ForeColor="White" Font-Bold="true"></asp:LinkButton>
            <asp:LinkButton ID="Logout" runat="server" Text="Logout |" OnClick="Logout_Click"
                CssClass="BlueText" CausesValidation="false" ForeColor="White" Font-Bold="true"></asp:LinkButton>
            <asp:LinkButton ID="MyProfile" runat="server" Text="My Profile | " OnClick="MyProfile_Click"
                CausesValidation="false" CssClass="BlueText" ForeColor="White" Font-Bold="true"></asp:LinkButton>

            <asp:LinkButton ID="lnkBtnAdmin" runat="server" Text="ADMIN" OnClick="Admin_Click"
                CausesValidation="false" CssClass="BlueText" ForeColor="White" Font-Bold="true"></asp:LinkButton>
        </td>
    </tr>
</table>
