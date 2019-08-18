<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageVisitors.aspx.cs" Inherits="VisitorManagementSystem.ADMIN.ManageVisitors" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../Scripts/jquery-1.7.2.min.js"></script>
    <script src="../Scripts/jquery-ui-1.8.19.custom.min.js"></script>

    <script src="Scripts/jquery-ui-1.8.20.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#ContentPlaceHolder1_txtDate").datepicker();
        });
    </script>
    <style type="text/css">
        .ui-datepicker {
            font-size: 8pt !important;
        }
    </style>

    <table style="width: 100%; border: solid 2px red; background-color: white;">
        <tr style="background-color: #FF0000; color: white; font-size: 14pt; font-weight: bold; height: 30px; text-align: center;">
            <td>Manage Visitors
            </td>
        </tr>


        <tr>
            <td>
                <table style="width: 100%; border: solid 2px red;">
                    <tr style="background-color: skyblue; color: green; font-size: 14pt; font-weight: bold; height: 40px; text-align: center;">

                        <td><b>Select Date To Filter Visitor:</b>
                            <asp:TextBox ID="txtDate" runat="server" />
                            <asp:Button ID="btnSearchVisitor" runat="server" Text="Search Visitor" OnClick="btnSearchVisitor_Click" />
                            <asp:Button ID="btnAllVisitor" runat="server" Text="All Visitor" OnClick="btnAllVisitor_Click" />

                            <asp:Button ID="btnWithoutLogOut" runat="server" Text="Visitor Without Logout " OnClick="btnWithoutLogOut_Click" />
                            <asp:Button ID="btnAllLogout" runat="server" Text="All Logout Visitor" OnClick="btnAllLogout_Click" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClientClick="JavaScript:window.history.back(1); return false;" />
                            <asp:Button ID="btnExport" runat="server" OnClick="btnExport_Click" Text="Export" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridViewAllVisitors" runat="server" EmptyDataText="There is no Visitor." CellPadding="4"
                                ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="100%">
                                <AlternatingRowStyle BackColor="White" />
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <Columns>
                                    <asp:BoundField DataField="Visitor_ID" HeaderText="Visitor ID" HeaderStyle-HorizontalAlign="Left" >
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="IC_No" HeaderText="IC / Passport" HeaderStyle-HorizontalAlign="Left" >
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-HorizontalAlign="Left" >
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" HeaderStyle-HorizontalAlign="Left" >

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="City" HeaderText="City" HeaderStyle-HorizontalAlign="Left" >
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Address" HeaderText="Address" HeaderStyle-HorizontalAlign="Left" >

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="Block_FloorName" HeaderText="Block Name" HeaderStyle-HorizontalAlign="Left" >
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="VisitPurpose" HeaderText="Visit Purpose" HeaderStyle-HorizontalAlign="Left" >

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PersonToMeet" HeaderText="PersonToMeet" />

                                    <asp:BoundField DataField="Visit_Date" HeaderText="Visit Date" HeaderStyle-HorizontalAlign="Left" DataFormatString="{0:MMMM d, yyyy}" HtmlEncode="false" >
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="In_Time" HeaderText="In" HeaderStyle-HorizontalAlign="Left" >
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Out_Time" HeaderText="Out" HeaderStyle-HorizontalAlign="Left" >

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                           
                                            <asp:LinkButton ID="lnkDelete" Text="Delete" CommandName='<%# Eval("Visitor_ID") %>'
                                                runat="server" OnClick="DeleteVisitor"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>

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

