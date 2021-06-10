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
    public partial class FormSinhVien : Form
    {
        SinhVienBLL BLL_DALSinhVien = new SinhVienBLL();
        public static string masv = "";
        public static string gioitinh = "";
        int errorCount = 0;
        string SoPhong = "";
        public FormSinhVien(string SoPhong)
        {
            InitializeComponent();
            this.SoPhong = SoPhong;
        }

        private void btn_LoadImg_Click(object sender, EventArgs e)
        {
            OpenFileDialog oFile = new OpenFileDialog();
            oFile.Filter = "jpg files (*.jpg)|*.jpg|All files (*.*)|*.*";
            if (oFile.ShowDialog() == DialogResult.OK)
            {
                txt_Hinh.Text = oFile.FileName.Substring(oFile.FileName.LastIndexOf("\\") + 1);
            }
        }

        private void FormSinhVien_Load(object sender, EventArgs e)
        {
            if (SoPhong == null)
            {
                dataGridView1.DataSource = BLL_DALSinhVien.loadSinhVien();
                SoPhong = QuanLyHopDong.sophong;
                cbb_SoPhong.Text = SoPhong;
                cbb_SoPhong.Enabled = false;
            }
            else
            {
                dataGridView1.DataSource = BLL_DALSinhVien.Loadsinhvien_phong(SoPhong);
            }

        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            try
            {
                txt_MaSinhVien.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
                txt_HoTen.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
                cbb_GioiTinh.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
                dateTimePicker_NgaySinh.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
                txt_SDT.Text = dataGridView1.CurrentRow.Cells[4].Value.ToString();
                txt_CMND.Text = dataGridView1.CurrentRow.Cells[5].Value.ToString();
                txt_QueQuan.Text = dataGridView1.CurrentRow.Cells[6].Value.ToString();
                txt_Hinh.Text = dataGridView1.CurrentRow.Cells[7].Value.ToString();
                txt_Lop.Text = dataGridView1.CurrentRow.Cells[8].Value.ToString();
                cbb_SoPhong.Text = dataGridView1.CurrentRow.Cells[9].Value.ToString();
                string hinh = txt_Hinh.Text;

                hinhPictureBox.Image = Image.FromFile(@"E:\BaiTap\QuanLyKyTucXa\hinhthe\" + hinh);
                hinhPictureBox.SizeMode = PictureBoxSizeMode.StretchImage;
            }
            catch (Exception)
            { }
        }

        private void btn_Them_Click(object sender, EventArgs e)
        {
            try
            {
                if (errorCount == 0 && txt_MaSinhVien.Text.Length != 0 && txt_HoTen.Text.Length != 0 && txt_SDT.Text.Length != 0 && txt_CMND.Text.Length != 0 && txt_QueQuan.Text.Length != 0 && txt_Hinh.Text.Length != 0 && txt_Lop.Text.Length != 0)
                {
                    QuanLyHopDong.dem++;


                    masv = txt_MaSinhVien.Text;
                    gioitinh = cbb_GioiTinh.Text;

                    string hoten = txt_HoTen.Text;
                    DateTime? ngaysinh = dateTimePicker_NgaySinh.Value;
                    int? sdt = Convert.ToInt32(txt_SDT.Text);
                    int? cmnd = Convert.ToInt32(txt_CMND.Text);
                    string quequan = txt_QueQuan.Text;
                    string hinh = txt_Hinh.Text;
                    string lop = txt_Lop.Text;
                    string sophong = cbb_SoPhong.Text;
                    sophong = null;
                    cbb_SoPhong.Enabled = false;
                    BLL_DALSinhVien.Them(masv, hoten, gioitinh, ngaysinh, sdt, cmnd, quequan, hinh, lop, sophong);
                    dataGridView1.DataSource = BLL_DALSinhVien.loadSinhVien();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Vui lòng nhập đầy đủ thông tin");
                    return;
                }
            }
            catch (Exception)
            { }
        }

        private void btn_Xoa_Click(object sender, EventArgs e)
        {
            try
            {
                masv = txt_MaSinhVien.Text;
                BLL_DALSinhVien.Xoa(masv);
                dataGridView1.DataSource = BLL_DALSinhVien.loadSinhVien();
            }
            catch
            {
                MessageBox.Show("không xóa sinh viên này đc");
            }
        }

        private void btn_Sua_Click(object sender, EventArgs e)
        {
            try
            {
                if (errorCount == 0 && txt_MaSinhVien.Text.Length != 0 && txt_HoTen.Text.Length != 0 && txt_SDT.Text.Length != 0 && txt_CMND.Text.Length != 0 && txt_QueQuan.Text.Length != 0 && txt_Hinh.Text.Length != 0 && txt_Lop.Text.Length != 0)
                {
                    masv = txt_MaSinhVien.Text;
                    gioitinh = cbb_GioiTinh.Text;

                    string hoten = txt_HoTen.Text;
                    string ngaysinh = dateTimePicker_NgaySinh.Value.ToString();
                    int? sdt = Convert.ToInt32(txt_SDT.Text);
                    int? cmnd = Convert.ToInt32(txt_CMND.Text);
                    string quequan = txt_QueQuan.Text;
                    string hinh = txt_Hinh.Text;
                    string lop = txt_Lop.Text;
                    string sophong = cbb_SoPhong.Text;
                    sophong = null;
                    cbb_SoPhong.Enabled = false;
                    BLL_DALSinhVien.CapNhat(hoten, ngaysinh, sdt, cmnd, quequan, hinh, lop, masv);
                    dataGridView1.DataSource = BLL_DALSinhVien.loadSinhVien();
                }
                else
                {
                    MessageBox.Show("Vui lòng nhập đầy đủ thông tin");
                    return;
                }
            }
            catch (Exception)
            { }
        }

        private void btn_New_Click(object sender, EventArgs e)
        {
            txt_HoTen.ResetText();
            cbb_GioiTinh.SelectedIndex = 0;
            txt_SDT.ResetText();
            txt_CMND.ResetText();
            txt_QueQuan.ResetText();
            txt_Hinh.ResetText();
            txt_Lop.ResetText();
            int? kq = BLL_DALSinhVien.LayMaSinhVien();
            kq++;
            txt_MaSinhVien.Text = "SV" + kq.ToString();
            txt_MaSinhVien.Enabled = false;
            cbb_GioiTinh.Enabled = true;
        }

        public bool kiemtraCMND(int cmnd)
        {
            try
            {
                int dem = 0;
                do
                {
                    dem++;
                    cmnd = cmnd / 10;
                } while (cmnd > 0);
                if (dem == 9)
                {
                    return true;
                }
                return false;
            }
            catch (Exception)
            {

                return false;
            }
        }

        private void txt_CMND_TextChanged(object sender, EventArgs e)
        {
            try
            {
                Control cr = (Control)sender;
                if (kiemtraCMND(Convert.ToInt32(txt_CMND.Text)))
                {
                    this.errorProvider1.Clear();
                    errorCount = 0;
                }
                else
                {
                    this.errorProvider1.SetError(cr, "Vui lòng nhập đúng định dạng CMND!!!");
                    errorCount++;
                }
            }
            catch (Exception)
            { }
        }

        public bool kiemtraSDT(string sdt)
        {
            try
            {
                if ((sdt.Remove(2).Equals("09") || sdt.Remove(2).Equals("08") || sdt.Remove(2).Equals("03")) && sdt.Length == 10)
                {
                    return true;
                }
                return false;
            }
            catch (Exception)
            {

                return false;
            }
        }

        private void txt_SDT_TextChanged(object sender, EventArgs e)
        {
            try
            {
                Control cr = (Control)sender;
                if (kiemtraSDT(txt_SDT.Text))
                {
                    this.errorProvider1.Clear();
                    errorCount = 0;
                }
                else
                {
                    this.errorProvider1.SetError(cr, "Vui lòng nhập đúng định dạng sdt!!!");
                    errorCount++;
                }
            }
            catch (Exception)
            { }
        }
    }
}
