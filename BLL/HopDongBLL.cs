using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL_DAL;
using System.Data;

namespace BLL
{
    public class HopDongBLL
    {
        public HopDongDAL da = new HopDongDAL();
        public DataTable loadHopDong()
        {
            return da.loadHopDong();
        }

        public void ThemHopDong(string mahd, string tenhd, DateTime? ngaylap, DateTime? ngaybatdau, DateTime? ngayketthuc, string masv, string sophong, string manv)
        {
            da.ThemHopDong(mahd, tenhd, ngaylap, ngaybatdau, ngayketthuc, masv, sophong, manv);
        }

        public int? LayMaHopDong()
        {
            return da.LayMaHopDong();
        }

        public DataTable searchHopDong(string hoten)
        {
            return da.searchHopDong(hoten);
        }
    }
}
