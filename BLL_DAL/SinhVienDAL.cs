using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL_DAL.QuanLyKTXTableAdapters;
using System.Data;

namespace BLL_DAL
{
    public class SinhVienDAL
    {
        public SinhVienTableAdapter da = new SinhVienTableAdapter();
        public DataTable loadSinhVien()
        {
            return da.GetData();
        }
        public DataTable Loadsinhvien_phong(string SoPhong)
        {
            return da.GetDataBydk(SoPhong);
        }

        public void Them(string masv, string hoten, string gioitinh, DateTime? ngaysinh, int? sdt,int? CMND, string quequan, string hinh, string lop, string sophong)
        {
            da.Insert(masv, hoten, gioitinh, ngaysinh, sdt,CMND, quequan, hinh, lop, sophong);
        }

        public void Xoa(string masv)
        {
            da.DeleteQuery(masv);
        }

        public void CapNhat(string hoten,string ngaysinh, int? sdt, int? cmnd, string quequan, string hinh, string lop, string mssv)
        {
            da.UpdateSinhVien(hoten, ngaysinh, sdt, cmnd, quequan, hinh, lop, mssv);
        }

        public void UpdateSoPhong()
        {
            da.updatephong();
        }
        public int? LayMaSinhVien()
        {
            return da.LayMaSinhVien();
        }
    }
}
