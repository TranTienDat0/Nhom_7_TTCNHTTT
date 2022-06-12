using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery_Nhom7
{
    public class User
    {
        public User() { }
        public User(string tdn, string mk) {
            this.tendangnhap = tdn;
            this.matkhau = mk;
        }
        public string tendangnhap { get; set; }
        public string matkhau { get; set; }
    }
}