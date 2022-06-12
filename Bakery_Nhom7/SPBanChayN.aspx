<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegisMaster.Master" AutoEventWireup="true" CodeBehind="SPBanChayN.aspx.cs" Inherits="Bakery_Nhom7.SPBanChayN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .btnMuahang {
            text-decoration:none;
            width:150px;
            text-align:center;
        }
    </style>
    <h2> Sản phẩm bán chạy nhất</h2><br /><br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource1" RepeatColumns="4" Width="628px">
             
        <ItemTemplate>
        
            <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
            <br />
                 <asp:Image ID="hinhanh" runat="server" ImageUrl='<%# Eval("hinhanh") %>' Width="200px" Height="180px" /></a>
            <br />
             Số lượng bán:
            <asp:Label ID="SoLuongBanLabel" runat="server" Text='<%# Eval("SoLuongBan") %>' />
            <br />
            Đơn giá:
            <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
            <br /><br />
             <a href='ShoppingCart.aspx?MaSanPham=<%# Eval("MaSP") %>&name=<%# Eval("TenSP")
                       %>&image=<%#Eval("hinhanh")
                       %>&price=<%# Eval("DonGia") %>&action=add' class="btnMuahang">Mua ngay</a>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" 
        SelectCommand="SELECT * FROM [SanPhamBanChayNhat]"></asp:SqlDataSource>
   
</asp:Content>
