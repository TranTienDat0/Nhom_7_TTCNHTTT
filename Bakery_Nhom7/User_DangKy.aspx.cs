using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery_Nhom7
{
    public partial class DangKy : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-03GSLC3\SQLEXPRESS;Initial Catalog=bakery;Integrated Security=True");

        public Boolean checkTenDN()
        {
            try
            {
                string query = "select *from TAIKHOAN_KHACHHANG where tendangnhap=?";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("tendangnhap", txtdangnhap.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    return true;
                }
            }catch(SqlException ex)
            {
                lblthongbao.Text = ex.Message.ToString();
            }

            return false;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lblthongbao.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //int demEx;
            lblthongbao.Text = "";
            con.Open();
            try
            {

                if (txtdangnhap.Text == "")
                {
                    lbltdn.Text = "Không được để trống tên đăng nhập!";
                }
                else { lbltdn.Text = ""; }
                if (txtdiachi.Text == "")
                {
                    lbldc.Text = "Không được để trống địa chỉ!";
                }
                else { lbldc.Text = ""; }
                if (txtdienthoai.Text == "")
                {
                    lbldt.Text = "Không được để trống số điện thoại!";
                }
                else { lbldt.Text = ""; }
                if (txtten.Text == "")
                {
                    lblten.Text = "Bạn cần nhập họ tên!";
                }
                else { lblten.Text = ""; }
                if (txtemail.Text == "")
                {
                    lblemail.Text = "Không được để trống địa chỉ Email!";
                }
                else { lblemail.Text = ""; }
                if (txtmatkhau.Text == "")
                {
                    lblmk.Text = "Bạn cần nhập mật khẩu!";
                }
                else { lblmk.Text = ""; }
       
                /*DataView checkTenDN = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                int num = checkTenDN.Count;*/

                if (checkTenDN() == true)
                {
                    lblthongbao.Text = "Tên đăng nhập đã tồn tại";
                }
                else
                {                  
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "insert into TAIKHOAN_KHACHHANG values(N'" + txtdangnhap.Text + "',N'" + txtmatkhau.Text + "',N'" + txtten.Text + "',N'" + txtemail.Text + "',N'" + txtdienthoai.Text + "',N'" + txtdiachi.Text + "')";
                    cmd.ExecuteNonQuery();                  
                    lblthongbao.Text = "Đăng ký thành công ";
                    Response.Redirect("User_DangKyThanhCong.aspx");
                }
           
            }
            catch (SqlException ex)
            {                
                lblthongbao.Text = "Đăng ký không thành công ";
           
            }
        }

    }
}