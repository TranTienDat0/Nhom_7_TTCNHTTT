<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegisMaster.Master" AutoEventWireup="true" CodeBehind="GUI_LogIn.aspx.cs" Inherits="Bakery_Nhom7.GUI_LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        div .chose_login{
            font-size:18px;
            height:300px;
        }

        
        li {
            list-style-type:none;
            display:inline-block;
        }
        li:hover {
            color:#fff;
        }
    </style>
     <div class="chose_login">
             <h1>Đăng nhập</h1>       
            <ul><h3>Bạn đăng nhập với quyền?</h3>
                <li><a href="AD_Login.aspx">Admin</a></li>
                <li><a href="User_DangNhap.aspx">/User</a></li>
            </ul>
     </div>
</asp:Content>
