using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL_DAL.QuanLyKTXTableAdapters;
using System.Data;

namespace BLL_DAL
{
    public class DangNhapDAL
    {
        public DANGNHAPTableAdapter da = new DANGNHAPTableAdapter();
        public int? ktDangNhap(string tendn, string matkhau)
        {
            return da.kiemTraDangNhap(tendn, matkhau);
        }

        public DataTable layMaNhanVien(string tendn)
        {
            return da.GetDataBy2(tendn);
        }
    }
}
