<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="VisitorManagementSystem.ADMIN.AdminPanel" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%; padding: 20px;">
        <tr style="background-color: green; color: white; font-size: 15pt; font-weight: bold; height: 30px; text-align: center;">
            <td>ADMINISTRATIVE PANEL
            </td>
        </tr>
        <tr>
            <td height="20px"></td>
        </tr>
        <tr>
            <td style="padding-left: 50px; color: #FF3300;">
                <asp:LinkButton ID="lnkManageUsers" runat="server" Text="Manage Employee" OnClick="lnkManageUsers_Click" Font-Size="X-Large"></asp:LinkButton>
                (View All Employee, Add New Employee, Manage Employee, Delete Employee, Edit Employee)
            </td>
        </tr>
        <tr>
            <td height="30px"></td>
        </tr>
        <tr>
            <td style="padding-left: 50px; color: #FF3300;">
                <asp:LinkButton ID="lnkManageVisitors" runat="server" Text="Manage Visitors" OnClick="lnkManageVisitors_Click" Font-Size="X-Large"></asp:LinkButton>
                (View Visitors, Manage Files)
            </td>
        </tr>

        <tr>
            <td height="30px"></td>
        </tr>
        <tr>
            <td style="padding-left: 50px; color: #FF3300;">
                <asp:LinkButton ID="lnkBtnVisitorByEmployee" runat="server" Text="View Visitors By Employee" OnClick="lnkBtnVisitorByEmployee_Click" Font-Size="X-Large"></asp:LinkButton>
                (View Visitors, Manage Files)
            </td>
        </tr>
    </table>
</asp:Content>
