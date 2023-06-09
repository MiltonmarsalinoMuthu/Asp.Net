using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cmspprj
{
    public partial class querystringop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int rno = 0;
            int.TryParse(Request.QueryString["tbxrno"], out rno);
            string sname = Request.QueryString["tbxsname"];

            double m1 = 0;
            double.TryParse(Request.QueryString["tbxm1"], out m1);

            double m2 = 0;
            double.TryParse(Request.QueryString["tbxm2"], out m2);

            double total = m1 + m2;
            double avg = total / 2;
            bool result = m1 > 34.4 && m2 > 34.4;


            tbxrno.Text = rno + "";
            tbxsname.Text = sname;
            tbxm1.Text = m1 + "";
            tbxm2.Text = m2 + "";
            tbxtot.Text = total + "";
            tbxavg.Text = avg + "";
            if (result)
            {
                rdobtnpass.Checked = true;
            }
            else
            {
                rdobtnfail.Checked = true;
            }

        }

        
    }
}