using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL_DAL;
using System.Data;

namespace BLL
{
    public class DangNhapBLL
    {
        public DangNhapDAL da = new DangNhapDAL();
        public int? ktDangNhap(string tendn, string matkhau)
        {
            return da.ktDangNhap(tendn, matkhau);
        }

        public DataTable layMaNhanVien(string tendn)
        {
            return da.layMaNhanVien(tendn);
        }
    }
}
