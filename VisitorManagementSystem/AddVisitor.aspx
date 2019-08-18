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
                    <asp:RequiredFieldValidator ID="reqName" ControlToValidate="txtName" ValidationGroup="AddVistorFrame" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>IC / Passport No</td>
            <td>
                <asp:TextBox ID="txtICno" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtICno" ValidationGroup="AddVistorFrame" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>

        </tr>


        <tr>
            <td style="padding-left: 30px;">Mobile No:
            </td>
            <td>
                <asp:TextBox ID="txtMobile" runat="server" Width="200px"></asp:TextBox></td>
            <td>Visit Purpose:
            </td>
            <td>
                <asp:TextBox ID="txtVisitPurpose" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtVisitPurpose" ValidationGroup="AddVistorFrame" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
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
            <td style="padding-left: 30px;">Block &amp; Floor Name:</td>
            <td>
                <asp:TextBox ID="txtBlockName" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtBlockName" ValidationGroup="AddVistorFrame" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                <%--<asp:DropDownList ID="ddlDepartment" runat="server" Width="200px">
                    <asp:ListItem>HR</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>Interview</asp:ListItem>
                    <asp:ListItem>Office Desk</asp:ListItem>
                </asp:DropDownList>--%>
                    </td>
              <td>Person To Meet:</td>
            <td>
                <asp:TextBox ID="txtPersontoMeet" runat="server" Width="200px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtPersontoMeet" ValidationGroup="AddVistorFrame" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
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
                <asp:Button ID="btnAddVisitor" runat="server" Text="Add Visitor" ValidationGroup="AddVistorFrame" OnClick="btnAddVisitor_Click" />
                <asp:button id="btnCancel" runat="server" text="Cancel" OnClientClick="JavaScript:window.history.back(1); return false;" />

               
            </td>
        </tr>
    </table>
</asp:Content>
