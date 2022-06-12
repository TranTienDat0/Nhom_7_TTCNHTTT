<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="listProByCate.aspx.cs" Inherits="Bakery_Nhom7.listProByCate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="product" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource1" RepeatColumns="5" Width="656px">
       <ItemTemplate>
     
        <a href="Detail.aspx?MaSanPham =<%# Eval("MaSanPham") %>">
             <asp:Image ID="hinhanh" runat="server" ImageUrl='<%# Eval("hinhanh") %>' Width="200px" Height="180px" /></a>
        <br /><br />
          <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSanPham") %>' />
        <br />
         Giá gốc:
        <asp:Label ID="GiaGocLabel" runat="server" Text='<%# Eval("GiaGoc") %>' />
        <br /><br />
           <p>      
        <a href='ShoppingCart.aspx?MaSanPham=<%# Eval("MaSanPham") %>&name=<%# Eval("TenSanPham")
                   %>&image=<%#Eval("hinhanh")
                   %>&price=<%# Eval("GiaGoc") %>&action=add' class="button">Mua hàng</a>
        </p>
      </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" 
        DeleteCommand="DELETE FROM [SAN_PHAM] WHERE [MaSanPham] = @MaSanPham" 
        InsertCommand="INSERT INTO [SAN_PHAM] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MauSac], [GiaGoc], [SoLuongCo], [hinhanh]) VALUES (@MaSanPham, @MaDanhMuc, @TenSanPham, @MauSac, @GiaGoc, @SoLuongCo, @hinhanh)" 
        SelectCommand="SELECT * FROM [SAN_PHAM] where MaDanhMuc=@MaDanhMuc"
        UpdateCommand="UPDATE [SAN_PHAM] SET [MaDanhMuc] = @MaDanhMuc, [TenSanPham] = @TenSanPham, [MauSac] = @MauSac, [GiaGoc] = @GiaGoc, [SoLuongCo] = @SoLuongCo, [hinhanh] = @hinhanh WHERE [MaSanPham] = @MaSanPham">
        <SelectParameters>
            <asp:QueryStringParameter Type="String" Name="MaDanhMuc" QueryStringField="MaDanhMuc" />
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
</asp:Content>
