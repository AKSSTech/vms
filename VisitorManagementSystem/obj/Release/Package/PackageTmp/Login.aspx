<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VisitorManagementSystem.Login" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="4" cellspacing="4" width="50%" align="center">
        <tr>
            <td align="center">
                <marquee scrollamount="3">
                <span style="color: red; font-size: 10pt; font-family: Verdana;">Welcome to AKSS - Visitor Management System.
                    Add Visitor, Track Visitor, Reports  & a lot more...</span></marquee>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Login ID="ctlLogin" runat="server" BackColor="#181887" BorderColor="#000099"
                    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                    Font-Size="0.8em" ForeColor="#FCFCFC" OnAuthenticate="OnAuthenticate" Width="300px"
                    Height="140px">
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <TextBoxStyle Font-Size="0.8em" Width="200px" />
                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                </asp:Login>
            </td>
        </tr>

    </table>
</asp:Content>
