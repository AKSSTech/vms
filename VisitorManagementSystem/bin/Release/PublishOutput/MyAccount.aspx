<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="VisitorManagementSystem.MyAccount" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%;">
       <tr style="background-color: red; color: white; font-size: 14pt; font-weight: bold; height: 30px; text-align: center;">
            <td>
                <asp:Label ID="lblLoginUser" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td height="20px"></td>
        </tr>
        <tr>
            <td style="padding-left: 50px;">
                <asp:LinkButton ID="lnkAddVisitor" runat="server" Text="Add New Visitor" OnClick="lnkAddVisitor_Click" ForeColor="Navy"></asp:LinkButton>

            </td>
        </tr>
        <tr>
            <td height="10px"></td>
        </tr>
        <tr>
            <td style="padding-left: 50px; color: #FF3300;">
                <asp:LinkButton ID="lnkViewAllVisitor" runat="server" Text="View All Visitor" OnClick="lnkViewAllVisitor_Click" ForeColor="Navy"></asp:LinkButton>

            </td>
        </tr>
    </table>
</asp:Content>

