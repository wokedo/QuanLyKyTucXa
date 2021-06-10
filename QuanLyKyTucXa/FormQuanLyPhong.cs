using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BLL;

namespace QuanLyKyTucXa
{
    public partial class FormQuanLyPhong : Form
    {
        PhongBLL PH = new PhongBLL();
        public FormQuanLyPhong()
        {
            InitializeComponent();
        }

        private void FormQuanLyPhong_Load(object sender, EventArgs e)
        {
            DataTable datb = PH.GetPhong();
            foreach (DataRow item in datb.Rows)
            {
                btnPhong phong = new btnPhong(item["SoPhong"].ToString(), int.Parse(item["soLuongSinhVien"].ToString()), int.Parse(item["soLuongToiDa"].ToString()), int.Parse(item["Maloai"].ToString()));
                phong.Click += phong_Click;
                flowLayoutPanel1.Controls.Add(phong);
            }
        }
        void phong_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
    }
}
