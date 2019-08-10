<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddVisitor.aspx.cs" Inherits="VisitorManagementSystem.AddVisitor" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%;">
        <tr style="background-color: red; color: white; font-size: 14pt; font-weight: bold; height: 30px; text-align: center;">
            <td colspan="4">Add New Visitor
            </td>
        </tr>
        <tr>
            <td height="20px"></td>
        </tr>
        <tr>
            <td style="padding-left: 30px;">Name:
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>

            </td>
            <td>From Company:
            </td>
            <td>
                <asp:TextBox ID="txtFromCompany" runat="server" Width="200px"></asp:TextBox></td>

        </tr>


        <tr>
            <td style="padding-left: 30px;">Mobile No:
            </td>
            <td>
                <asp:TextBox ID="txtMobile" runat="server" Width="200px"></asp:TextBox></td>
            <td>Visit Purpose:
            </td>
            <td>
                <asp:TextBox ID="txtVisitPurpose" runat="server" Width="200px"></asp:TextBox></td>
        </tr>

        <tr>
            <td style="padding-left: 30px;">Visitor In-Time:
            </td>
            <td>
                <asp:TextBox ID="txtInTime" runat="server" Width="200px" Enabled="false"></asp:TextBox></td>
            <td>Visitor Out-Time:
            </td>
            <td>
                <asp:TextBox ID="txtOutTime" runat="server" Width="200px" Enabled="false"></asp:TextBox></td>
        </tr>

        <tr>
            <td style="padding-left: 30px;">Department To Meet:
            </td>
            <td>
                <asp:DropDownList ID="ddlDepartment" runat="server" Width="200px">
                    <asp:ListItem>HR</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>Interview</asp:ListItem>
                    <asp:ListItem>Office Desk</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="padding-left: 30px;">City:
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" Width="200px"></asp:TextBox></td>
            <td>Address:
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="200px" Height="70px"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnAddVisitor" runat="server" Text="Add Visitor" OnClick="btnAddVisitor_Click" />
                <asp:button id="btnCancel" runat="server" text="Cancel" OnClientClick="JavaScript:window.history.back(1); return false;" />

               
            </td>
        </tr>
    </table>
</asp:Content>
