using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL_DAL;
using System.Data;

namespace BLL
{
    public class SinhVienBLL
    {
        public SinhVienDAL da = new SinhVienDAL();
        public DataTable loadSinhVien()
        {
            return da.loadSinhVien();
        }
        public DataTable Loadsinhvien_phong(string SoPhong)
        {
            return da.Loadsinhvien_phong(SoPhong);
        }

        public void Them(string masv, string hoten, string gioitinh, DateTime? ngaysinh, int? sdt, int? CMND, string quequan, string hinh, string lop, string sophong)
        {
            da.Them(masv, hoten, gioitinh, ngaysinh, sdt, CMND, quequan, hinh, lop, sophong);
        }

        public void Xoa(string masv)
        {
            da.Xoa(masv);
        }

        public void CapNhat(string hoten, string ngaysinh, int? sdt, int? cmnd, string quequan, string hinh, string lop, string mssv)
        {
            da.CapNhat(hoten, ngaysinh, sdt, cmnd, quequan, hinh, lop, mssv);
        }

        public void UpdateSoPhong()
        {
            da.UpdateSoPhong();
        }
        public int? LayMaSinhVien()
        {
            return da.LayMaSinhVien();
        }
    }
}
