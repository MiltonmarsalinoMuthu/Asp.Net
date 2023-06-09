using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//
using System.Configuration;// web.config
using System.Data; // Dataset
using System.Data.SqlClient; // Sqlconnection, SqlCommand, SqlDataAdapter

namespace cmspprj
{
    public partial class OnlineComileraa : System.Web.UI.Page
    {

        SqlConnection sqlcn;
        SqlCommand sqlcmd;
        SqlDataAdapter sqlDA;

        DataSet ds;

        static string dqlQry;
        protected void Page_Load(object sender, EventArgs e)
        {
            tbxmsg.Text = null;
            try
            {
                string s = ConfigurationManager.ConnectionStrings["cnsStrmiltondb"].ToString();
                sqlcn = new SqlConnection(s);
            }
            catch (Exception ex)
            {
                tbxmsg.Text = ex.Message;
            }

        }

        protected void gvbox_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvbox.PageIndex = e.NewPageIndex;
            uRefreshgv();
        }

        public void uRefreshgv()
        {
            tbxmsg.Text = null;
            gvbox.DataSource = null;
            gvbox.DataBind();

            try
            {
                sqlcn.Open();
                sqlcmd = new SqlCommand(dqlQry, sqlcn);
                sqlDA = new SqlDataAdapter(sqlcmd);

                ds = new DataSet();
                sqlDA.Fill(ds);
                sqlcn.Close();

                gvbox.DataSource = ds;
                gvbox.DataBind();
                tbxmsg.Text = "Command(s) Completed Successfully";

            }
            catch (Exception e)
            {
                tbxmsg.Text = e.Message;

            }
        }

        protected void Btnrun_Click(object sender, EventArgs e)
        {
            uRunQuery();
        }

        public void uRunQuery()
        {
            tbxmsg.Text = null;
            gvbox.DataSource = null;
            gvbox.DataBind();

            string qry = Tbxqry.Text;

            try
            {
                if (qry.ToLower().StartsWith("select"))
                {
                    dqlQry = qry;
                    uRefreshgv();
                    return;
                }

                sqlcn.Open();
                sqlcmd = new SqlCommand(qry, sqlcn);

                int i = sqlcmd.ExecuteNonQuery();

                if (i > 0)
                {
                    tbxmsg.Text = i + "Row(s) affected";
                }
                else
                {
                    tbxmsg.Text = "Command(s) Completed Successfully";
                }

                sqlcn.Close();
            }
            catch (Exception e)
            {
                tbxmsg.Text = e.Message;
            }
        }
    }
}