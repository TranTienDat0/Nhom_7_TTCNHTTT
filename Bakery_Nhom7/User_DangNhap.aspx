<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegisMaster.Master" AutoEventWireup="true" CodeBehind="User_DangNhap.aspx.cs" Inherits="Bakery_Nhom7.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        div{
            font-size:18px;  
        }

       input#ContentPlaceHolder1_btnDangNhap {
            padding: 5px;
            margin-top: 15px;
            font-size: 17px;
            background-color: #35e4cc;
            color: #000;
            border-radius: 5px;
            width: 100px;
           
        }
        li {
            list-style-type:none;
            display:inline-block;
        }

        tr .label-log td {
            width:200px;
        }
       
    </style>
     <div class="user-block">
         <table>
          <h1>Đang đăng nhập với quyền User</h1><br />
        <tr class="lable-log">
            <td>Tên đăng nhập</td>
            <td>
                <asp:TextBox ID="txtTenDN" runat="server" Width="180px"  Height="25px" OnTextChanged="txtTenDN_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr><br />
        <tr  class="lable-log">
           
            <td>Mật Khẩu</td>
            <td>
                <asp:TextBox ID="txtMatKhau" runat="server" Width="180px" Height="25px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>

        <tr>
            <td style="width: 337px">&nbsp;</td>
            <td style="text-align: left; width: 190px">&nbsp;</td>
                <td>
                <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" OnClick="btnDangNhap_Click" />
            </td>
        </tr>
    </table>
      <p style="margin-left: 40px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblthongbao" runat="server" ForeColor="Red"></asp:Label>
</p>
         Bạn chưa có tài khoản? Đăng ký
<asp:LinkButton ID="LinkButton32" runat="server" PostBackUrl="~/User_DangKy.aspx">Tại đây </asp:LinkButton>
!
      <br />
     </div>
</asp:Content>
