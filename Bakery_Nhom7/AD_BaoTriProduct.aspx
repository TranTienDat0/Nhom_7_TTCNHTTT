<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegisMaster.Master" AutoEventWireup="true" CodeBehind="AD_BaoTriProduct.aspx.cs" Inherits="Bakery_Nhom7.Admin.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .add {
            display:block;
            text-decoration:none;
            padding:5px;
            background-color:#0094ff;
            width:200px;
            color:#fff;
            float:right;
            font-size:20px;
            border-radius:5px;
        }
        .auto-style1 {
            margin-right: 44;
        }
         
    </style>
    <h2> Bảo trì sản phẩm sản phẩm</h2><br />
    <p><a href="AD_AddProduct.aspx" class="add">Thêm sản phẩm</a>
    </p>
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSanPham" DataSourceID="SqlDataSource1" Width="962px" Height="777px" CssClass="auto-style1">
        <Columns>
            <asp:BoundField DataField="MaSanPham" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSanPham" />
            <asp:BoundField DataField="MaDanhMuc" HeaderText="Mã danh mục" SortExpression="MaDanhMuc" />
            <asp:BoundField DataField="TenSanPham" HeaderText="Tên sản phẩm" SortExpression="TenSanPham" />
            <asp:BoundField DataField="MauSac" HeaderText="Màu sắc" SortExpression="MauSac" />
            <asp:BoundField DataField="GiaGoc" HeaderText="Gía gốc" SortExpression="GiaGoc" />
            <asp:BoundField DataField="SoLuongCo" HeaderText="Số lượng có" SortExpression="SoLuongCo" />
             <asp:TemplateField HeaderText="Image">
                 <ItemTemplate>
            <a href="Detail.aspx?MaSanPham=<%#Eval("MaSanPham") %>">
                 <asp:Image ID="hinhanh" runat="server" ImageUrl='<%# Eval("hinhanh") %>' Width="120px" Height="90px" /></a>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField ShowHeader="False" HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="lbldelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick='return confirm("Bạn có chắc muốn xóa không?")'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:HyperLinkField DataNavigateUrlFields="MaSanPham" DataNavigateUrlFormatString="AD_Edit.aspx?MaSanPham={0}" Text="Edit" HeaderText="Edit" />
        </Columns>
    </asp:GridView>
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
</asp:Content>
