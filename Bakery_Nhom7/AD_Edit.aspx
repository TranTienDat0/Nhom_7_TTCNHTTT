<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegisMaster.Master" AutoEventWireup="true" CodeBehind="AD_Edit.aspx.cs" Inherits="Bakery_Nhom7.AD_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
         .return {padding:5px;
                background-color:#f67d28;
                font-size:20px;
                text-decoration:none;
                border-radius:7px;
                color:#fff;
       }
    </style>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSanPham" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdating="FormView1_ItemUpdating">
        <EditItemTemplate>
            Mã sản phẩm:&nbsp;&nbsp;
            <asp:Label ID="MaSanPhamLabel1" runat="server" Text='<%# Eval("MaSanPham") %>' />
            <br />
            <br />
            Danh mục:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenDanhMuc" DataValueField="MaDanhMuc" SelectedValue='<%# Bind("MaDanhMuc") %>'>
            </asp:DropDownList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" SelectCommand="SELECT * FROM [DANHMUC_SP]"></asp:SqlDataSource>
            <br />
            Tên sản phẩm:&nbsp;&nbsp;
            <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("TenSanPham") %>' />
            <br />
            <br />
            Màu sắc:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="MauSacTextBox" runat="server" Text='<%# Bind("MauSac") %>' />
            <br />
            <br />
            Gía gốc :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="GiaGocTextBox" runat="server" Text='<%# Bind("GiaGoc") %>' />
            <br />
            <br />
            Số lượng có:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SoLuongCoTextBox" runat="server" Text='<%# Bind("SoLuongCo") %>' />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hình ảnh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;&nbsp;<br />
            <br />&nbsp;<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            MaSanPham:
            <asp:TextBox ID="MaSanPhamTextBox" runat="server" Text='<%# Bind("MaSanPham") %>' />
            <br />
            MaDanhMuc:
            <asp:TextBox ID="MaDanhMucTextBox" runat="server" Text='<%# Bind("MaDanhMuc") %>' />
            <br />
            TenSanPham:
            <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("TenSanPham") %>' />
            <br />
            MauSac:
            <asp:TextBox ID="MauSacTextBox" runat="server" Text='<%# Bind("MauSac") %>' />
            <br />
            GiaGoc:
            <asp:TextBox ID="GiaGocTextBox" runat="server" Text='<%# Bind("GiaGoc") %>' />
            <br />
            SoLuongCo:
            <asp:TextBox ID="SoLuongCoTextBox" runat="server" Text='<%# Bind("SoLuongCo") %>' />
            <br />
            hinhanh:
            <asp:TextBox ID="hinhanhTextBox" runat="server" Text='<%# Bind("hinhanh") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaSanPham:
            <asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Eval("MaSanPham") %>' />
            <br />
            MaDanhMuc:
            <asp:Label ID="MaDanhMucLabel" runat="server" Text='<%# Bind("MaDanhMuc") %>' />
            <br />
            TenSanPham:
            <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Bind("TenSanPham") %>' />
            <br />
            MauSac:
            <asp:Label ID="MauSacLabel" runat="server" Text='<%# Bind("MauSac") %>' />
            <br />
            GiaGoc:
            <asp:Label ID="GiaGocLabel" runat="server" Text='<%# Bind("GiaGoc") %>' />
            <br />
            SoLuongCo:
            <asp:Label ID="SoLuongCoLabel" runat="server" Text='<%# Bind("SoLuongCo") %>' />
            <br />
            hinhanh:
            <asp:Label ID="hinhanhLabel" runat="server" Text='<%# Bind("hinhanh") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" 
        DeleteCommand="DELETE FROM [SAN_PHAM] WHERE [MaSanPham] = @MaSanPham" 
        InsertCommand="INSERT INTO [SAN_PHAM] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MauSac], [GiaGoc], [SoLuongCo], [hinhanh]) VALUES (@MaSanPham, @MaDanhMuc, @TenSanPham, @MauSac, @GiaGoc, @SoLuongCo, @hinhanh)"
        SelectCommand="SELECT * FROM [SAN_PHAM] where MaSanPham = @MaSanPham"
        UpdateCommand="UPDATE [SAN_PHAM] SET [MaDanhMuc] = @MaDanhMuc, [TenSanPham] = @TenSanPham, [MauSac] = @MauSac, [GiaGoc] = @GiaGoc, [SoLuongCo] = @SoLuongCo, [hinhanh] = @hinhanh WHERE [MaSanPham] = @MaSanPham">
        <SelectParameters>
            <asp:QueryStringParameter Type="String" Name="MaSanPham" QueryStringField="MaSanPham" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="MaSanPham" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSanPham" Type="String" />
            <asp:Parameter Name="MaDanhMuc" Type="String" />
            <asp:Parameter Name="TenSanPham" Type="String" />
            <asp:Parameter Name="MauSac" Type="String" />
            <asp:Parameter Name="GiaGoc" Type="Int32" />
            <asp:Parameter Name="SoLuongCo" Type="Int32" />
            <asp:Parameter Name="hinhanh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaDanhMuc" Type="String" />
            <asp:Parameter Name="TenSanPham" Type="String" />
            <asp:Parameter Name="MauSac" Type="String" />
            <asp:Parameter Name="GiaGoc" Type="Int32" />
            <asp:Parameter Name="SoLuongCo" Type="Int32" />
            <asp:Parameter Name="hinhanh" Type="String" />
            <asp:Parameter Name="MaSanPham" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <a href="AD_BaoTriProduct.aspx" class="return">Quay về giao diện bảo trì</a>
</asp:Content>
