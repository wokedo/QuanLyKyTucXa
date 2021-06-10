using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace QuanLyKyTucXa
{
    public partial class FormTrangChu : Form
    {
        
        public FormTrangChu()
        {
            InitializeComponent();
            WindowState = FormWindowState.Maximized;
        }
        
        private void panel_QuanLySV_MouseClick(object sender, MouseEventArgs e)
        {
            FormSinhVien formquanlysinhvien = new FormSinhVien(SoPhong);
            formquanlysinhvien.ShowDialog();
        }

        private void panel_QuanLyHopDong_MouseClick(object sender, MouseEventArgs e)
        {
            QuanLyHopDong formquanlyhopdong = new QuanLyHopDong();
            formquanlyhopdong.ShowDialog();
        }

        private void panel_QuanLyPhong_MouseClick(object sender, MouseEventArgs e)
        {

            FormQuanLyPhong qlp = new FormQuanLyPhong();
            qlp.ShowDialog();
        }


        public string SoPhong { get; set; }

        private void FormTrangChu_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult r;
            r = MessageBox.Show("Bạn có chắc muốn thoát không?", "Thoát", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1);
            if (r == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void thoátToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DialogResult r;
            r = MessageBox.Show("Bạn có chắc muốn thoát không?", "Thoát", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1);
            if (r == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
    }
}
