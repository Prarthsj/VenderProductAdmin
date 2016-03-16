using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VenderProductApplication
{
    public partial class Form1 : Form
    {
        dbConnection d = new dbConnection();
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Resize(object sender, EventArgs e)
        {
            grpVendors.Height = this.Height - 80;
            grpPrds.Height = this.Height - 80;
            grpPrds.Width = this.Width - (grpVendors.Width + 50);
        }

        private void Form1_Load(object sender, EventArgs e)
        {
          
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
           
            dataGridView1.DataSource = d.getVendors().Tables["vendors"];
        }

        private void timer2_Tick(object sender, EventArgs e)
        {
            dataGridView2.DataSource = d.getAuditInfo().Tables["veninfo"];
        }
    }
}
