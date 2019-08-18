<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageEmployee.aspx.cs" Inherits="VisitorManagementSystem.ADMIN.ManageEmployee" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%; padding: 10px;">
        <tr style="background-color: #FF0000; color: white; font-size: 14pt; font-weight: bold; height: 30px; text-align: center;">
            <td>Manage Employee
            </td>
        </tr>
        <tr>
            <td height="10px"></td>
        </tr>
        <tr>
            <td>
                <table style="background-color: white; color: white; font-size: 15pt; font-weight: bold; border: solid 2px red; width: 100%; padding-bottom: 10px; padding-top: 5px;">
                    <tr>
                        <td style="width: 30%; padding-left: 100px; font-family: Arial; font-size: 11pt; color: green;">Employee Name #:               
                        </td>
                        <td style="padding-left: 20px;">
                            <asp:TextBox ID="txtUserName" runat="server" Width="250px" ValidationGroup="AddloginFrame"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUserName" ValidationGroup="AddloginFrame" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td style="width: 30%; padding-left: 100px; font-family: Arial; font-size: 11pt; color: green;">Email / UserName #:               
                        </td>
                        <td style="padding-left: 20px;">
                            <asp:TextBox ID="txtUserEmail" runat="server" Width="250px" ValidationGroup="AddloginFrame"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtUserEmail" ValidationGroup="AddloginFrame" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 30%; padding-left: 100px; font-family: Arial; font-size: 11pt; color: green;">Password #:               
                        </td>
                        <td style="padding-left: 20px;">
                            <asp:TextBox ID="txtPwd" runat="server" Width="250px" TextMode="Password" ValidationGroup="AddloginFrame"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPwd" ValidationGroup="AddloginFrame" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="padding-left: 20px; padding-top: 10px;">
                            <asp:Button ID="btnAddNewUser" ValidationGroup="AddloginFrame" runat="server" Text="Add New User" OnClick="btnAddNewUser_Click" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClientClick="JavaScript:window.history.back(1); return false;" /></td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr style="background-color: #FF0000; color: white; font-size: 14pt; font-weight: bold; height: 30px; text-align: center;">
            <td>All Employee
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridViewUsers" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False"
                    HeaderStyle-HorizontalAlign="Left">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                    <Columns>
                        <asp:BoundField DataField="Emp_ID" HeaderText="Employee ID" HeaderStyle-HorizontalAlign="Left">
                            <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-HorizontalAlign="Left">
                            <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-HorizontalAlign="Left">
                            <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Password" HeaderText="Password" HeaderStyle-HorizontalAlign="Left">
                            <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="User_Type" HeaderText="User_Type" HeaderStyle-HorizontalAlign="Left">
                            <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Created_Date" HeaderText="Profile Created" HeaderStyle-HorizontalAlign="Left">

                            <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                        </asp:BoundField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkDelete" Text="Delete" CommandArgument='<%# Eval("Emp_ID") %>'
                                    runat="server" OnClick="DeleteUser" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
