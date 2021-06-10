using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL_DAL.QuanLyKTXTableAdapters;
using System.Data;

namespace BLL_DAL
{
    public class PhongDAL
    {
        public PhongTableAdapter da = new PhongTableAdapter();
       
        public DataTable GetSoPhongGioiTinhNuDK()
        {
            return da.GetDataByNu();
        }

        public DataTable GetSoPhongGioiTinhNamDK()
        {
            return da.GetDataBySoPhongNamDK();
        }

        public DataTable LoadPhongDK(string sophong)
        {
            return da.GetDataByDK(sophong);
        }

        public void UpdateSoLuongSV()
        {
            da.UpdateSoLuongSinhVienTrongPhong();
        }

        public DataTable GetPhong()
        {
            return da.GetData();
        }
    }
}
