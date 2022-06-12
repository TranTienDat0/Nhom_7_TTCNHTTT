<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegisMaster.Master" AutoEventWireup="true" CodeBehind="DatHang.aspx.cs" Inherits="Bakery_Nhom7.DatHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
        div {
            align-content:center;
        }
        .next-cart {
            margin-top:10px;
            display:block;
            width:300px;
            text-decoration:none;
            padding:5px;
            color:#fff;
            background-color:#ff6a00;
            margin-left:500px;
        }
    </style>
  <div>
       <h2>Đặt hàng thành công</h2>
 <p><a href="mainHome.aspx" class="next-cart" align="center">Tiếp tục mua đơn hàng tiếp theo</a></p>
  </div>
</asp:Content>
