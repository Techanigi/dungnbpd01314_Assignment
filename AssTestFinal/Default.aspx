<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AssTestFinal.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td colspan="3">
                    <h1 class="auto-style1"><strong>QUẢN LÝ CSDL KHÁCH HÀNG</strong></h1>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="MaKH" HeaderText="Mã khách hàng" ReadOnly="True" SortExpression="MaKH" />
                            <asp:BoundField DataField="TenKH" HeaderText="Tên khách hàng" SortExpression="TenKH" />
                            <asp:BoundField DataField="SDT" HeaderText="Số ĐT" SortExpression="SDT" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:CommandField CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" InsertText="Chèn" NewText="Tạo mới" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:FormView ID="FormView2" runat="server" DataKeyNames="MaKH" DataSourceID="SqlDataSource1">
                        <EditItemTemplate>
                            MaKH:
                            <asp:Label ID="MaKHLabel1" runat="server" Text='<%# Eval("MaKH") %>' />
                            <br />
                            TenKH:
                            <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                            <br />
                            SDT:
                            <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                            <br />
                            Email:
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Tạo mới" />
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            Mã khách hàng:&nbsp;
                            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                            <br />
                            Tên khách hàng:&nbsp;
                            <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                            <br />
                            Số ĐT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                            <br />
                            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Tạo mới" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Tạo mới" />
                        </ItemTemplate>
                    </asp:FormView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dungnbpd01314AssignmentConnectionString %>" DeleteCommand="DELETE FROM [KHACHHANG] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KHACHHANG] ([MaKH], [TenKH], [SDT], [Email]) VALUES (@MaKH, @TenKH, @SDT, @Email)" SelectCommand="SELECT * FROM [KHACHHANG]" UpdateCommand="UPDATE [KHACHHANG] SET [TenKH] = @TenKH, [SDT] = @SDT, [Email] = @Email WHERE [MaKH] = @MaKH">
            <DeleteParameters>
                <asp:Parameter Name="MaKH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaKH" Type="String" />
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="MaKH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        -----------------------------</p>
    <p>
        Người tạo: Nguyễn Bá Dũng</p>
    <p>
        MSSV: PD01314</p>
    <p>
        Lớp: PT10303-UD</p>
</body>
</html>
