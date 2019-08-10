<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewVisitorsByEmp.aspx.cs" Inherits="VisitorManagementSystem.ADMIN.ViewVisitorsByEmp" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <table style="width: 100%; border: solid 2px red; background-color: white;">
        <tr style="background-color: #FF0000; color: white; font-size: 14pt; font-weight: bold; height: 30px; text-align: center;">
            <td>View Visitors By Employee
            </td>
        </tr>


        <tr>
            <td>
                <table style="width: 100%; border: solid 2px red;">
                    <tr style="background-color: skyblue; color: green; font-size: 14pt; font-weight: bold; height: 40px; text-align: center;">

                        <td><b>Select Employee To Get Visitor:</b>
                            <asp:DropDownList ID="ddlEmployee" runat="server" Width="200px"></asp:DropDownList>
                            <asp:Button ID="btnSearchVisitor" runat="server" Text="Search Visitor" OnClick="btnSearchVisitor_Click" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClientClick="JavaScript:window.history.back(1); return false;" />

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridViewAllVisitors" runat="server" EmptyDataText="There is no Visitor." CellPadding="4"
                                ForeColor="#333333" GridLines="None" AutoGenerateColumns="false" Width="100%">
                                <AlternatingRowStyle BackColor="White" />
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <Columns>
                                    <asp:BoundField DataField="Visitor_ID" HeaderText="Visitor ID" HeaderStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" HeaderStyle-HorizontalAlign="Left" />

                                    <asp:BoundField DataField="Organization" HeaderText="From Company" HeaderStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="City" HeaderText="City" HeaderStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" HeaderStyle-HorizontalAlign="Left" />

                                    <asp:BoundField DataField="Visit_Department" HeaderText="To Department" HeaderStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="VisitPurpose" HeaderText="Visit Purpose" HeaderStyle-HorizontalAlign="Left" />

                                    <asp:BoundField DataField="Visit_Date" HeaderText="Visit Date" HeaderStyle-HorizontalAlign="Left" DataFormatString="{0:MMMM d, yyyy}" HtmlEncode="false" />
                                    <asp:BoundField DataField="In_Time" HeaderText="In" HeaderStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="Out_Time" HeaderText="Out" HeaderStyle-HorizontalAlign="Left" />

                                </Columns>
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
