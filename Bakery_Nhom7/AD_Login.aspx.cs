using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Bakery_Nhom7
{
    public partial class AD_Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-03GSLC3\SQLEXPRESS;Initial Catalog=bakery;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (txtTenDN.Text == "")
            {
                Label1.Text = "Tên đăng nhập không được để trống!";
            }
            else { Label1.Text = ""; }
            if (txtMatKhau.Text == "")
            {
                Label2.Text = "Bạn chưa nhập mật khẩu.";
            }
            else { Label2.Text = ""; }

            Connect(txtTenDN.Text, txtMatKhau.Text);
            if (login == true)
            {
                Session["username"] = txtTenDN.Text.Trim();
                Response.Redirect("AD_BaoTriProduct.aspx");
            }
            else
            {
                lblthongbao.Text = "Thông tin đăng nhập không chính xác!";
            }

        }
        private Boolean login = false;
        private void Connect(string user, string pass)
        {
            User obj = new User();
            con.Open();
            string sqlQuery = "select username,passw from dbo.TAIKHOAN_Admin where username=@username and passw=@passw";
            SqlCommand cmd = new SqlCommand(sqlQuery, con);
            cmd.Parameters.AddWithValue("username", user);
            cmd.Parameters.AddWithValue("passw", pass);
            try
            {
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    login = true;
                    while (dr.Read())
                    {
                        obj.tendangnhap = dr[0].ToString();
                        obj.matkhau = dr[1].ToString();
                        Session["User"] = obj;
                    }
                }
                else
                {
                    login = false;
                }
                con.Close();
            }
            catch (Exception)
            {
                lblthongbao.Text = "Tên đăng nhập hoặc mật khẩu không đúng!<br>Thử nhập lại";
            }
        }

        protected void txtTenDN_TextChanged(object sender, EventArgs e)
        {

        }
    }
}