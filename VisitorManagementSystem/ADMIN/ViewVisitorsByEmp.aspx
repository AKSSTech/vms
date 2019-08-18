<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewVisitorsByEmp.aspx.cs" Inherits="VisitorManagementSystem.ADMIN.ViewVisitorsByEmp" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <table style="width: 100%; border: solid 2px red; background-color: white;">
        <tr style="background-color: #FF0000; color: white; font-size: 14pt; font-weight: bold; height: 30px; text-align: center;">
            <td>View Visitors By Guard
            </td>
        </tr>


        <tr>
            <td>
                <table style="width: 100%; border: solid 2px red;">
                    <tr style="background-color: skyblue; color: green; font-size: 14pt; font-weight: bold; height: 40px; text-align: center;">

                        <td><b>Select Guard To Get Visitor:</b>
                            <asp:DropDownList ID="ddlEmployee" runat="server" Width="200px"></asp:DropDownList>
                            <asp:Button ID="btnSearchVisitor" runat="server" Text="Search Visitor" OnClick="btnSearchVisitor_Click" />
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
                                    <HeaderStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-HorizontalAlign="Left" >
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" HeaderStyle-HorizontalAlign="Left" >

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="Block_FloorName" HeaderText="Block Name" HeaderStyle-HorizontalAlign="Left" >
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="City" HeaderText="City" HeaderStyle-HorizontalAlign="Left" >
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Address" HeaderText="Address" HeaderStyle-HorizontalAlign="Left" >

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
