using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace QuanLyKyTucXa
{
    public partial class btnPhong : UserControl
    {
        private string SoPhong;
        public btnPhong(string SoPhong)
        {
            InitializeComponent();
            this.SoPhong = SoPhong;
        }
     
       
        public btnPhong(string SoPhong, int soLuongSinhVien, int soLuongToiDa, int Maloai)
        {

            InitializeComponent();
            label4.Text = SoPhong;
            if (Maloai == 1)
            {
                pictureBox2.Visible = false;
            }
            else { pictureBox1.Visible = false; }
            if (soLuongSinhVien == 8)
            {

                label1.ForeColor = Color.Red;
                label1.Text = soLuongSinhVien.ToString();
            }
            else
            { label1.Text = soLuongSinhVien.ToString(); }

            label3.Text = soLuongToiDa.ToString();

        }

        private void button1_Click(object sender, EventArgs e)
        {

            SoPhong = label4.Text;
            FormSinhVien sv = new FormSinhVien(SoPhong);
            sv.Show();
        }
    }
}
