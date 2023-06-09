using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace cmspprj
{
    public partial class gvcollection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<ERPROp> lst = new List<ERPROp>()
            {
                new ERPROp()  { rno=1001, sname ="x5", m1=56.5,m2=63},
                new ERPROp()  { rno=1002, sname ="x3", m1=98,m2=30},
                new ERPROp()  { rno=1003, sname ="x1", m1=45.5,m2=52},

            };

            GridView1.DataSource = lst;
            GridView1.DataBind();

        }
        
       
    }
}