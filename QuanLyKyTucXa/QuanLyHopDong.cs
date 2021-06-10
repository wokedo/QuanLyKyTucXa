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
    public partial class QuanLyHopDong : Form
    {
        HopDongBLL BLL_DALHopDong = new HopDongBLL();
        PhongBLL BLL_DALPhong = new PhongBLL();
        DangNhapBLL BLL_DALDangNhap = new DangNhapBLL();
        SinhVienBLL BLL_DALSinhVien = new SinhVienBLL();
        private string gioiTinh = "";
        public static string user = "";
        public static string sophong = "";
        public static int dem = 0;
        public static string soPhong1 = "";
        public QuanLyHopDong()
        {
            InitializeComponent();
            txt_SearchHopDong.ForeColor = Color.LightGray;
            txt_SearchHopDong.Text = "Please Enter Name";
            this.txt_SearchHopDong.Leave += new System.EventHandler(this.txt_SearchHopDong_Leave);
            this.txt_SearchHopDong.Enter += new System.EventHandler(this.txt_SearchHopDong_Enter);
        }

        private void QuanLyHopDong_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = BLL_DALHopDong.loadHopDong();


            soPhong1 = cbb_SoPhong.Text;
            dataGridView1.DataSource = BLL_DALHopDong.loadHopDong();

            
            txt_MaSinhVien.Enabled = false;
            txt_MaHopDong.Enabled = false;
            dateTimePicker_NgayKetThuc.Enabled = false;
            cbb_NhanVien.Enabled = false;
            
        }


        private void btn_Them_Click(object sender, EventArgs e)
        {
            sophong = null;
            FormSinhVien sv = new FormSinhVien(sophong);
            
            sv.Show();
            dem++;
            MessageBox.Show("Thêm thông tin sinh viên");
            
            
        }


        private void cbb_SoPhong_SelectedIndexChanged(object sender, EventArgs e)
        {
            sophong = cbb_SoPhong.Text;

            dataGridView_Phong.DataSource = BLL_DALPhong.LoadPhongDK(sophong);
        }

        private void btn_Load_Click(object sender, EventArgs e)
        {
            txt_TenHopDong.Text = "Hợp đồng đăng ký vào ký túc xá";
            cbb_NhanVien.Text = user;
            dateTimePicker_NgayLap.Value = DateTime.Now;
            dateTimePicker_NgayBatdau.Value = dateTimePicker_NgayLap.Value;
            if (dem >= 2)
            {
                txt_MaSinhVien.Text = FormSinhVien.masv;
                gioiTinh = FormSinhVien.gioitinh;
                
                if (gioiTinh.Equals("Nam"))
                {
                    cbb_SoPhong.DataSource = BLL_DALPhong.GetSoPhongGioiTinhNamDK();
                    cbb_SoPhong.ValueMember = "SoPhong";
                    cbb_SoPhong.DisplayMember = "SoPhong";
                }
                else if (gioiTinh.Equals("Nữ"))
                {
                    cbb_SoPhong.DataSource = BLL_DALPhong.GetSoPhongGioiTinhNuDK();
                    cbb_SoPhong.ValueMember = "SoPhong";
                    cbb_SoPhong.DisplayMember = "SoPhong";
                }
                int? kq = BLL_DALHopDong.LayMaHopDong();
                kq++;
                txt_MaHopDong.Text = "HD" + kq.ToString();
            }
            DateTime aDateTime = dateTimePicker_NgayBatdau.Value;

            // Thêm 1 năm
            DateTime newTime = aDateTime.AddYears(1);
            dateTimePicker_NgayKetThuc.Value = newTime;
            textBox1.Visible = true;
            btn_Search.Visible = true;
            dataGridView_Phong.Visible = true;

        }

        private void btn_Luu_Click(object sender, EventArgs e)
        {
            string mahd = txt_MaHopDong.Text;
            string tenhd = txt_TenHopDong.Text;
            DateTime? ngaylap = dateTimePicker_NgayLap.Value;
            DateTime? ngaybatdau = dateTimePicker_NgayBatdau.Value;
            DateTime? ngayketthuc = dateTimePicker_NgayKetThuc.Value;
            string mssv = txt_MaSinhVien.Text;
            string sophong = cbb_SoPhong.Text;
            string manv = cbb_NhanVien.Text;
            BLL_DALHopDong.ThemHopDong(mahd, tenhd, ngaylap, ngaybatdau, ngayketthuc, mssv, sophong, manv);
            dataGridView1.DataSource = BLL_DALHopDong.loadHopDong();
            BLL_DALSinhVien.UpdateSoPhong();
            BLL_DALPhong.UpdateSoLuongSV();
        }

        private void txt_SearchHopDong_Leave(object sender, EventArgs e)
        {
            //if (txt_SearchHopDong.Text == "")
            //{
            //    txt_SearchHopDong.Text = "Please Enter Name";
            //    txt_SearchHopDong.ForeColor = Color.Gray;
            //}
        }

        private void txt_SearchHopDong_Enter(object sender, EventArgs e)
        {
            if (txt_SearchHopDong.Text == "Please Enter Name")
            {
                txt_SearchHopDong.Text = "";
                txt_SearchHopDong.ForeColor = Color.Black;
            }
        }

        private void btn_SearchHD_Click(object sender, EventArgs e)
        {
            if (txt_SearchHopDong.Text == "")
            {
                dataGridView1.DataSource = BLL_DALHopDong.loadHopDong();
            }
            else
            {
                dataGridView1.DataSource = BLL_DALHopDong.searchHopDong(txt_SearchHopDong.Text);
            }
        }

        private void txt_SearchHopDong_TextChanged(object sender, EventArgs e)
        {
                dataGridView1.DataSource = BLL_DALHopDong.searchHopDong(txt_SearchHopDong.Text);

        }

        private void btn_Search_Click(object sender, EventArgs e)
        {
            if (txt_Search.Text == "")
            {
                dataGridView_Phong.DataSource = BLL_DALPhong.GetPhong();
            }
            else
            {
                dataGridView_Phong.DataSource = BLL_DALPhong.LoadPhongDK(txt_Search.Text);
            }
        }

        private void dataGridView1_Click(object sender, EventArgs e)
        {
          
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            try
            {
                txt_MaHopDong.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
                txt_TenHopDong.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
                dateTimePicker_NgayLap.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
                dateTimePicker_NgayBatdau.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
                dateTimePicker_NgayKetThuc.Text = dataGridView1.CurrentRow.Cells[4].Value.ToString();
                txt_MaSinhVien.Text = dataGridView1.CurrentRow.Cells[5].Value.ToString();
                cbb_SoPhong.Text = dataGridView1.CurrentRow.Cells[6].Value.ToString();
                cbb_NhanVien.Text = dataGridView1.CurrentRow.Cells[7].Value.ToString();
            }
            catch (Exception)
            { }
        }

        private void btn_Thoát_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void tableLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }



    }
}
