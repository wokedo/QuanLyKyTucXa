using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL_DAL;
using System.Data;

namespace BLL
{
    public class PhongBLL
    {
        public PhongDAL da = new PhongDAL();

        public DataTable GetSoPhongGioiTinhNuDK()
        {
            return da.GetSoPhongGioiTinhNuDK();
        }

        public DataTable GetSoPhongGioiTinhNamDK()
        {
            return da.GetSoPhongGioiTinhNamDK();
        }

        public DataTable LoadPhongDK(string sophong)
        {
            return da.LoadPhongDK(sophong);
        }

        public void UpdateSoLuongSV()
        {
            da.UpdateSoLuongSV();
        }

        public DataTable GetPhong()
        {
            return da.GetPhong();
        }
    }
}
