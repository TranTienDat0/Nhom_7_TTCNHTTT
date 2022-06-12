<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegisMaster.Master" AutoEventWireup="true" CodeBehind="AD_AddProduct.aspx.cs" Inherits="Bakery_Nhom7.AD_AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

       .return {padding:5px;
                background-color:#f67d28;
                font-size:20px;
                text-decoration:none;
                border-radius:7px;
                color:#fff;
       }
        TextBox {
            width:150px;
        }
      
    </style>
    <h2>Thêm sản phẩm</h2>
    <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert"  DataKeyNames="MaSanPham" DataSourceID="SqlDataSource1" OnItemInserting="FormView1_ItemInserting">
        <EditItemTemplate>
            Mã sản phẩm:
            <asp:Label ID="MaSanPhamLabel1" runat="server" Text='<%# Eval("MaSanPham") %>' />
            <br />
            <br />
            Tên danh mục:
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource12" DataTextField="TenDanhMuc" DataValueField="MaDanhMuc" SelectedValue='<%# Bind("MaDanhMuc") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" SelectCommand="SELECT * FROM [DANHMUC_SP]"></asp:SqlDataSource>
            <br />
            <br />
            Tên sản phẩm:
            <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("TenSanPham") %>' />
            <br />
            <br />
            Màu sắc:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="MauSacTextBox" runat="server" Text='<%# Bind("MauSac") %>' />
            <br />
            <br />
            Giá gốc:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="GiaGocTextBox" runat="server" Text='<%# Bind("GiaGoc") %>' />
            <br />
            <br />
            Số lượng:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SoLuongCoTextBox" runat="server" Text='<%# Bind("SoLuongCo") %>' />
            <br />
            <br />
            Hình ảnh:&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Mã sản phẩm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="MaSanPhamTextBox" runat="server" Text='<%# Bind("MaSanPham") %>' />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Danh Mục:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenDanhMuc" DataValueField="MaDanhMuc" SelectedValue='<%# Bind("MaDanhMuc") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" SelectCommand="SELECT * FROM [DANHMUC_SP]"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Tên Sản phẩm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("TenSanPham") %>' />
            <br />
            <br />
            Màu sắc:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="MauSacTextBox" runat="server" Text='<%# Bind("MauSac") %>' />
            <br />
            <br />
            Gía gốc:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="GiaGocTextBox" runat="server" Text='<%# Bind("GiaGoc") %>' />
            <br />
            <br />
            Số lượng có:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SoLuongCoTextBox" runat="server" Text='<%# Bind("SoLuongCo") %>' Height="23px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hình ảnh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br /><br /><br />
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
        SelectCommand="SELECT * FROM [SAN_PHAM]" 
        UpdateCommand="UPDATE [SAN_PHAM] SET [MaDanhMuc] = @MaDanhMuc, [TenSanPham] = @TenSanPham, [MauSac] = @MauSac, [GiaGoc] = @GiaGoc, [SoLuongCo] = @SoLuongCo, [hinhanh] = @hinhanh WHERE [MaSanPham] = @MaSanPham">

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
    <a href="AD_BaoTriProduct.aspx" class="return">Về trang bảo trì</a>
</asp:Content>
