<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="Bakery_Nhom7.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="product" runat="server">
    <style>
         .return {padding:5px;
                background-color:#f67d28;
                font-size:20px;
                text-decoration:none;
                border-radius:7px;
                color:#fff;
       }
    </style>
   <h2> Thông tin chi tiết sản phẩm</h2><br /><br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="16px" Width="538px" AutoGenerateRows="False" DataKeyNames="MaSanPham" DataSourceID="SqlDataSource1" CellPadding="4" GridLines="None" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
           
            <asp:BoundField DataField="TenSanPham" HeaderText="Tên sản phẩm :" SortExpression="TenSanPham" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="MauSac" HeaderText="Màu sắc :" SortExpression="MauSac"  ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="GiaGoc" HeaderText="Gía gốc:" SortExpression="GiaGoc"  ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="SoLuongCo" HeaderText="Số lượng có:" SortExpression="SoLuongCo" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
          <asp:TemplateField HeaderText="Image" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Image ID="hinhanh" runat="server" ImageUrl='<%# Eval("hinhanh") %>' Width="150px" />
                </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>

            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
        <FooterTemplate>
             <InsertItemTemplate HeaderStyle-HorizontalAlign="center" HorizontalAlign="Center">
                      <a href='ShoppingCart.aspx?MaSanPham=<%#Eval("MaSanPham")%>&name=<%# Eval("TenSanPham")
                       %>&image=<%#Eval("hinhanh")
                       %>&price=<%# Eval("GiaGoc") %>&action=add' class="btnMuahang">Mua ngay</a>
                </InsertItemTemplate>
        </FooterTemplate>
   
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
   
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" 
        DeleteCommand="DELETE FROM [SAN_PHAM] WHERE [MaSanPham] = @MaSanPham" 
        InsertCommand="INSERT INTO [SAN_PHAM] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MauSac], [GiaGoc], [SoLuongCo], [hinhanh]) VALUES (@MaSanPham, @MaDanhMuc, @TenSanPham, @MauSac, @GiaGoc, @SoLuongCo, @hinhanh)"
        SelectCommand="SELECT * FROM [SAN_PHAM] WHERE MaSanPham= @MaSanPham"
        UpdateCommand="UPDATE [SAN_PHAM] SET [MaDanhMuc] = @MaDanhMuc, [TenSanPham] = @TenSanPham, [MauSac] = @MauSac, [GiaGoc] = @GiaGoc, [SoLuongCo] = @SoLuongCo, [hinhanh] = @hinhanh WHERE [MaSanPham] = @MaSanPham">
       <SelectParameters>
           <asp:QueryStringParameter Type="String" Name="MaSanPham" QueryStringField="MaSanPham" />
       </SelectParameters>
    </asp:SqlDataSource>
    <br /><br />
    <a href="mainHome.aspx" class="return">Quay về -></a>
</asp:Content>
