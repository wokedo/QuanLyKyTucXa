using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL_DAL.QuanLyKTXTableAdapters;
using System.Data;

namespace BLL_DAL
{
    public class HopDongDAL
    {
        public HopDongTableAdapter da = new HopDongTableAdapter();
        public DataTable loadHopDong()
        {
            return da.GetData();
        }

        public void ThemHopDong(string mahd, string tenhd, DateTime? ngaylap, DateTime? ngaybatdau,DateTime? ngayketthuc,string masv, string sophong, string manv)
        {
            da.Insert(mahd,tenhd,ngaylap,ngaybatdau,ngayketthuc,masv,sophong,manv);
        }

        public int? LayMaHopDong()
        {
            return da.LaymaHopDong();
        }

        public DataTable searchHopDong(string hoten)
        {
            return da.timKiemHopDong(hoten);
        }
    }
}
