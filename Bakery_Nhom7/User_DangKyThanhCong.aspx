<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegisMaster.Master" AutoEventWireup="true" CodeBehind="User_DangKyThanhCong.aspx.cs" Inherits="Bakery_Nhom7.DangKyThanhCong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        div {
            text-align:center;

        }
    </style>
    <div>
         <h2>Bạn đã đăng ký thành công!</h2>
    <h3> Xin vui lòng đăng nhập
        <asp:LinkButton ID="LinkButton32" runat="server" PostBackUrl="~/User_Dangnhap.aspx">Tại đây</asp:LinkButton>
        !</h3>
    </div>
</asp:Content>
