using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
        OleDbConnection sqlconn = new OleDbConnection(mainconn);

        /*OleDbConnection con = new OleDbConnection ("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Provider=Microsoft.Jet.OLEDB.4.0;Data Source=\\algfs\hr\GSPA\GS$\SYSTEM\GSFM\GS-Applications-Process.mdb");*/
        OleDbDataAdapter sda = new OleDbDataAdapter("select count (*) from tbl_users_account where username = '" + TextBox1.Text + "'and password = '" + TextBox2.Text + "'", mainconn);
        DataTable dt = new DataTable ();
        sda.Fill(dt);
                                          
        if(dt.Rows[0][0].ToString() =="1")
        {
            Session["USER_ID"] = TextBox1.Text;
            Response.Redirect("options.aspx");
        }
        else 
        {
            Label1.Visible = true;
        }
    }
protected void  Button1_Click(object sender, EventArgs e)
{
    Label1.Visible = false;
    TextBox1.Text = "";
    TextBox2.Text = "";
    TextBox1.Focus();
   }
}