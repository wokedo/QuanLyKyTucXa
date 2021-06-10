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
    public partial class FormDangNhap : Form
    {
        DangNhapBLL BLL_DALDangNhap = new DangNhapBLL();
        public static string user = "";
        public static string pass = "";
        public FormDangNhap()
        {
            InitializeComponent();
        }

        private void btn_DangNhap_Click(object sender, EventArgs e)
        {
            Control cr = (Control)sender;
            if (string.IsNullOrEmpty(txt_TaiKhoan.Text.Trim()))
            {
                this.errorProvider1.SetError(cr, "Vui lòng nhập tài khoản");
                this.txt_TaiKhoan.Focus();
                return;
            }
            else
            {
                this.errorProvider1.Clear();
            }

            if (string.IsNullOrEmpty(txt_MatKhau.Text.Trim()))
            {
                this.errorProvider1.SetError(cr, "Vui lòng nhập mật khẩu");
                this.txt_MatKhau.Focus();
                return;
            }
            else
            {
                this.errorProvider1.Clear();
            }

            if (BLL_DALDangNhap.ktDangNhap(txt_TaiKhoan.Text.Trim(), txt_MatKhau.Text.Trim()) != 0)
            {
                comboBox1.DataSource = BLL_DALDangNhap.layMaNhanVien(txt_TaiKhoan.Text);
                comboBox1.DisplayMember = "tenDN";
                comboBox1.ValueMember = "MaNhanvien";
                QuanLyHopDong.user = comboBox1.SelectedValue.ToString();
               // MessageBox.Show("Đăng nhập thành công(^@^)");
                this.Hide();
                FormTrangChu frommain = new FormTrangChu();
                frommain.ShowDialog();
            }
            else
            {
                MessageBox.Show("Tài khoản hoặc mật khẩu không đúng(^~^)");
                return;
            }

            user = txt_TaiKhoan.Text;
            pass = txt_MatKhau.Text;
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

       
    }
}
