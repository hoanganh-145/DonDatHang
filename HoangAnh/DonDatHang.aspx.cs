using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoangAnh
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                NhapDuLieu();
        }

        private void NhapDuLieu()
        {
            DDlLoaiBanh.Items.Add(new ListItem("Hambuger", "01"));
            DDlLoaiBanh.Items.Add(new ListItem("Chicken", "02"));
            DDlLoaiBanh.Items.Add(new ListItem("Mozzarella", "03"));
            DDlLoaiBanh.Items.Add(new ListItem("Squid ring", "04"));
            DDlLoaiBanh.Items.Add(new ListItem("Nuggets", "05"));

        }

        protected void btThemBanh_Click(object sender, EventArgs e)
        {
            try
            {
                string loaiBanh = DDlLoaiBanh.SelectedItem.Text;
                int soLuong = int.Parse(txtSoLuong.Text);
                bool find = false;
                foreach (ListItem item in LBBanhDat.Items)
                {
                    if (item.Text.StartsWith(loaiBanh))
                    {
                        string[] arr = item.Text.Split(new char[] { '(', ')' });
                        soLuong += int.Parse(arr[1]);
                        find = true;
                    }
                }
                if (!find)
                {
                    LBBanhDat.Items.Add($"{loaiBanh}  ({soLuong})");
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btXoa_Click(object sender, ImageClickEventArgs e)
        {
            for (int i = LBBanhDat.Items.Count - 1; i >= 0; i--)
            {
                if (LBBanhDat.Items[i].Selected)
                {
                    LBBanhDat.Items.RemoveAt(i);
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string kq = "<div class='h3 text-center mt-3'>HOÁ ĐƠN ĐẶT HÀNG</div>";
            kq += "<div class='border p-2'>";
            kq += $"<b>Khách hàng</b>: <i>{txtKH.Text}</i><br>";
            kq += $"<b>Địa chỉ</b>: <i>{txtDC.Text}</i><br>";
            kq += $"<b>Mã số thuế</b>: <i>{txtThue.Text}</i><br>";
            kq += "<b>Đặt các loại bánh sau</b> <br>";
            kq += "<table class='table table-bordered'>";
            foreach (ListItem item in LBBanhDat.Items)
            {
                string data = item.Text;
                string[] arr = data.Split(new char[] { '(', ')' });
                kq += $"<tr><td>{arr[0]}</td><td>{arr[1]}</td</tr>";
            }

            kq += "</table>";

            kq += "</div>";
            lblHoaDon.Text = kq;
        }
    }
}