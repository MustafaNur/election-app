using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace SecimGrafikIstatislik
{
    public partial class OyGiris : Form
    {
        public OyGiris()
        {
            InitializeComponent();
        }

        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-ABE0UME;Initial Catalog=DbSecimProje;Integrated Security=True");
        private void btnOyGiris_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into Tbl_Ilce (IlceAd,AParti,BParti,CParti,DParti,EParti) values (@p1,@p2,@p3,@p4,@p5,@p6)", baglanti);
            komut.Parameters.AddWithValue("@p1", txtIlceAd.Text);
            komut.Parameters.AddWithValue("@p2", txtA.Text);
            komut.Parameters.AddWithValue("@p3", txtB.Text);
            komut.Parameters.AddWithValue("@p4", txtC.Text);
            komut.Parameters.AddWithValue("@p5", txtD.Text);
            komut.Parameters.AddWithValue("@p6", txtE.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Oy Girişi Gerçekleşti");
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Grafikler frm = new Grafikler();
            frm.Show();
        }
    }
}
