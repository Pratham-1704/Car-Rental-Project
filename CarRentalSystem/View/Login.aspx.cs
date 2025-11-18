using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CarRentalSystem.View
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();

        }
        public static string CName = "";
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if (RdoAdmin.Checked)
            {
            }
            else
            {
                string sql = "select custname,custpassword from customerTbl where custname='{0}' and custpassword= '{1}'";
                sql = string.Format(sql,UserNmTb.Value, PasswordTb.Value);
                DataTable dt = Conn.GetData(sql);
                if(dt.Rows.Count== 0)
                {

                }
                else
                {
                    CName = dt.Rows[0][0].ToString();
                }

            }
        }
    }
}