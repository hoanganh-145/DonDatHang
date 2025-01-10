using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoangAnh
{
    public partial class TinhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btCong_Click(object sender, EventArgs e)
        {
            double so1 = Convert.ToDouble(txtSo1.Text);
            double so2 = Convert.ToDouble(txtSo2.Text);
            double kq = so1 + so2;
            txtKQ.Text = kq.ToString();
        }

        protected void btTru_Click(object sender, EventArgs e)
        {
            double so1 = Convert.ToDouble(txtSo1.Text);
            double so2 = Convert.ToDouble(txtSo2.Text);
            double kq = so1 - so2;
            txtKQ.Text = kq.ToString();
        }

        protected void btNhan_Click(object sender, EventArgs e)
        {
            double so1 = Convert.ToDouble(txtSo1.Text);
            double so2 = Convert.ToDouble(txtSo2.Text);
            double kq = so1 * so2;
            txtKQ.Text = kq.ToString();
        }

        protected void btChia_Click(object sender, EventArgs e)
        {
            double so1 = Convert.ToDouble(txtSo1.Text);
            double so2 = Convert.ToDouble(txtSo2.Text);
            double kq = so1 / so2;
            txtKQ.Text = kq.ToString();
        }
    }
}